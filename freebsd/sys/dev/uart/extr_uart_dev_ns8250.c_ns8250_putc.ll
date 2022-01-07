; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@REG_LSR = common dso_local global i32 0, align 4
@LSR_THRE = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @ns8250_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns8250_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 250000, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %8 = load i32, i32* @REG_LSR, align 4
  %9 = call i32 @uart_getreg(%struct.uart_bas* %7, i32 %8)
  %10 = load i32, i32* @LSR_THRE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i1 [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i32 @DELAY(i32 4)
  br label %6

21:                                               ; preds = %17
  %22 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %23 = load i32, i32* @REG_DATA, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @uart_setreg(%struct.uart_bas* %22, i32 %23, i32 %24)
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = call i32 @uart_barrier(%struct.uart_bas* %26)
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
