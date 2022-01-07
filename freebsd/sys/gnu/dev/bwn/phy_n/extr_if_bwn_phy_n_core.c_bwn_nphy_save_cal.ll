; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_save_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_save_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64, %struct.TYPE_2__, %struct.bwn_chanspec, %struct.bwn_chanspec }
%struct.TYPE_2__ = type { i32*, i32*, %struct.bwn_phy_n_iq_comp, i32*, i32*, %struct.bwn_phy_n_iq_comp }
%struct.bwn_phy_n_iq_comp = type { i32 }
%struct.bwn_chanspec = type { i32, i32 }

@BWN_BAND_2G = common dso_local global i64 0, align 8
@R2057_TX0_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_save_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_save_cal(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca %struct.bwn_phy_n_iq_comp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bwn_chanspec*, align 8
  %8 = alloca i32*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  store %struct.bwn_phy* %10, %struct.bwn_phy** %3, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %12, i32 0, i32 1
  %14 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %13, align 8
  store %struct.bwn_phy_n* %14, %struct.bwn_phy_n** %4, align 8
  store %struct.bwn_phy_n_iq_comp* null, %struct.bwn_phy_n_iq_comp** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %16 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %20, i32 1)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %24 = call i64 @bwn_current_band(%struct.bwn_mac* %23)
  %25 = load i64, i64* @BWN_BAND_2G, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %29 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store %struct.bwn_phy_n_iq_comp* %30, %struct.bwn_phy_n_iq_comp** %5, align 8
  %31 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %32 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %6, align 8
  %35 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %36 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %35, i32 0, i32 3
  store %struct.bwn_chanspec* %36, %struct.bwn_chanspec** %7, align 8
  %37 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %38 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  br label %55

41:                                               ; preds = %22
  %42 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %43 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store %struct.bwn_phy_n_iq_comp* %44, %struct.bwn_phy_n_iq_comp** %5, align 8
  %45 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %46 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %6, align 8
  %49 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %50 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %49, i32 0, i32 2
  store %struct.bwn_chanspec* %50, %struct.bwn_chanspec** %7, align 8
  %51 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %52 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %41, %27
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %57 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %5, align 8
  %58 = call i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac* %56, i32 0, %struct.bwn_phy_n_iq_comp* %57)
  %59 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %60 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 19
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %167

64:                                               ; preds = %55
  %65 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %66 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 7
  br i1 %68, label %69, label %110

69:                                               ; preds = %64
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %71 = load i32, i32* @R2057_TX0_LOFT_FINE_I, align 4
  %72 = call i32 @BWN_RF_READ(%struct.bwn_mac* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %76 = load i32, i32* @R2057_TX0_LOFT_FINE_Q, align 4
  %77 = call i32 @BWN_RF_READ(%struct.bwn_mac* %75, i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %81 = load i32, i32* @R2057_TX0_LOFT_COARSE_I, align 4
  %82 = call i32 @BWN_RF_READ(%struct.bwn_mac* %80, i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %86 = load i32, i32* @R2057_TX0_LOFT_COARSE_Q, align 4
  %87 = call i32 @BWN_RF_READ(%struct.bwn_mac* %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = load i32, i32* @R2057_TX1_LOFT_FINE_I, align 4
  %92 = call i32 @BWN_RF_READ(%struct.bwn_mac* %90, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %96 = load i32, i32* @R2057_TX1_LOFT_FINE_Q, align 4
  %97 = call i32 @BWN_RF_READ(%struct.bwn_mac* %95, i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %101 = load i32, i32* @R2057_TX1_LOFT_COARSE_I, align 4
  %102 = call i32 @BWN_RF_READ(%struct.bwn_mac* %100, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  store i32 %102, i32* %104, align 4
  %105 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %106 = load i32, i32* @R2057_TX1_LOFT_COARSE_Q, align 4
  %107 = call i32 @BWN_RF_READ(%struct.bwn_mac* %105, i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 7
  store i32 %107, i32* %109, align 4
  br label %166

110:                                              ; preds = %64
  %111 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %112 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %113, 3
  br i1 %114, label %115, label %148

115:                                              ; preds = %110
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %117 = call i32 @BWN_RF_READ(%struct.bwn_mac* %116, i32 8225)
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %121 = call i32 @BWN_RF_READ(%struct.bwn_mac* %120, i32 8226)
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = call i32 @BWN_RF_READ(%struct.bwn_mac* %124, i32 12321)
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %129 = call i32 @BWN_RF_READ(%struct.bwn_mac* %128, i32 12322)
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %133 = call i32 @BWN_RF_READ(%struct.bwn_mac* %132, i32 8227)
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %137 = call i32 @BWN_RF_READ(%struct.bwn_mac* %136, i32 8228)
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %141 = call i32 @BWN_RF_READ(%struct.bwn_mac* %140, i32 12323)
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  store i32 %141, i32* %143, align 4
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %145 = call i32 @BWN_RF_READ(%struct.bwn_mac* %144, i32 12324)
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 7
  store i32 %145, i32* %147, align 4
  br label %165

148:                                              ; preds = %110
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %150 = call i32 @BWN_RF_READ(%struct.bwn_mac* %149, i32 139)
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %154 = call i32 @BWN_RF_READ(%struct.bwn_mac* %153, i32 186)
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %158 = call i32 @BWN_RF_READ(%struct.bwn_mac* %157, i32 141)
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %162 = call i32 @BWN_RF_READ(%struct.bwn_mac* %161, i32 188)
  %163 = load i32*, i32** %6, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %148, %115
  br label %166

166:                                              ; preds = %165, %69
  br label %167

167:                                              ; preds = %166, %63
  %168 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %169 = call i32 @bwn_get_centre_freq(%struct.bwn_mac* %168)
  %170 = load %struct.bwn_chanspec*, %struct.bwn_chanspec** %7, align 8
  %171 = getelementptr inbounds %struct.bwn_chanspec, %struct.bwn_chanspec* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %173 = call i32 @bwn_get_chan_type(%struct.bwn_mac* %172, i32* null)
  %174 = load %struct.bwn_chanspec*, %struct.bwn_chanspec** %7, align 8
  %175 = getelementptr inbounds %struct.bwn_chanspec, %struct.bwn_chanspec* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %177 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %176, i32 %177, i32 8, i32* %178)
  %180 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %181 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %167
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %186 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %185, i32 0)
  br label %187

187:                                              ; preds = %184, %167
  ret void
}

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac*, i32, %struct.bwn_phy_n_iq_comp*) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_get_centre_freq(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_get_chan_type(%struct.bwn_mac*, i32*) #1

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
