; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i64, i64 }

@FILTER_STRAY = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@uart_poll_freq = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uart_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.uart_softc*
  store %struct.uart_softc* %9, %struct.uart_softc** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %17 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %18 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %74, %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 20
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %20
  %27 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %28 = call i32 @UART_IPEND(%struct.uart_softc* %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %75

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SER_INT_OVERRUN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %41 = call i32 @uart_intr_overrun(%struct.uart_softc* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SER_INT_BREAK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %49 = call i32 @uart_intr_break(%struct.uart_softc* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SER_INT_RXREADY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %57 = call i32 @uart_intr_rxready(%struct.uart_softc* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SER_INT_SIGCHG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %65 = call i32 @uart_intr_sigchg(%struct.uart_softc* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @SER_INT_TXIDLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %73 = call i32 @uart_intr_txidle(%struct.uart_softc* %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %20

75:                                               ; preds = %30
  %76 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %77 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %82 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %81, i32 0, i32 1
  %83 = load i32, i32* @hz, align 4
  %84 = load i32, i32* @uart_poll_freq, align 4
  %85 = sdiv i32 %83, %84
  %86 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %87 = call i32 @callout_reset(i32* %82, i32 %85, i32* bitcast (i32 (i8*)* @uart_intr to i32*), %struct.uart_softc* %86)
  br label %88

88:                                               ; preds = %80, %75
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @FILTER_STRAY, align 4
  br label %105

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 20
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  br label %103

101:                                              ; preds = %96, %93
  %102 = load i32, i32* @FILTER_HANDLED, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %91
  %106 = phi i32 [ %92, %91 ], [ %104, %103 ]
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @UART_IPEND(%struct.uart_softc*) #1

declare dso_local i32 @uart_intr_overrun(%struct.uart_softc*) #1

declare dso_local i32 @uart_intr_break(%struct.uart_softc*) #1

declare dso_local i32 @uart_intr_rxready(%struct.uart_softc*) #1

declare dso_local i32 @uart_intr_sigchg(%struct.uart_softc*) #1

declare dso_local i32 @uart_intr_txidle(%struct.uart_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32*, %struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
