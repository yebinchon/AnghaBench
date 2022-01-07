; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_rxgain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_set_rxgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.bwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@BWN_PHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4
@BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL = common dso_local global i32 0, align 4
@BWN_PHY_AFE_DDFS = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_phy_lp_set_rxgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_set_rxgain(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 1
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %14, align 8
  store %struct.bwn_softc* %15, %struct.bwn_softc** %5, align 8
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %17 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %16, i32 0, i32 0
  store %struct.ieee80211com* %17, %struct.ieee80211com** %6, align 8
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 65532
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 12
  %30 = ashr i32 %29, 2
  %31 = or i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 2
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %36 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %35, i32 %36, i32 65534, i32 %37)
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 10
  %43 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %39, i32 %40, i32 64511, i32 %42)
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %45 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 11
  %48 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %44, i32 %45, i32 63487, i32 %47)
  %49 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %50 = load i32, i32* @BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %49, i32 %50, i32 %51)
  br label %108

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 65535
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 15
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = ashr i32 %59, 21
  %61 = and i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 20
  %64 = xor i32 %63, -1
  %65 = and i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %66, i32 %67, i32 65534, i32 %68)
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %71 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 9
  %74 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %70, i32 %71, i32 65023, i32 %73)
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %76 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 10
  %79 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %75, i32 %76, i32 64511, i32 %78)
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %81 = load i32, i32* @BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %80, i32 %81, i32 %82)
  %84 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %85 = load i32, i32* @BWN_PHY_AFE_DDFS, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %84, i32 %85, i32 65520, i32 %86)
  %88 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %53
  %94 = load i32, i32* %4, align 4
  %95 = ashr i32 %94, 2
  %96 = and i32 %95, 3
  store i32 %96, i32* %12, align 4
  %97 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %98 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 %99, 11
  %101 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %97, i32 %98, i32 59391, i32 %100)
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %103 = call i32 @BWN_PHY_OFDM(i32 230)
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 %104, 3
  %106 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %102, i32 %103, i32 65511, i32 %105)
  br label %107

107:                                              ; preds = %93, %53
  br label %108

108:                                              ; preds = %107, %23
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %110 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %111 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %109, i32 %110, i32 1)
  %112 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %113 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %114 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %112, i32 %113, i32 16)
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %116 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %117 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %115, i32 %116, i32 64)
  %118 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %119 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 2
  br i1 %122, label %123, label %140

123:                                              ; preds = %108
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %125 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %126 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %124, i32 %125, i32 256)
  %127 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %134 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %135 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %133, i32 %134, i32 1024)
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %137 = call i32 @BWN_PHY_OFDM(i32 229)
  %138 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %136, i32 %137, i32 8)
  br label %139

139:                                              ; preds = %132, %123
  br label %144

140:                                              ; preds = %108
  %141 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %142 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %143 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %141, i32 %142, i32 512)
  br label %144

144:                                              ; preds = %140, %139
  ret void
}

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @BWN_PHY_OFDM(i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
