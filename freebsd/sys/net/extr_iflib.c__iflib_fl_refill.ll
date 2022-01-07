; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__iflib_fl_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__iflib_fl_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 (i32, i32, i32, i32)*, i32 (i32, %struct.if_rxd_update*)* }
%struct.if_rxd_update = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i8*, i32, i32, i64, i32*, i32, %struct.TYPE_14__*, %struct.TYPE_9__*, i8*, i32**, i32*, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32**, i32*, %struct.mbuf** }
%struct.mbuf = type { i32 }
%struct.rxq_refill_cb_arg = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }

@fl_refills = common dso_local global i32 0, align 4
@fl_refills_large = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@_rxq_refill_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@zone_pack = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@MT_NOINIT = common dso_local global i32 0, align 4
@rx_allocs = common dso_local global i32 0, align 4
@IFLIB_MAX_RX_REFRESH = common dso_local global i32 0, align 4
@rxd_flush = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @_iflib_fl_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_iflib_fl_refill(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_rxd_update, align 4
  %8 = alloca %struct.rxq_refill_cb_arg, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 18
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.mbuf**, %struct.mbuf*** %25, align 8
  store %struct.mbuf** %26, %struct.mbuf*** %12, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 18
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 18
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  store i32** %34, i32*** %11, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 18
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %15, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  store i32 %42, i32* %19, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 10
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %22, align 8
  store i32 0, i32* %18, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @MPASS(i32 %52)
  %54 = load i8*, i8** %22, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ule i8* %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @MPASS(i32 %62)
  %64 = load i32, i32* %21, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %3
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @MPASS(i32 %77)
  br label %79

79:                                               ; preds = %69, %3
  %80 = load i32, i32* %21, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i8*, i8** %22, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ult i8* %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @MPASS(i32 %96)
  br label %98

98:                                               ; preds = %91, %85, %79
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr i8, i8* %110, i64 %113
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %114, i64 %118
  %120 = icmp ule i8* %107, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @MPASS(i32 %121)
  br label %123

123:                                              ; preds = %104, %98
  %124 = load i32, i32* @fl_refills, align 4
  %125 = call i32 @DBG_COUNTER_INC(i32 %124)
  %126 = load i32, i32* %20, align 4
  %127 = icmp sgt i32 %126, 8
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @fl_refills_large, align 4
  %130 = call i32 @DBG_COUNTER_INC(i32 %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @iru_init(%struct.if_rxd_update* %7, %struct.TYPE_14__* %134, i32 %137)
  br label %139

139:                                              ; preds = %348, %131
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %20, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %349

143:                                              ; preds = %139
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 14
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = call i32 @bit_ffc_at(i32 %146, i32 %147, i32 %151, i32* %17)
  %153 = load i32, i32* %17, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %143
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 14
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = ptrtoint i8* %161 to i32
  %163 = call i32 @bit_ffc(i32 %158, i32 %162, i32* %17)
  br label %164

164:                                              ; preds = %155, %143
  %165 = load i32, i32* %17, align 4
  %166 = icmp sge i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @MPASS(i32 %167)
  %169 = load i32**, i32*** %11, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %10, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %236

175:                                              ; preds = %164
  %176 = load i32, i32* @M_NOWAIT, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 17
  %179 = load i32, i32* %178, align 8
  %180 = call i32* @m_cljget(i32* null, i32 %176, i32 %179)
  store i32* %180, i32** %10, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %349

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.rxq_refill_cb_arg, %struct.rxq_refill_cb_arg* %8, i32 0, i32 1
  store i64 0, i64* %184, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = icmp ne i32* %185, null
  %187 = zext i1 %186 to i32
  %188 = call i32 @MPASS(i32 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 17
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @_rxq_refill_cb, align 4
  %202 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %203 = call i32 @bus_dmamap_load(i32 %191, i32 %196, i32* %197, i32 %200, i32 %201, %struct.rxq_refill_cb_arg* %8, i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %183
  %207 = getelementptr inbounds %struct.rxq_refill_cb_arg, %struct.rxq_refill_cb_arg* %8, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %206, %183
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @zone_pack, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = call i32 @uma_zfree(i64 %219, i32* %220)
  br label %222

222:                                              ; preds = %216, %210
  br label %349

223:                                              ; preds = %206
  %224 = getelementptr inbounds %struct.rxq_refill_cb_arg, %struct.rxq_refill_cb_arg* %8, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %14, align 4
  %227 = load i32*, i32** %15, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  %231 = load i32*, i32** %10, align 8
  %232 = load i32**, i32*** %11, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  store i32* %231, i32** %235, align 8
  br label %242

236:                                              ; preds = %164
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* %17, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %14, align 4
  br label %242

242:                                              ; preds = %236, %223
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 15
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** %13, align 8
  %247 = load i32, i32* %17, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %252 = call i32 @bus_dmamap_sync(i32 %245, i32 %250, i32 %251)
  %253 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %254 = load i32, i32* %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %253, i64 %255
  %257 = load %struct.mbuf*, %struct.mbuf** %256, align 8
  %258 = icmp eq %struct.mbuf* %257, null
  br i1 %258, label %259, label %271

259:                                              ; preds = %242
  %260 = load i32, i32* @M_NOWAIT, align 4
  %261 = load i32, i32* @MT_NOINIT, align 4
  %262 = call %struct.mbuf* @m_gethdr(i32 %260, i32 %261)
  store %struct.mbuf* %262, %struct.mbuf** %9, align 8
  %263 = icmp eq %struct.mbuf* %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  br label %349

265:                                              ; preds = %259
  %266 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %267 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %267, i64 %269
  store %struct.mbuf* %266, %struct.mbuf** %270, align 8
  br label %271

271:                                              ; preds = %265, %242
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 14
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @bit_set(i32 %274, i32 %275)
  %277 = load i32, i32* @rx_allocs, align 4
  %278 = call i32 @DBG_COUNTER_INC(i32 %277)
  %279 = load i32, i32* %17, align 4
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 6
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %18, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %279, i32* %285, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 12
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %18, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %286, i32* %292, align 4
  %293 = load i32*, i32** %10, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 11
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %18, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %296, i64 %298
  store i32* %293, i32** %299, align 8
  %300 = load i8*, i8** %22, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %22, align 8
  %302 = load i32, i32* %18, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %18, align 4
  %304 = load i8*, i8** %22, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ule i8* %304, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 @MPASS(i32 %309)
  %311 = load i32, i32* %19, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %19, align 4
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = icmp eq i8* %314, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %271
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 4
  store i32 1, i32* %321, align 4
  store i32 0, i32* %19, align 4
  br label %322

322:                                              ; preds = %319, %271
  %323 = load i32, i32* %20, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* @IFLIB_MAX_RX_REFRESH, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %348

329:                                              ; preds = %325, %322
  %330 = load i32, i32* %21, align 4
  %331 = getelementptr inbounds %struct.if_rxd_update, %struct.if_rxd_update* %7, i32 0, i32 0
  store i32 %330, i32* %331, align 4
  %332 = load i32, i32* %18, align 4
  %333 = getelementptr inbounds %struct.if_rxd_update, %struct.if_rxd_update* %7, i32 0, i32 1
  store i32 %332, i32* %333, align 4
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 2
  %336 = load i32 (i32, %struct.if_rxd_update*)*, i32 (i32, %struct.if_rxd_update*)** %335, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i32 %336(i32 %339, %struct.if_rxd_update* %7)
  store i32 0, i32* %18, align 4
  %341 = load i32, i32* %19, align 4
  store i32 %341, i32* %21, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load i8*, i8** %22, align 8
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 10
  store i8* %345, i8** %347, align 8
  br label %348

348:                                              ; preds = %329, %325
  br label %139

349:                                              ; preds = %264, %222, %182, %139
  %350 = load i32, i32* %18, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %370

352:                                              ; preds = %349
  %353 = load i32, i32* %21, align 4
  %354 = getelementptr inbounds %struct.if_rxd_update, %struct.if_rxd_update* %7, i32 0, i32 0
  store i32 %353, i32* %354, align 4
  %355 = load i32, i32* %18, align 4
  %356 = getelementptr inbounds %struct.if_rxd_update, %struct.if_rxd_update* %7, i32 0, i32 1
  store i32 %355, i32* %356, align 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 2
  %359 = load i32 (i32, %struct.if_rxd_update*)*, i32 (i32, %struct.if_rxd_update*)** %358, align 8
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 %359(i32 %362, %struct.if_rxd_update* %7)
  %364 = load i32, i32* %19, align 4
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load i8*, i8** %22, align 8
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 10
  store i8* %367, i8** %369, align 8
  br label %370

370:                                              ; preds = %352, %349
  %371 = load i32, i32* @rxd_flush, align 4
  %372 = call i32 @DBG_COUNTER_INC(i32 %371)
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %370
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr i8, i8* %380, i64 -1
  %382 = ptrtoint i8* %381 to i32
  store i32 %382, i32* %21, align 4
  br label %388

383:                                              ; preds = %370
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sub nsw i32 %386, 1
  store i32 %387, i32* %21, align 4
  br label %388

388:                                              ; preds = %383, %377
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 9
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 9
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %400 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %401 = or i32 %399, %400
  %402 = call i32 @bus_dmamap_sync(i32 %393, i32 %398, i32 %401)
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 1
  %405 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %404, align 8
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 8
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %21, align 4
  %418 = call i32 %405(i32 %408, i32 %413, i32 %416, i32 %417)
  %419 = load i32, i32* %17, align 4
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 4
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @DBG_COUNTER_INC(i32) #1

declare dso_local i32 @iru_init(%struct.if_rxd_update*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bit_ffc_at(i32, i32, i32, i32*) #1

declare dso_local i32 @bit_ffc(i32, i32, i32*) #1

declare dso_local i32* @m_cljget(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.rxq_refill_cb_arg*, i32) #1

declare dso_local i32 @uma_zfree(i64, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @bit_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
