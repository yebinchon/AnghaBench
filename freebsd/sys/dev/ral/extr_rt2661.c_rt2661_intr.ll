; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32, i32*, i32 }

@RT2661_INT_MASK_CSR = common dso_local global i32 0, align 4
@RT2661_MCU_INT_MASK_CSR = common dso_local global i32 0, align 4
@RAL_RUNNING = common dso_local global i32 0, align 4
@RT2661_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@RT2661_MCU_INT_SOURCE_CSR = common dso_local global i32 0, align 4
@RT2661_MGT_DONE = common dso_local global i32 0, align 4
@RT2661_RX_DONE = common dso_local global i32 0, align 4
@RT2661_TX0_DMA_DONE = common dso_local global i32 0, align 4
@RT2661_TX1_DMA_DONE = common dso_local global i32 0, align 4
@RT2661_TX2_DMA_DONE = common dso_local global i32 0, align 4
@RT2661_TX3_DMA_DONE = common dso_local global i32 0, align 4
@RT2661_TX_DONE = common dso_local global i32 0, align 4
@RT2661_MCU_CMD_DONE = common dso_local global i32 0, align 4
@RT2661_MCU_BEACON_EXPIRE = common dso_local global i32 0, align 4
@RT2661_MCU_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2661_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rt2661_softc*
  store %struct.rt2661_softc* %7, %struct.rt2661_softc** %3, align 8
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %9 = call i32 @RAL_LOCK(%struct.rt2661_softc* %8)
  %10 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %11 = load i32, i32* @RT2661_INT_MASK_CSR, align 4
  %12 = call i32 @RAL_WRITE(%struct.rt2661_softc* %10, i32 %11, i32 -129)
  %13 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %14 = load i32, i32* @RT2661_MCU_INT_MASK_CSR, align 4
  %15 = call i32 @RAL_WRITE(%struct.rt2661_softc* %13, i32 %14, i32 -1)
  %16 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %17 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RAL_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %24 = call i32 @RAL_UNLOCK(%struct.rt2661_softc* %23)
  br label %146

25:                                               ; preds = %1
  %26 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %27 = load i32, i32* @RT2661_INT_SOURCE_CSR, align 4
  %28 = call i32 @RAL_READ(%struct.rt2661_softc* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %30 = load i32, i32* @RT2661_INT_SOURCE_CSR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @RAL_WRITE(%struct.rt2661_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %34 = load i32, i32* @RT2661_MCU_INT_SOURCE_CSR, align 4
  %35 = call i32 @RAL_READ(%struct.rt2661_softc* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %37 = load i32, i32* @RT2661_MCU_INT_SOURCE_CSR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @RAL_WRITE(%struct.rt2661_softc* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @RT2661_MGT_DONE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %46 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %47 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %46, i32 0, i32 2
  %48 = call i32 @rt2661_tx_dma_intr(%struct.rt2661_softc* %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %25
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @RT2661_RX_DONE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %56 = call i32 @rt2661_rx_intr(%struct.rt2661_softc* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RT2661_TX0_DMA_DONE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %64 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %65 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = call i32 @rt2661_tx_dma_intr(%struct.rt2661_softc* %63, i32* %67)
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @RT2661_TX1_DMA_DONE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %76 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %77 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = call i32 @rt2661_tx_dma_intr(%struct.rt2661_softc* %75, i32* %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @RT2661_TX2_DMA_DONE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %88 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %89 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = call i32 @rt2661_tx_dma_intr(%struct.rt2661_softc* %87, i32* %91)
  br label %93

93:                                               ; preds = %86, %81
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @RT2661_TX3_DMA_DONE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %100 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %101 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = call i32 @rt2661_tx_dma_intr(%struct.rt2661_softc* %99, i32* %103)
  br label %105

105:                                              ; preds = %98, %93
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @RT2661_TX_DONE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %112 = call i32 @rt2661_tx_intr(%struct.rt2661_softc* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @RT2661_MCU_CMD_DONE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %120 = call i32 @rt2661_mcu_cmd_intr(%struct.rt2661_softc* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @RT2661_MCU_BEACON_EXPIRE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %128 = call i32 @rt2661_mcu_beacon_expire(%struct.rt2661_softc* %127)
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @RT2661_MCU_WAKEUP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %136 = call i32 @rt2661_mcu_wakeup(%struct.rt2661_softc* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %139 = load i32, i32* @RT2661_INT_MASK_CSR, align 4
  %140 = call i32 @RAL_WRITE(%struct.rt2661_softc* %138, i32 %139, i32 65296)
  %141 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %142 = load i32, i32* @RT2661_MCU_INT_MASK_CSR, align 4
  %143 = call i32 @RAL_WRITE(%struct.rt2661_softc* %141, i32 %142, i32 0)
  %144 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %145 = call i32 @RAL_UNLOCK(%struct.rt2661_softc* %144)
  br label %146

146:                                              ; preds = %137, %22
  ret void
}

declare dso_local i32 @RAL_LOCK(%struct.rt2661_softc*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2661_softc*) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @rt2661_tx_dma_intr(%struct.rt2661_softc*, i32*) #1

declare dso_local i32 @rt2661_rx_intr(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_tx_intr(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_mcu_cmd_intr(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_mcu_beacon_expire(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_mcu_wakeup(%struct.rt2661_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
