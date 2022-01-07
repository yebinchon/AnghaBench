; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_txrx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_txrx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MAC_TX_EN = common dso_local global i32 0, align 4
@RT2860_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@RT2860_TX_DMA_BUSY = common dso_local global i32 0, align 4
@RT2860_RX_DMA_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RT2860_RX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_WB_DDONE = common dso_local global i32 0, align 4
@RT2860_USB_TX_EN = common dso_local global i32 0, align 4
@RT2860_USB_RX_EN = common dso_local global i32 0, align 4
@RT2860_USB_RX_AGG_EN = common dso_local global i32 0, align 4
@RT2860_USB_DMA_CFG = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*)* @run_txrx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_txrx_enable(%struct.run_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  %8 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %9 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %11 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %12 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %13 = call i32 @run_write(%struct.run_softc* %10, i32 %11, i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 200
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %19 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %20 = call i32 @run_read(%struct.run_softc* %18, i32 %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %121

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %27 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %34 = call i32 @run_delay(%struct.run_softc* %33, i32 50)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %14

38:                                               ; preds = %31, %14
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 200
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %42, i32* %2, align 4
  br label %121

43:                                               ; preds = %38
  %44 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %45 = call i32 @run_delay(%struct.run_softc* %44, i32 50)
  %46 = load i32, i32* @RT2860_RX_DMA_EN, align 4
  %47 = load i32, i32* @RT2860_TX_DMA_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RT2860_TX_WB_DDONE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %54 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @run_write(%struct.run_softc* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @RT2860_USB_TX_EN, align 4
  %58 = load i32, i32* @RT2860_USB_RX_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RT2860_USB_RX_AGG_EN, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @RT2860_USB_RX_AGG_TO(i32 128)
  %63 = or i32 %61, %62
  %64 = call i32 @RT2860_USB_RX_AGG_LMT(i32 2)
  %65 = or i32 %63, %64
  store i32 %65, i32* %5, align 4
  %66 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %67 = load i32, i32* @RT2860_USB_DMA_CFG, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @run_write(%struct.run_softc* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @RT2860_DROP_CRC_ERR, align 4
  %71 = load i32, i32* @RT2860_DROP_PHY_ERR, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %5, align 4
  %73 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %43
  %79 = load i32, i32* @RT2860_DROP_UC_NOME, align 4
  %80 = load i32, i32* @RT2860_DROP_DUPL, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RT2860_DROP_CTS, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RT2860_DROP_BA, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RT2860_DROP_ACK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RT2860_DROP_VER_ERR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RT2860_DROP_CTRL_RSV, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RT2860_DROP_CFACK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RT2860_DROP_CFEND, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IEEE80211_M_STA, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %78
  %104 = load i32, i32* @RT2860_DROP_RTS, align 4
  %105 = load i32, i32* @RT2860_DROP_PSPOLL, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %78
  br label %110

110:                                              ; preds = %109, %43
  %111 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %112 = load i32, i32* @RT2860_RX_FILTR_CFG, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @run_write(%struct.run_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %116 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %117 = load i32, i32* @RT2860_MAC_RX_EN, align 4
  %118 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @run_write(%struct.run_softc* %115, i32 %116, i32 %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %110, %41, %22
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @RT2860_USB_RX_AGG_TO(i32) #1

declare dso_local i32 @RT2860_USB_RX_AGG_LMT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
