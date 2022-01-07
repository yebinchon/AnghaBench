; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_cal_radio_setup_rev7.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_cal_radio_setup_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i32*, i64 }

@R2057_TX0_TX_SSI_MASTER = common dso_local global i64 0, align 8
@R2057_TX0_IQCAL_VCM_HG = common dso_local global i64 0, align 8
@R2057_TX0_IQCAL_IDAC = common dso_local global i64 0, align 8
@R2057_TX0_TSSI_VCM = common dso_local global i64 0, align 8
@R2057_TX0_TX_SSI_MUX = common dso_local global i64 0, align 8
@R2057_TX0_TSSIA = common dso_local global i64 0, align 8
@R2057_TX0_TSSIG = common dso_local global i64 0, align 8
@R2057_TX0_TSSI_MISC1 = common dso_local global i64 0, align 8
@BWN_BAND_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_cal_radio_setup_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_cal_radio_setup_rev7(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  store %struct.bwn_phy* %11, %struct.bwn_phy** %3, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %13, i32 0, i32 1
  %15 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %14, align 8
  store %struct.bwn_phy_n* %15, %struct.bwn_phy_n** %4, align 8
  %16 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %17 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %251, %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %254

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 32, i32 0
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 11
  store i32 %28, i32* %7, align 4
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @R2057_TX0_TX_SSI_MASTER, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @BWN_RF_READ(%struct.bwn_mac* %29, i64 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 0
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @R2057_TX0_IQCAL_VCM_HG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @BWN_RF_READ(%struct.bwn_mac* %40, i64 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @R2057_TX0_IQCAL_IDAC, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @BWN_RF_READ(%struct.bwn_mac* %51, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @R2057_TX0_TSSI_VCM, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @BWN_RF_READ(%struct.bwn_mac* %62, i64 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @R2057_TX0_TX_SSI_MUX, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @BWN_RF_READ(%struct.bwn_mac* %78, i64 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %90 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 5
  br i1 %92, label %93, label %105

93:                                               ; preds = %22
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @R2057_TX0_TSSIA, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @BWN_RF_READ(%struct.bwn_mac* %94, i64 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %22
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @R2057_TX0_TSSIG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @BWN_RF_READ(%struct.bwn_mac* %106, i64 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 7
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @R2057_TX0_TSSI_MISC1, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @BWN_RF_READ(%struct.bwn_mac* %117, i64 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %129 = call i64 @bwn_current_band(%struct.bwn_mac* %128)
  %130 = load i64, i64* @BWN_BAND_5G, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %188

132:                                              ; preds = %105
  %133 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @R2057_TX0_TX_SSI_MASTER, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %133, i64 %137, i32 10)
  %139 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @R2057_TX0_IQCAL_VCM_HG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %139, i64 %143, i32 67)
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @R2057_TX0_IQCAL_IDAC, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %145, i64 %149, i32 85)
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @R2057_TX0_TSSI_VCM, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %151, i64 %155, i32 0)
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @R2057_TX0_TSSIG, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %157, i64 %161, i32 0)
  %163 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %164 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %132
  %168 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* @R2057_TX0_TX_SSI_MUX, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %168, i64 %172, i32 4)
  store i32 49, i32* %9, align 4
  %174 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* @R2057_TX0_TSSIA, align 8
  %178 = add nsw i64 %176, %177
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %174, i64 %178, i32 %179)
  br label %181

181:                                              ; preds = %167, %132
  %182 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @R2057_TX0_TSSI_MISC1, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %182, i64 %186, i32 0)
  br label %250

188:                                              ; preds = %105
  %189 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @R2057_TX0_TX_SSI_MASTER, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %189, i64 %193, i32 6)
  %195 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* @R2057_TX0_IQCAL_VCM_HG, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %195, i64 %199, i32 67)
  %201 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* @R2057_TX0_IQCAL_IDAC, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %201, i64 %205, i32 85)
  %207 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @R2057_TX0_TSSI_VCM, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %207, i64 %211, i32 0)
  %213 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %214 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 5
  br i1 %216, label %217, label %224

217:                                              ; preds = %188
  %218 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* @R2057_TX0_TSSIA, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %218, i64 %222, i32 0)
  br label %224

224:                                              ; preds = %217, %188
  %225 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %226 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %224
  %230 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* @R2057_TX0_TX_SSI_MUX, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %230, i64 %234, i32 6)
  store i32 49, i32* %9, align 4
  %236 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* @R2057_TX0_TSSIG, align 8
  %240 = add nsw i64 %238, %239
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %236, i64 %240, i32 %241)
  br label %243

243:                                              ; preds = %229, %224
  %244 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* @R2057_TX0_TSSI_MISC1, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %244, i64 %248, i32 0)
  br label %250

250:                                              ; preds = %243, %181
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %19

254:                                              ; preds = %19
  ret void
}

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i64) #1

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
