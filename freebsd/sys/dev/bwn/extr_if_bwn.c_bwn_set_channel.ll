; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.TYPE_3__*, %struct.bwn_softc* }
%struct.TYPE_3__ = type { i64 }
%struct.bwn_softc = type { i64, i32, %struct.bwn_mac* }
%struct.bwn_mac = type { i32, %struct.bwn_phy }
%struct.bwn_phy = type { i32, i32, i64, i32 (%struct.bwn_mac*, i32)* }

@BWN_RETRY_SHORT = common dso_local global i32 0, align 4
@BWN_RETRY_LONG = common dso_local global i32 0, align 4
@BWN_TXPWR_IGNORE_TIME = common dso_local global i32 0, align 4
@BWN_TXPWR_IGNORE_TSSI = common dso_local global i32 0, align 4
@BWN_ANT_DEFAULT = common dso_local global i32 0, align 4
@BWN_MAC_FLAG_RADIO_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"please turn on the RF switch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @bwn_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_set_channel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %3, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 2
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %12, align 8
  store %struct.bwn_mac* %13, %struct.bwn_mac** %4, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 1
  store %struct.bwn_phy* %15, %struct.bwn_phy** %5, align 8
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %17 = call i32 @BWN_LOCK(%struct.bwn_softc* %16)
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @bwn_switch_band(%struct.bwn_softc* %18, %struct.TYPE_3__* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %130

26:                                               ; preds = %1
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %28 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %27)
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %30 = load i32, i32* @BWN_RETRY_SHORT, align 4
  %31 = load i32, i32* @BWN_RETRY_LONG, align 4
  %32 = call i32 @bwn_set_txretry(%struct.bwn_mac* %29, i32 %30, i32 %31)
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %33, %struct.TYPE_3__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %40 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @bwn_switch_channel(%struct.bwn_mac* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %61 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %54
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sdiv i64 %70, 2
  %72 = trunc i64 %71 to i32
  %73 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %74 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %76 = load i32, i32* @BWN_TXPWR_IGNORE_TIME, align 4
  %77 = load i32, i32* @BWN_TXPWR_IGNORE_TSSI, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @bwn_phy_txpower_check(%struct.bwn_mac* %75, i32 %78)
  br label %80

80:                                               ; preds = %65, %54, %47
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %82 = load i32, i32* @BWN_ANT_DEFAULT, align 4
  %83 = call i32 @bwn_set_txantenna(%struct.bwn_mac* %81, i32 %82)
  %84 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %85 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %84, i32 0, i32 3
  %86 = load i32 (%struct.bwn_mac*, i32)*, i32 (%struct.bwn_mac*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.bwn_mac*, i32)* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %90 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %89, i32 0, i32 3
  %91 = load i32 (%struct.bwn_mac*, i32)*, i32 (%struct.bwn_mac*, i32)** %90, align 8
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %93 = load i32, i32* @BWN_ANT_DEFAULT, align 4
  %94 = call i32 %91(%struct.bwn_mac* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %80
  %96 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %97 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %100 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %95
  %104 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %105 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %110 = call i32 @bwn_rf_turnon(%struct.bwn_mac* %109)
  %111 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %112 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BWN_MAC_FLAG_RADIO_ON, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %108
  %118 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %119 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %117, %108
  br label %126

123:                                              ; preds = %103
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %125 = call i32 @bwn_rf_turnoff(%struct.bwn_mac* %124)
  br label %126

126:                                              ; preds = %123, %122
  br label %127

127:                                              ; preds = %126, %95
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %129 = call i32 @bwn_mac_enable(%struct.bwn_mac* %128)
  br label %130

130:                                              ; preds = %127, %25
  %131 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %132 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %131)
  ret void
}

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_switch_band(%struct.bwn_softc*, %struct.TYPE_3__*) #1

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_set_txretry(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.TYPE_3__*) #1

declare dso_local i32 @bwn_switch_channel(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_phy_txpower_check(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_set_txantenna(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_rf_turnon(%struct.bwn_mac*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bwn_rf_turnoff(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
