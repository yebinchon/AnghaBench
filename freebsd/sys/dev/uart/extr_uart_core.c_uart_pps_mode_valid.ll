; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_mode_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_PPS_SIGNAL_MASK = common dso_local global i32 0, align 4
@UART_PPS_OPTION_MASK = common dso_local global i32 0, align 4
@UART_PPS_INVERT_PULSE = common dso_local global i32 0, align 4
@UART_PPS_NARROW_PULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_pps_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_pps_mode_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @UART_PPS_SIGNAL_MASK, align 4
  %7 = and i32 %5, %6
  switch i32 %7, label %9 [
    i32 128, label %8
    i32 130, label %8
    i32 129, label %8
  ]

8:                                                ; preds = %1, %1, %1
  br label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

10:                                               ; preds = %8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @UART_PPS_OPTION_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @UART_PPS_INVERT_PULSE, align 4
  %16 = load i32, i32* @UART_PPS_NARROW_PULSE, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %23

22:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
