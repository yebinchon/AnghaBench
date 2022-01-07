; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i64, i32 }

@UART_PPS_SIGNAL_MASK = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@UART_PPS_NARROW_PULSE = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@UART_PPS_INVERT_PULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*, i32)* @uart_pps_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_pps_process(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UART_PPS_SIGNAL_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %17 [
    i32 129, label %13
    i32 128, label %15
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @SER_CTS, align 4
  store i32 %14, i32* %7, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @SER_DCD, align 4
  store i32 %16, i32* %7, align 4
  br label %18

17:                                               ; preds = %2
  br label %86

18:                                               ; preds = %15, %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SER_DELTA(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %86

25:                                               ; preds = %18
  %26 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 2
  %28 = call i32 @pps_capture(i32* %27)
  %29 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UART_PPS_NARROW_PULSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %25
  %36 = call i64 (...) @getsbinuptime()
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @SBT_1MS, align 4
  %42 = mul nsw i32 500, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = icmp sgt i64 %37, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %50, i32 0, i32 2
  %52 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %53 = call i32 @pps_event(i32* %51, i32 %52)
  %54 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %55 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %54, i32 0, i32 2
  %56 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %57 = call i32 @pps_event(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %35
  br label %86

59:                                               ; preds = %25
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %64 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @UART_PPS_INVERT_PULSE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %59
  %75 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %76 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @pps_event(i32* %76, i32 %84)
  br label %86

86:                                               ; preds = %17, %24, %83, %58
  ret void
}

declare dso_local i32 @SER_DELTA(i32) #1

declare dso_local i32 @pps_capture(i32*) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i32 @pps_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
