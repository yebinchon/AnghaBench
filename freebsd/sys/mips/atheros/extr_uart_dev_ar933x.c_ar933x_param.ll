; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_dev_ar933x.c_ar933x_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@AR933X_UART_CLOCK_REG = common dso_local global i32 0, align 4
@AR933X_UART_CLOCK_SCALE_M = common dso_local global i32 0, align 4
@AR933X_UART_CLOCK_SCALE_S = common dso_local global i32 0, align 4
@AR933X_UART_CLOCK_STEP_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @ar933x_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %5
  %16 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ar933x_uart_get_scale_step(%struct.uart_bas* %16, i32 %17, i32* %11, i32* %12)
  %19 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %20 = load i32, i32* @AR933X_UART_CLOCK_REG, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @AR933X_UART_CLOCK_SCALE_M, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @AR933X_UART_CLOCK_SCALE_S, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @AR933X_UART_CLOCK_STEP_M, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %25, %28
  %30 = call i32 @ar933x_setreg(%struct.uart_bas* %19, i32 %20, i32 %29)
  br label %31

31:                                               ; preds = %15, %5
  %32 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %33 = call i32 @uart_barrier(%struct.uart_bas* %32)
  ret i32 0
}

declare dso_local i32 @ar933x_uart_get_scale_step(%struct.uart_bas*, i32, i32*, i32*) #1

declare dso_local i32 @ar933x_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
