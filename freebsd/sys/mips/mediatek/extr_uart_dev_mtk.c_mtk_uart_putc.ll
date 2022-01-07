; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@uart_output = common dso_local global i32 0, align 4
@UART_LSR_REG = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_TX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @mtk_uart_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @uart_output, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %37

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %5, align 1
  br label %12

12:                                               ; preds = %20, %9
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @UART_LSR_REG, align 4
  %15 = call i32 @uart_getreg(%struct.uart_bas* %13, i32 %14)
  %16 = load i32, i32* @UART_LSR_THRE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %23 = load i32, i32* @UART_TX_REG, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @uart_setreg(%struct.uart_bas* %22, i32 %23, i32 %24)
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = call i32 @uart_barrier(%struct.uart_bas* %26)
  br label %28

28:                                               ; preds = %36, %21
  %29 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %30 = load i32, i32* @UART_LSR_REG, align 4
  %31 = call i32 @uart_getreg(%struct.uart_bas* %29, i32 %30)
  %32 = load i32, i32* @UART_LSR_THRE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %28

37:                                               ; preds = %8, %28
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
