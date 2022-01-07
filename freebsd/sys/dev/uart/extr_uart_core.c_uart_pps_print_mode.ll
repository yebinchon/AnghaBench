; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_print_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_print_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"PPS capture mode: \00", align 1
@UART_PPS_SIGNAL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CTS\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DCD\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@UART_PPS_INVERT_PULSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"-Inverted\00", align 1
@UART_PPS_NARROW_PULSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"-NarrowPulse\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @uart_pps_print_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_pps_print_mode(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %3 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %4 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @device_printf(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UART_PPS_SIGNAL_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %18 [
    i32 128, label %12
    i32 130, label %14
    i32 129, label %16
  ]

12:                                               ; preds = %1
  %13 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %20

14:                                               ; preds = %1
  %15 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %20

16:                                               ; preds = %1
  %17 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %20

18:                                               ; preds = %1
  %19 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16, %14, %12
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UART_PPS_INVERT_PULSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %20
  %30 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %31 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UART_PPS_NARROW_PULSE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %29
  %39 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
