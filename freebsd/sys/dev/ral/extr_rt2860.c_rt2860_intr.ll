; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32 }

@RT2860_INT_STATUS = common dso_local global i32 0, align 4
@RT2860_TX_RX_COHERENT = common dso_local global i32 0, align 4
@RT2860_MAC_INT_2 = common dso_local global i32 0, align 4
@RT2860_TX_DONE_INT5 = common dso_local global i32 0, align 4
@RT2860_RX_DONE_INT = common dso_local global i32 0, align 4
@RT2860_TX_DONE_INT4 = common dso_local global i32 0, align 4
@RT2860_TX_DONE_INT3 = common dso_local global i32 0, align 4
@RT2860_TX_DONE_INT2 = common dso_local global i32 0, align 4
@RT2860_TX_DONE_INT1 = common dso_local global i32 0, align 4
@RT2860_TX_DONE_INT0 = common dso_local global i32 0, align 4
@RT2860_MAC_INT_0 = common dso_local global i32 0, align 4
@RT2860_MAC_INT_3 = common dso_local global i32 0, align 4
@RT2860_MAC_INT_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2860_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rt2860_softc*
  store %struct.rt2860_softc* %6, %struct.rt2860_softc** %3, align 8
  %7 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %8 = call i32 @RAL_LOCK(%struct.rt2860_softc* %7)
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %10 = load i32, i32* @RT2860_INT_STATUS, align 4
  %11 = call i32 @RAL_READ(%struct.rt2860_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i64 @__predict_false(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %19 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %18)
  br label %127

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %25 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %24)
  br label %127

26:                                               ; preds = %20
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %28 = load i32, i32* @RT2860_INT_STATUS, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @RAL_WRITE(%struct.rt2860_softc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RT2860_TX_RX_COHERENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %37 = call i32 @rt2860_intr_coherent(%struct.rt2860_softc* %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RT2860_MAC_INT_2, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %45 = call i32 @rt2860_drain_stats_fifo(%struct.rt2860_softc* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RT2860_TX_DONE_INT5, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %53 = call i32 @rt2860_tx_intr(%struct.rt2860_softc* %52, i32 5)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RT2860_RX_DONE_INT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %61 = call i32 @rt2860_rx_intr(%struct.rt2860_softc* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RT2860_TX_DONE_INT4, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %69 = call i32 @rt2860_tx_intr(%struct.rt2860_softc* %68, i32 4)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @RT2860_TX_DONE_INT3, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %77 = call i32 @rt2860_tx_intr(%struct.rt2860_softc* %76, i32 3)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RT2860_TX_DONE_INT2, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %85 = call i32 @rt2860_tx_intr(%struct.rt2860_softc* %84, i32 2)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @RT2860_TX_DONE_INT1, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %93 = call i32 @rt2860_tx_intr(%struct.rt2860_softc* %92, i32 1)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @RT2860_TX_DONE_INT0, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %101 = call i32 @rt2860_tx_intr(%struct.rt2860_softc* %100, i32 0)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @RT2860_MAC_INT_0, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %109 = call i32 @rt2860_tbtt_intr(%struct.rt2860_softc* %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @RT2860_MAC_INT_3, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @RT2860_MAC_INT_4, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %123 = call i32 @rt2860_gp_intr(%struct.rt2860_softc* %122)
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %126 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %125)
  br label %127

127:                                              ; preds = %124, %23, %17
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt2860_intr_coherent(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_drain_stats_fifo(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_tx_intr(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_rx_intr(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_tbtt_intr(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_gp_intr(%struct.rt2860_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
