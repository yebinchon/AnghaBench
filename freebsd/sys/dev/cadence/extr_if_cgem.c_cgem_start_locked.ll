; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i64, i32, %struct.mbuf**, %struct.TYPE_4__*, i32**, i32, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@TX_MAX_DMA_SEGS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@CGEM_NUM_TX_DESCS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CGEM_TXDESC_LAST_BUF = common dso_local global i32 0, align 4
@CGEM_TXDESC_WRAP = common dso_local global i32 0, align 4
@CGEM_NET_CTRL = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_START_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cgem_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_start_locked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgem_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @if_getsoftc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.cgem_softc*
  store %struct.cgem_softc* %16, %struct.cgem_softc** %3, align 8
  %17 = load i32, i32* @TX_MAX_DMA_SEGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca %struct.TYPE_5__, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %22 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @if_getdrvflags(i32 %23)
  %25 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %322

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %304, %158, %109, %78, %29
  %31 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %32 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %35 = load i32, i32* @TX_MAX_DMA_SEGS, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sub nsw i32 %34, %36
  %38 = icmp sge i32 %33, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %30
  %40 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %41 = call i32 @cgem_clean_tx(%struct.cgem_softc* %40)
  %42 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %43 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %46 = load i32, i32* @TX_MAX_DMA_SEGS, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sub nsw i32 %45, %47
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %53 = call i32 @if_setdrvflagbits(i32 %51, i32 %52, i32 0)
  %54 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %55 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %321

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i32, i32* %2, align 4
  %61 = call %struct.mbuf* @if_dequeue(i32 %60)
  store %struct.mbuf* %61, %struct.mbuf** %4, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = icmp eq %struct.mbuf* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %321

65:                                               ; preds = %59
  %66 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %67 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %70 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %69, i32 0, i32 5
  %71 = load i32**, i32*** %70, align 8
  %72 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %73 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32*, i32** %71, i64 %74
  %76 = call i64 @bus_dmamap_create(i32 %68, i32 0, i32** %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %65
  %79 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %80 = call i32 @m_freem(%struct.mbuf* %79)
  %81 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %82 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %30

85:                                               ; preds = %65
  %86 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %87 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %90 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %89, i32 0, i32 5
  %91 = load i32**, i32*** %90, align 8
  %92 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %93 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %98 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %99 = call i32 @bus_dmamap_load_mbuf_sg(i32 %88, i32* %96, %struct.mbuf* %97, %struct.TYPE_5__* %20, i32* %9, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @EFBIG, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %155

103:                                              ; preds = %85
  %104 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %105 = load i32, i32* @M_NOWAIT, align 4
  %106 = call %struct.mbuf* @m_defrag(%struct.mbuf* %104, i32 %105)
  store %struct.mbuf* %106, %struct.mbuf** %13, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %108 = icmp eq %struct.mbuf* %107, null
  br i1 %108, label %109, label %135

109:                                              ; preds = %103
  %110 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %111 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %115 = call i32 @m_freem(%struct.mbuf* %114)
  %116 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %117 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %120 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %119, i32 0, i32 5
  %121 = load i32**, i32*** %120, align 8
  %122 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %123 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32*, i32** %121, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @bus_dmamap_destroy(i32 %118, i32* %126)
  %128 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %129 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %128, i32 0, i32 5
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %132 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32*, i32** %130, i64 %133
  store i32* null, i32** %134, align 8
  br label %30

135:                                              ; preds = %103
  %136 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %136, %struct.mbuf** %4, align 8
  %137 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %138 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %141 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %140, i32 0, i32 5
  %142 = load i32**, i32*** %141, align 8
  %143 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %144 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32*, i32** %142, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %149 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %150 = call i32 @bus_dmamap_load_mbuf_sg(i32 %139, i32* %147, %struct.mbuf* %148, %struct.TYPE_5__* %20, i32* %9, i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %152 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %135, %85
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %160 = call i32 @m_freem(%struct.mbuf* %159)
  %161 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %162 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %165 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %164, i32 0, i32 5
  %166 = load i32**, i32*** %165, align 8
  %167 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %168 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32*, i32** %166, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @bus_dmamap_destroy(i32 %163, i32* %171)
  %173 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %174 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %173, i32 0, i32 5
  %175 = load i32**, i32*** %174, align 8
  %176 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %177 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32*, i32** %175, i64 %178
  store i32* null, i32** %179, align 8
  %180 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %181 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %30

184:                                              ; preds = %155
  %185 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %186 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %187 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %186, i32 0, i32 3
  %188 = load %struct.mbuf**, %struct.mbuf*** %187, align 8
  %189 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %190 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %188, i64 %191
  store %struct.mbuf* %185, %struct.mbuf** %192, align 8
  %193 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %194 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %197 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %196, i32 0, i32 5
  %198 = load i32**, i32*** %197, align 8
  %199 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %200 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i32*, i32** %198, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %205 = call i32 @bus_dmamap_sync(i32 %195, i32* %203, i32 %204)
  %206 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %207 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = add i64 %208, %210
  %212 = load i32, i32* @TX_MAX_DMA_SEGS, align 4
  %213 = sext i32 %212 to i64
  %214 = add i64 %211, %213
  %215 = load i32, i32* @CGEM_NUM_TX_DESCS, align 4
  %216 = sext i32 %215 to i64
  %217 = icmp uge i64 %214, %216
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %9, align 4
  %220 = sub nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %288, %184
  %222 = load i32, i32* %8, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %291

224:                                              ; preds = %221
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %231 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %230, i32 0, i32 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %234 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = add i64 %235, %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  store i32 %229, i32* %240, align 4
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %9, align 4
  %248 = sub nsw i32 %247, 1
  %249 = icmp eq i32 %246, %248
  br i1 %249, label %250, label %261

250:                                              ; preds = %224
  %251 = load i32, i32* @CGEM_TXDESC_LAST_BUF, align 4
  %252 = load i32, i32* %7, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* @CGEM_TXDESC_WRAP, align 4
  %258 = load i32, i32* %7, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %7, align 4
  br label %260

260:                                              ; preds = %256, %250
  br label %261

261:                                              ; preds = %260, %224
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %264 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %263, i32 0, i32 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %267 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = add i64 %268, %270
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  store i32 %262, i32* %273, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %261
  %277 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %278 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %277, i32 0, i32 3
  %279 = load %struct.mbuf**, %struct.mbuf*** %278, align 8
  %280 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %281 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = add i64 %282, %284
  %286 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %279, i64 %285
  store %struct.mbuf* null, %struct.mbuf** %286, align 8
  br label %287

287:                                              ; preds = %276, %261
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %8, align 4
  br label %221

291:                                              ; preds = %221
  %292 = load i32, i32* %10, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %296 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %295, i32 0, i32 1
  store i64 0, i64* %296, align 8
  br label %304

297:                                              ; preds = %291
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %301 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = add i64 %302, %299
  store i64 %303, i64* %301, align 8
  br label %304

304:                                              ; preds = %297, %294
  %305 = load i32, i32* %9, align 4
  %306 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %307 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %311 = load i32, i32* @CGEM_NET_CTRL, align 4
  %312 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %313 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @CGEM_NET_CTRL_START_TX, align 4
  %316 = or i32 %314, %315
  %317 = call i32 @WR4(%struct.cgem_softc* %310, i32 %311, i32 %316)
  %318 = load i32, i32* %2, align 4
  %319 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %320 = call i32 @ETHER_BPF_MTAP(i32 %318, %struct.mbuf* %319)
  br label %30

321:                                              ; preds = %64, %50
  store i32 0, i32* %12, align 4
  br label %322

322:                                              ; preds = %321, %28
  %323 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %323)
  %324 = load i32, i32* %12, align 4
  switch i32 %324, label %326 [
    i32 0, label %325
    i32 1, label %325
  ]

325:                                              ; preds = %322, %322
  ret void

326:                                              ; preds = %322
  unreachable
}

declare dso_local i64 @if_getsoftc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @cgem_clean_tx(%struct.cgem_softc*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local %struct.mbuf* @if_dequeue(i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32**) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32*, %struct.mbuf*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i32 @ETHER_BPF_MTAP(i32, %struct.mbuf*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
