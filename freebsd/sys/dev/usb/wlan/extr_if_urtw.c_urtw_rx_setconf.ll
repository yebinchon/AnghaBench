; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_rx_setconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_rx_setconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64, i64, i64 }

@URTW_RX = common dso_local global i32 0, align 4
@URTW_RX_FILTER_MASK = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_RX_FILTER_MNG = common dso_local global i32 0, align 4
@URTW_RX_FILTER_DATA = common dso_local global i32 0, align 4
@URTW_RX_FILTER_MCAST = common dso_local global i32 0, align 4
@URTW_RX_FILTER_BCAST = common dso_local global i32 0, align 4
@URTW_RX_FIFO_THRESHOLD_NONE = common dso_local global i32 0, align 4
@URTW_MAX_RX_DMA_2048 = common dso_local global i32 0, align 4
@URTW_RX_AUTORESETPHY = common dso_local global i32 0, align 4
@URTW_RCR_ONLYERLPKT = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@URTW_RX_FILTER_ICVERR = common dso_local global i32 0, align 4
@URTW_RX_FILTER_PWR = common dso_local global i32 0, align 4
@URTW_RX_FILTER_CRCERR = common dso_local global i32 0, align 4
@URTW_RX_FIFO_THRESHOLD_MASK = common dso_local global i32 0, align 4
@URTW_MAX_RX_DMA_MASK = common dso_local global i32 0, align 4
@URTW_RX_FILTER_CTL = common dso_local global i32 0, align 4
@URTW_RX_FILTER_ALLMAC = common dso_local global i32 0, align 4
@URTW_RX_FILTER_NICMAC = common dso_local global i32 0, align 4
@URTW_RX_CHECK_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*)* @urtw_rx_setconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_rx_setconf(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %7 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %6, i32 0, i32 2
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %9 = load i32, i32* @URTW_RX, align 4
  %10 = call i32 @urtw_read32_m(%struct.urtw_softc* %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @URTW_RX_FILTER_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %16 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @URTW_RTL8187B, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @URTW_RX_FILTER_MNG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @URTW_RX_FILTER_DATA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @URTW_RX_FILTER_MCAST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @URTW_RX_FILTER_BCAST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @URTW_RX_FIFO_THRESHOLD_NONE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @URTW_MAX_RX_DMA_2048, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @URTW_RX_AUTORESETPHY, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @URTW_RCR_ONLYERLPKT, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %96

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @URTW_RX_FILTER_MNG, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @URTW_RX_FILTER_DATA, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @URTW_RX_FILTER_BCAST, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @URTW_RX_FILTER_MCAST, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @URTW_RX_FILTER_ICVERR, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @URTW_RX_FILTER_PWR, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %39
  %63 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %64 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @URTW_RX_FILTER_CRCERR, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %67, %62
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @URTW_RX_FIFO_THRESHOLD_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @URTW_RX_FIFO_THRESHOLD_NONE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @URTW_RX_AUTORESETPHY, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @URTW_MAX_RX_DMA_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @URTW_MAX_RX_DMA_2048, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @URTW_RCR_ONLYERLPKT, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %77, %21
  %97 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %98 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %112, label %102

102:                                              ; preds = %96
  %103 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %104 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %109 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107, %102, %96
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @URTW_RX_FILTER_CTL, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @URTW_RX_FILTER_ALLMAC, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %4, align 4
  br label %126

119:                                              ; preds = %107
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @URTW_RX_FILTER_NICMAC, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @URTW_RX_CHECK_BSSID, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %119, %112
  %127 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %128 = load i32, i32* @URTW_RX, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @urtw_write32_m(%struct.urtw_softc* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @urtw_read32_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
