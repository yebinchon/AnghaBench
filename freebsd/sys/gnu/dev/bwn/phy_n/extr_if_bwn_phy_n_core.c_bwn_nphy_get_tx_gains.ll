; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_get_tx_gains.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_get_tx_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_nphy_txgains = type { i32*, i32*, i32*, i32*, i32* }
%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64, i32 }

@BWN_NPHY_C1_TXPCTL_STAT = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_STAT_BIDX = common dso_local global i32 0, align 4
@BWN_NPHY_TXPCTL_STAT_BIDX_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_C2_TXPCTL_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_nphy_txgains*, %struct.bwn_mac*)* @bwn_nphy_get_tx_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_get_tx_gains(%struct.bwn_nphy_txgains* noalias sret %0, %struct.bwn_mac* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_phy_n*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.bwn_mac* %1, %struct.bwn_mac** %3, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %12, align 8
  store %struct.bwn_phy_n* %13, %struct.bwn_phy_n** %4, align 8
  store i32* null, i32** %6, align 8
  %14 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %203, label %18

18:                                               ; preds = %2
  %19 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %20 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %25 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = call i32 @BWN_NTAB16(i32 7, i32 272)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %30 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %27, i32 %28, i32 2, i32* %29)
  %31 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %4, align 8
  %32 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %37 = call i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %26
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %199, %38
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %202

42:                                               ; preds = %39
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %44 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 7
  br i1 %47, label %48, label %103

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 7
  %54 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 248
  %64 = ashr i32 %63, 3
  %65 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 3840
  %75 = ashr i32 %74, 8
  %76 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 28672
  %86 = ashr i32 %85, 12
  %87 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 32768
  %97 = ashr i32 %96, 15
  %98 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %97, i32* %102, align 4
  br label %198

103:                                              ; preds = %42
  %104 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %105 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 3
  br i1 %108, label %109, label %153

109:                                              ; preds = %103
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 240
  %125 = ashr i32 %124, 4
  %126 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 3840
  %136 = ashr i32 %135, 8
  %137 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 28672
  %147 = ashr i32 %146, 12
  %148 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %147, i32* %152, align 4
  br label %197

153:                                              ; preds = %103
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 3
  %159 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %158, i32* %163, align 4
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 12
  %169 = ashr i32 %168, 2
  %170 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %169, i32* %174, align 4
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 112
  %180 = ashr i32 %179, 4
  %181 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %180, i32* %185, align 4
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 896
  %191 = ashr i32 %190, 7
  %192 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %191, i32* %196, align 4
  br label %197

197:                                              ; preds = %153, %109
  br label %198

198:                                              ; preds = %197, %48
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %39

202:                                              ; preds = %39
  br label %445

203:                                              ; preds = %2
  %204 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %205 = load i32, i32* @BWN_NPHY_C1_TXPCTL_STAT, align 4
  %206 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %204, i32 %205)
  %207 = load i32, i32* @BWN_NPHY_TXPCTL_STAT_BIDX, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* @BWN_NPHY_TXPCTL_STAT_BIDX_SHIFT, align 4
  %210 = ashr i32 %208, %209
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %210, i32* %211, align 4
  %212 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %213 = load i32, i32* @BWN_NPHY_C2_TXPCTL_STAT, align 4
  %214 = call i32 @BWN_PHY_READ(%struct.bwn_mac* %212, i32 %213)
  %215 = load i32, i32* @BWN_NPHY_TXPCTL_STAT_BIDX, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @BWN_NPHY_TXPCTL_STAT_BIDX_SHIFT, align 4
  %218 = ashr i32 %216, %217
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %218, i32* %219, align 4
  store i32 0, i32* %8, align 4
  br label %220

220:                                              ; preds = %441, %203
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %444

223:                                              ; preds = %220
  %224 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %225 = call i32* @bwn_nphy_get_tx_gain_table(%struct.bwn_mac* %224)
  store i32* %225, i32** %6, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  br label %444

229:                                              ; preds = %223
  %230 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %231 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %233, 7
  br i1 %234, label %235, label %311

235:                                              ; preds = %229
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = ashr i32 %243, 16
  %245 = and i32 %244, 7
  %246 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %245, i32* %250, align 4
  %251 = load i32*, i32** %6, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %251, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 19
  %260 = and i32 %259, 31
  %261 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %260, i32* %265, align 4
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %266, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 24
  %275 = and i32 %274, 15
  %276 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %275, i32* %280, align 4
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %281, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = ashr i32 %288, 28
  %290 = and i32 %289, 7
  %291 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %290, i32* %295, align 4
  %296 = load i32*, i32** %6, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %296, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = ashr i32 %303, 31
  %305 = and i32 %304, 1
  %306 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %305, i32* %310, align 4
  br label %440

311:                                              ; preds = %229
  %312 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %313 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp sge i32 %315, 3
  br i1 %316, label %317, label %378

317:                                              ; preds = %311
  %318 = load i32*, i32** %6, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %318, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = ashr i32 %325, 16
  %327 = and i32 %326, 15
  %328 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %327, i32* %332, align 4
  %333 = load i32*, i32** %6, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %333, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = ashr i32 %340, 20
  %342 = and i32 %341, 15
  %343 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  store i32 %342, i32* %347, align 4
  %348 = load i32*, i32** %6, align 8
  %349 = load i32, i32* %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %348, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = ashr i32 %355, 24
  %357 = and i32 %356, 15
  %358 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  store i32 %357, i32* %362, align 4
  %363 = load i32*, i32** %6, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %363, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = ashr i32 %370, 28
  %372 = and i32 %371, 15
  %373 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 3
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  store i32 %372, i32* %377, align 4
  br label %439

378:                                              ; preds = %311
  %379 = load i32*, i32** %6, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %379, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = ashr i32 %386, 16
  %388 = and i32 %387, 3
  %389 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %388, i32* %393, align 4
  %394 = load i32*, i32** %6, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %394, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = ashr i32 %401, 18
  %403 = and i32 %402, 3
  %404 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %8, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %403, i32* %408, align 4
  %409 = load i32*, i32** %6, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %409, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = ashr i32 %416, 20
  %418 = and i32 %417, 7
  %419 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 2
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %8, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  store i32 %418, i32* %423, align 4
  %424 = load i32*, i32** %6, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %424, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = ashr i32 %431, 23
  %433 = and i32 %432, 7
  %434 = getelementptr inbounds %struct.bwn_nphy_txgains, %struct.bwn_nphy_txgains* %0, i32 0, i32 3
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %8, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %433, i32* %438, align 4
  br label %439

439:                                              ; preds = %378, %317
  br label %440

440:                                              ; preds = %439, %235
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %8, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %8, align 4
  br label %220

444:                                              ; preds = %228, %220
  br label %445

445:                                              ; preds = %444, %202
  ret void
}

declare dso_local i32 @bwn_nphy_stay_in_carrier_search(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32* @bwn_nphy_get_tx_gain_table(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
