; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_iq_cal_gain_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_iq_cal_gain_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy }
%struct.bwn_phy = type { i32 }
%struct.bwn_nphy_txgains = type { i32*, i32*, i32*, i32*, i32* }
%struct.bwn_nphy_iqcal_params = type { i32, i32, i32, i32, i32, i32, i32* }

@BWN_BAND_5G = common dso_local global i64 0, align 8
@tbl_iqcal_gainparams = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i64, %struct.bwn_nphy_txgains*, %struct.bwn_nphy_iqcal_params*)* @bwn_nphy_iq_cal_gain_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_iq_cal_gain_params(%struct.bwn_mac* %0, i64 %1, %struct.bwn_nphy_txgains* byval(%struct.bwn_nphy_txgains) align 8 %2, %struct.bwn_nphy_iqcal_params* %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bwn_nphy_iqcal_params*, align 8
  %8 = alloca %struct.bwn_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bwn_nphy_iqcal_params* %3, %struct.bwn_nphy_iqcal_params** %7, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  store %struct.bwn_phy* %14, %struct.bwn_phy** %8, align 8
  %15 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %16 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 3
  br i1 %19, label %20, label %129

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %27 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %34 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %41 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %48 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %55 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %57 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 19
  br i1 %59, label %60, label %61

60:                                               ; preds = %20
  br label %114

61:                                               ; preds = %20
  %62 = load %struct.bwn_phy*, %struct.bwn_phy** %8, align 8
  %63 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 7
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %68 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 12
  %71 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %72 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 8
  %75 = or i32 %70, %74
  %76 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %77 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 3
  %80 = or i32 %75, %79
  %81 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %82 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %86 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, 15
  %89 = or i32 %84, %88
  %90 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %91 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  br label %113

92:                                               ; preds = %61
  %93 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %94 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 12
  %97 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %98 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 8
  %101 = or i32 %96, %100
  %102 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %103 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 %101, %105
  %107 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %108 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %106, %109
  %111 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %112 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %92, %66
  br label %114

114:                                              ; preds = %113, %60
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %125, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %120 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 121, i32* %124, align 4
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %115

128:                                              ; preds = %115
  br label %268

129:                                              ; preds = %4
  %130 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 4
  %141 = or i32 %134, %140
  %142 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %2, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = or i32 %141, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %12, align 8
  %150 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %151 = call i64 @bwn_current_band(%struct.bwn_mac* %150)
  %152 = load i64, i64* @BWN_BAND_5G, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  store i32 %155, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %175, %129
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 9
  br i1 %158, label %159, label %178

159:                                              ; preds = %156
  %160 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64**, i64*** %160, i64 %162
  %164 = load i64**, i64*** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64*, i64** %164, i64 %166
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %159
  br label %178

174:                                              ; preds = %159
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %156

178:                                              ; preds = %173, %156
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @min(i32 %179, i32 8)
  store i32 %180, i32* %9, align 4
  %181 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64**, i64*** %181, i64 %183
  %185 = load i64**, i64*** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64*, i64** %185, i64 %187
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %194 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64**, i64*** %195, i64 %197
  %199 = load i64**, i64*** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64*, i64** %199, i64 %201
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 2
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %208 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64**, i64*** %209, i64 %211
  %213 = load i64**, i64*** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64*, i64** %213, i64 %215
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 3
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %222 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  %223 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %224 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = shl i32 %225, 7
  %227 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %228 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = shl i32 %229, 4
  %231 = or i32 %226, %230
  %232 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %233 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 2
  %236 = or i32 %231, %235
  %237 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %238 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  store i32 0, i32* %10, align 4
  br label %239

239:                                              ; preds = %264, %178
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %240, 4
  br i1 %241, label %242, label %267

242:                                              ; preds = %239
  %243 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64**, i64*** %243, i64 %245
  %247 = load i64**, i64*** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64*, i64** %247, i64 %249
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 4, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %251, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = load %struct.bwn_nphy_iqcal_params*, %struct.bwn_nphy_iqcal_params** %7, align 8
  %259 = getelementptr inbounds %struct.bwn_nphy_iqcal_params, %struct.bwn_nphy_iqcal_params* %258, i32 0, i32 6
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %257, i32* %263, align 4
  br label %264

264:                                              ; preds = %242
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %10, align 4
  br label %239

267:                                              ; preds = %239
  br label %268

268:                                              ; preds = %267, %128
  ret void
}

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
