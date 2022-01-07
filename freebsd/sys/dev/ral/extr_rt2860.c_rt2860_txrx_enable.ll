; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_txrx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_txrx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MAC_TX_EN = common dso_local global i32 0, align 4
@RT2860_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@RT2860_TX_DMA_BUSY = common dso_local global i32 0, align 4
@RT2860_RX_DMA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for DMA engine\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@RT2860_RX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_WPDMA_BT_SIZE64 = common dso_local global i32 0, align 4
@RT2860_WPDMA_BT_SIZE_SHIFT = common dso_local global i32 0, align 4
@RT2860_DROP_CRC_ERR = common dso_local global i32 0, align 4
@RT2860_DROP_PHY_ERR = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@RT2860_DROP_UC_NOME = common dso_local global i32 0, align 4
@RT2860_DROP_DUPL = common dso_local global i32 0, align 4
@RT2860_DROP_CTS = common dso_local global i32 0, align 4
@RT2860_DROP_BA = common dso_local global i32 0, align 4
@RT2860_DROP_ACK = common dso_local global i32 0, align 4
@RT2860_DROP_VER_ERR = common dso_local global i32 0, align 4
@RT2860_DROP_CTRL_RSV = common dso_local global i32 0, align 4
@RT2860_DROP_CFACK = common dso_local global i32 0, align 4
@RT2860_DROP_CFEND = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2860_DROP_RTS = common dso_local global i32 0, align 4
@RT2860_DROP_PSPOLL = common dso_local global i32 0, align 4
@RT2860_RX_FILTR_CFG = common dso_local global i32 0, align 4
@RT2860_MAC_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2860_softc*)* @rt2860_txrx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_txrx_enable(%struct.rt2860_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  %7 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %7, i32 0, i32 1
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %10 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %11 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %12 = call i32 @RAL_WRITE(%struct.rt2860_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %14 = call i32 @RAL_BARRIER_READ_WRITE(%struct.rt2860_softc* %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 200
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %20 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %21 = call i32 @RAL_READ(%struct.rt2860_softc* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %24 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %34

29:                                               ; preds = %18
  %30 = call i32 @DELAY(i32 1000)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %15

34:                                               ; preds = %28, %15
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 200
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %39 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %42, i32* %2, align 4
  br label %109

43:                                               ; preds = %34
  %44 = call i32 @DELAY(i32 50)
  %45 = load i32, i32* @RT2860_RX_DMA_EN, align 4
  %46 = load i32, i32* @RT2860_TX_DMA_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RT2860_WPDMA_BT_SIZE64, align 4
  %49 = load i32, i32* @RT2860_WPDMA_BT_SIZE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %55 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @RAL_WRITE(%struct.rt2860_softc* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @RT2860_DROP_CRC_ERR, align 4
  %59 = load i32, i32* @RT2860_DROP_PHY_ERR, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %43
  %67 = load i32, i32* @RT2860_DROP_UC_NOME, align 4
  %68 = load i32, i32* @RT2860_DROP_DUPL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RT2860_DROP_CTS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RT2860_DROP_BA, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RT2860_DROP_ACK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RT2860_DROP_VER_ERR, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RT2860_DROP_CTRL_RSV, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @RT2860_DROP_CFACK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RT2860_DROP_CFEND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IEEE80211_M_STA, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %66
  %92 = load i32, i32* @RT2860_DROP_RTS, align 4
  %93 = load i32, i32* @RT2860_DROP_PSPOLL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %66
  br label %98

98:                                               ; preds = %97, %43
  %99 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %100 = load i32, i32* @RT2860_RX_FILTR_CFG, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @RAL_WRITE(%struct.rt2860_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %104 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %105 = load i32, i32* @RT2860_MAC_RX_EN, align 4
  %106 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @RAL_WRITE(%struct.rt2860_softc* %103, i32 %104, i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %98, %37
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RAL_BARRIER_READ_WRITE(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
