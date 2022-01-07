; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_restore_rssi_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_restore_rssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@BWN_BAND_2G = common dso_local global i64 0, align 8
@R2057_NB_MASTER_CORE0 = common dso_local global i32 0, align 4
@R2057_VCM_MASK = common dso_local global i32 0, align 4
@R2057_NB_MASTER_CORE1 = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX_RSSI_MISC = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_0I_RSSI_Z = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_0Q_RSSI_Z = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_1I_RSSI_Z = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_1Q_RSSI_Z = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_0I_RSSI_X = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_0Q_RSSI_X = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_1I_RSSI_X = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_1Q_RSSI_X = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_0I_RSSI_Y = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_0Q_RSSI_Y = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_1I_RSSI_Y = common dso_local global i32 0, align 4
@BWN_NPHY_RSSIMC_1Q_RSSI_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_restore_rssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_restore_rssi_cal(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_n*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %6 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %7 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %8, align 8
  store %struct.bwn_phy_n* %9, %struct.bwn_phy_n** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = call i64 @bwn_current_band(%struct.bwn_mac* %10)
  %12 = load i64, i64* @BWN_BAND_2G, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %16 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %167

21:                                               ; preds = %14
  %22 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %23 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  %26 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %27 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  br label %46

30:                                               ; preds = %1
  %31 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %32 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %167

37:                                               ; preds = %30
  %38 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %39 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %4, align 8
  %42 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %37, %21
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 19
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %94

53:                                               ; preds = %46
  %54 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %55 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 7
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = load i32, i32* @R2057_NB_MASTER_CORE0, align 4
  %62 = load i32, i32* @R2057_VCM_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %60, i32 %61, i32 %63, i32 %66)
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %69 = load i32, i32* @R2057_NB_MASTER_CORE1, align 4
  %70 = load i32, i32* @R2057_VCM_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %68, i32 %69, i32 %71, i32 %74)
  br label %93

76:                                               ; preds = %53
  %77 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %78 = load i32, i32* @B2056_RX0, align 4
  %79 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %77, i32 %80, i32 227, i32 %83)
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = load i32, i32* @B2056_RX1, align 4
  %87 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @BWN_RF_SETMASK(%struct.bwn_mac* %85, i32 %88, i32 227, i32 %91)
  br label %93

93:                                               ; preds = %76, %59
  br label %94

94:                                               ; preds = %93, %52
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %96 = load i32, i32* @BWN_NPHY_RSSIMC_0I_RSSI_Z, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %95, i32 %96, i32 %99)
  %101 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %102 = load i32, i32* @BWN_NPHY_RSSIMC_0Q_RSSI_Z, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %101, i32 %102, i32 %105)
  %107 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %108 = load i32, i32* @BWN_NPHY_RSSIMC_1I_RSSI_Z, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %107, i32 %108, i32 %111)
  %113 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %114 = load i32, i32* @BWN_NPHY_RSSIMC_1Q_RSSI_Z, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %113, i32 %114, i32 %117)
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %120 = load i32, i32* @BWN_NPHY_RSSIMC_0I_RSSI_X, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %119, i32 %120, i32 %123)
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %126 = load i32, i32* @BWN_NPHY_RSSIMC_0Q_RSSI_X, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %125, i32 %126, i32 %129)
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = load i32, i32* @BWN_NPHY_RSSIMC_1I_RSSI_X, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %131, i32 %132, i32 %135)
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %138 = load i32, i32* @BWN_NPHY_RSSIMC_1Q_RSSI_X, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 7
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %137, i32 %138, i32 %141)
  %143 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %144 = load i32, i32* @BWN_NPHY_RSSIMC_0I_RSSI_Y, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %143, i32 %144, i32 %147)
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %150 = load i32, i32* @BWN_NPHY_RSSIMC_0Q_RSSI_Y, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 9
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %149, i32 %150, i32 %153)
  %155 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %156 = load i32, i32* @BWN_NPHY_RSSIMC_1I_RSSI_Y, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 10
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %155, i32 %156, i32 %159)
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %162 = load i32, i32* @BWN_NPHY_RSSIMC_1Q_RSSI_Y, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 11
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %161, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %94, %36, %20
  ret void
}

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
