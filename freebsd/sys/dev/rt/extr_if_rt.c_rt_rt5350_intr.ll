; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rt5350_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_rt5350_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@RT_DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"interrupt: status=0x%08x\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RT5350_INT_TX_COHERENT = common dso_local global i32 0, align 4
@RT5350_INT_RX_COHERENT = common dso_local global i32 0, align 4
@RT5350_RX_DLY_INT = common dso_local global i32 0, align 4
@RT5350_TX_DLY_INT = common dso_local global i32 0, align 4
@RT5350_INT_RXQ1_DONE = common dso_local global i32 0, align 4
@RT5350_INT_RXQ0_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ3_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ2_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ1_DONE = common dso_local global i32 0, align 4
@RT5350_INT_TXQ0_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rt_rt5350_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_rt5350_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rt_softc*
  store %struct.rt_softc* %7, %struct.rt_softc** %3, align 8
  %8 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %8, i32 0, i32 2
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %12 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @RT_READ(%struct.rt_softc* %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %17 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @RT_WRITE(%struct.rt_softc* %16, i32 %19, i32 %20)
  %22 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %23 = load i32, i32* @RT_DEBUG_INTR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @RT_DPRINTF(%struct.rt_softc* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %1
  br label %124

32:                                               ; preds = %28
  %33 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %124

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RT5350_INT_TX_COHERENT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %51 = call i32 @rt_tx_coherent_intr(%struct.rt_softc* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @RT5350_INT_RX_COHERENT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %59 = call i32 @rt_rx_coherent_intr(%struct.rt_softc* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RT5350_RX_DLY_INT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %67 = call i32 @rt_rx_delay_intr(%struct.rt_softc* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @RT5350_TX_DLY_INT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %75 = call i32 @rt_tx_delay_intr(%struct.rt_softc* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @RT5350_INT_RXQ1_DONE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %83 = call i32 @rt_rx_intr(%struct.rt_softc* %82, i32 1)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @RT5350_INT_RXQ0_DONE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %91 = call i32 @rt_rx_intr(%struct.rt_softc* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @RT5350_INT_TXQ3_DONE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %99 = call i32 @rt_tx_intr(%struct.rt_softc* %98, i32 3)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @RT5350_INT_TXQ2_DONE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %107 = call i32 @rt_tx_intr(%struct.rt_softc* %106, i32 2)
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @RT5350_INT_TXQ1_DONE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %115 = call i32 @rt_tx_intr(%struct.rt_softc* %114, i32 1)
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @RT5350_INT_TXQ0_DONE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %123 = call i32 @rt_tx_intr(%struct.rt_softc* %122, i32 0)
  br label %124

124:                                              ; preds = %31, %43, %121, %116
  ret void
}

declare dso_local i32 @RT_READ(%struct.rt_softc*, i32) #1

declare dso_local i32 @RT_WRITE(%struct.rt_softc*, i32, i32) #1

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*, i32) #1

declare dso_local i32 @rt_tx_coherent_intr(%struct.rt_softc*) #1

declare dso_local i32 @rt_rx_coherent_intr(%struct.rt_softc*) #1

declare dso_local i32 @rt_rx_delay_intr(%struct.rt_softc*) #1

declare dso_local i32 @rt_tx_delay_intr(%struct.rt_softc*) #1

declare dso_local i32 @rt_rx_intr(%struct.rt_softc*, i32) #1

declare dso_local i32 @rt_tx_intr(%struct.rt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
