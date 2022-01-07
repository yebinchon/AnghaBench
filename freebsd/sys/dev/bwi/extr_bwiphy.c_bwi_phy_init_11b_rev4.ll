; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11b_rev4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_init_11b_rev4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf, %struct.bwi_softc* }
%struct.bwi_rf = type { i32, i64 }
%struct.bwi_softc = type { i32 }

@BWI_BPHY_CTRL = common dso_local global i32 0, align 4
@BWI_BPHY_CTRL_INIT = common dso_local global i32 0, align 4
@BWI_PHY_MAGIC_REG1 = common dso_local global i32 0, align 4
@BWI_PHY_MAGIC_REG1_VAL1 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@BWI_RF_CHAN_EX = common dso_local global i32 0, align 4
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_phy_init_11b_rev4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_phy_init_11b_rev4(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 1
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %3, align 8
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %12 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %11, i32 0, i32 0
  store %struct.bwi_rf* %12, %struct.bwi_rf** %4, align 8
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %14 = load i32, i32* @BWI_BPHY_CTRL, align 4
  %15 = load i32, i32* @BWI_BPHY_CTRL_INIT, align 4
  %16 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %18 = call i32 @PHY_WRITE(%struct.bwi_mac* %17, i32 32, i32 12316)
  %19 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %20 = call i32 @PHY_WRITE(%struct.bwi_mac* %19, i32 38, i32 0)
  %21 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %22 = call i32 @PHY_WRITE(%struct.bwi_mac* %21, i32 48, i32 198)
  %23 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %24 = call i32 @PHY_WRITE(%struct.bwi_mac* %23, i32 136, i32 15872)
  store i32 0, i32* %6, align 4
  store i32 15421, i32* %5, align 4
  br label %25

25:                                               ; preds = %34, %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 30
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 137, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PHY_WRITE(%struct.bwi_mac* %29, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 514
  store i32 %38, i32* %5, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %41 = load i32, i32* @BWI_PHY_MAGIC_REG1, align 4
  %42 = load i32, i32* @BWI_PHY_MAGIC_REG1_VAL1, align 4
  %43 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %45 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 6, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bwi_rf_set_chan(%struct.bwi_mac* %52, i32 %53, i32 0)
  %55 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %56 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %62 = call i32 @RF_WRITE(%struct.bwi_mac* %61, i32 117, i32 128)
  %63 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %64 = call i32 @RF_WRITE(%struct.bwi_mac* %63, i32 121, i32 129)
  br label %65

65:                                               ; preds = %60, %51
  %66 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %67 = call i32 @RF_WRITE(%struct.bwi_mac* %66, i32 80, i32 32)
  %68 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %69 = call i32 @RF_WRITE(%struct.bwi_mac* %68, i32 80, i32 35)
  %70 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %71 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %65
  %76 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %77 = call i32 @RF_WRITE(%struct.bwi_mac* %76, i32 80, i32 32)
  %78 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %79 = call i32 @RF_WRITE(%struct.bwi_mac* %78, i32 90, i32 112)
  %80 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %81 = call i32 @RF_WRITE(%struct.bwi_mac* %80, i32 91, i32 123)
  %82 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %83 = call i32 @RF_WRITE(%struct.bwi_mac* %82, i32 92, i32 176)
  %84 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %85 = call i32 @RF_WRITE(%struct.bwi_mac* %84, i32 122, i32 15)
  %86 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %87 = call i32 @PHY_WRITE(%struct.bwi_mac* %86, i32 56, i32 1655)
  %88 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %89 = call i32 @bwi_rf_init_bcm2050(%struct.bwi_mac* %88)
  br label %90

90:                                               ; preds = %75, %65
  %91 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %92 = call i32 @PHY_WRITE(%struct.bwi_mac* %91, i32 20, i32 128)
  %93 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %94 = call i32 @PHY_WRITE(%struct.bwi_mac* %93, i32 50, i32 202)
  %95 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %96 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %102 = call i32 @PHY_WRITE(%struct.bwi_mac* %101, i32 50, i32 224)
  br label %103

103:                                              ; preds = %100, %90
  %104 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %105 = call i32 @PHY_WRITE(%struct.bwi_mac* %104, i32 53, i32 1986)
  %106 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %107 = call i32 @bwi_rf_lo_update(%struct.bwi_mac* %106)
  %108 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %109 = call i32 @PHY_WRITE(%struct.bwi_mac* %108, i32 38, i32 52224)
  %110 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %111 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %117 = call i32 @PHY_WRITE(%struct.bwi_mac* %116, i32 38, i32 52736)
  br label %118

118:                                              ; preds = %115, %103
  %119 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %120 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %121 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %119, i32 %120, i32 4352)
  %122 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %123 = call i32 @PHY_WRITE(%struct.bwi_mac* %122, i32 42, i32 34979)
  %124 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %125 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %131 = call i32 @PHY_WRITE(%struct.bwi_mac* %130, i32 42, i32 35010)
  br label %132

132:                                              ; preds = %129, %118
  %133 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %134 = call i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac* %133, i32* null)
  %135 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %136 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %143 = call i32 @bwi_rf_calc_nrssi_slope(%struct.bwi_mac* %142)
  %144 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %145 = call i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac* %144)
  br label %146

146:                                              ; preds = %141, %132
  %147 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %148 = call i32 @bwi_mac_init_tpctl_11bg(%struct.bwi_mac* %147)
  ret void
}

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_set_chan(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_init_bcm2050(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_lo_update(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_set_tpctl_11bg(%struct.bwi_mac*, i32*) #1

declare dso_local i32 @bwi_rf_calc_nrssi_slope(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_set_nrssi_thr(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_init_tpctl_11bg(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
