; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_5__*, i32*, i32*, i32**, i32*, i32*, i32**, i32*, i32*, i32** }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TI_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@TI_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@TI_MINI_RX_RING_CNT = common dso_local global i32 0, align 4
@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_dma_free(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TI_STD_RX_RING_CNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 27
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %8
  %19 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 25
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 27
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bus_dmamap_destroy(i32* %22, i32* %30)
  %32 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 27
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %18, %8
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4

43:                                               ; preds = %4
  %44 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 26
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 25
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 26
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @bus_dmamap_destroy(i32* %53, i32* %57)
  %59 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 26
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %49, %43
  %63 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 25
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 25
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_dma_tag_destroy(i32* %72)
  %74 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 25
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %114, %77
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @TI_JUMBO_RX_RING_CNT, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %117

82:                                               ; preds = %78
  %83 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %84 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 24
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %113

92:                                               ; preds = %82
  %93 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 22
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 24
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @bus_dmamap_destroy(i32* %96, i32* %104)
  %106 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 24
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %92, %82
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %78

117:                                              ; preds = %78
  %118 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 23
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 22
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %129 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 23
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @bus_dmamap_destroy(i32* %127, i32* %131)
  %133 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 23
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %123, %117
  %137 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %138 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 22
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %144 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 22
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @bus_dma_tag_destroy(i32* %146)
  %148 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %149 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 22
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %142, %136
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %188, %151
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @TI_MINI_RX_RING_CNT, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %191

156:                                              ; preds = %152
  %157 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %158 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 21
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %187

166:                                              ; preds = %156
  %167 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 19
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %172 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 21
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @bus_dmamap_destroy(i32* %170, i32* %178)
  %180 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %181 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 21
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %166, %156
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %152

191:                                              ; preds = %152
  %192 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %193 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 20
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %191
  %198 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %199 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 19
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %203 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 20
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @bus_dmamap_destroy(i32* %201, i32* %205)
  %207 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %208 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 20
  store i32* null, i32** %209, align 8
  br label %210

210:                                              ; preds = %197, %191
  %211 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %212 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 19
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %218 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 19
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @bus_dma_tag_destroy(i32* %220)
  %222 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %223 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 19
  store i32* null, i32** %224, align 8
  br label %225

225:                                              ; preds = %216, %210
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %265, %225
  %227 = load i32, i32* %3, align 4
  %228 = load i32, i32* @TI_TX_RING_CNT, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %268

230:                                              ; preds = %226
  %231 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %232 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 18
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %264

241:                                              ; preds = %230
  %242 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %243 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 17
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %247 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 18
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @bus_dmamap_destroy(i32* %245, i32* %254)
  %256 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %257 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 18
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = load i32, i32* %3, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  store i32* null, i32** %263, align 8
  br label %264

264:                                              ; preds = %241, %230
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %3, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %3, align 4
  br label %226

268:                                              ; preds = %226
  %269 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %270 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 17
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %283

274:                                              ; preds = %268
  %275 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %276 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 17
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @bus_dma_tag_destroy(i32* %278)
  %280 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %281 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 17
  store i32* null, i32** %282, align 8
  br label %283

283:                                              ; preds = %274, %268
  %284 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %285 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %286 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 16
  %288 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %289 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 15
  %291 = bitcast i32* %290 to i8*
  %292 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %293 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 15
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %297 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 14
  %299 = call i32 @ti_dma_ring_free(%struct.ti_softc* %284, i32* %287, i8* %291, i32 %295, i32* %298)
  %300 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %301 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %302 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 14
  %304 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %305 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 13
  %307 = bitcast i32* %306 to i8*
  %308 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %309 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 13
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %313 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 12
  %315 = call i32 @ti_dma_ring_free(%struct.ti_softc* %300, i32* %303, i8* %307, i32 %311, i32* %314)
  %316 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %317 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %318 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 12
  %320 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %321 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 11
  %323 = bitcast i32* %322 to i8*
  %324 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %325 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 11
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %329 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 10
  %331 = call i32 @ti_dma_ring_free(%struct.ti_softc* %316, i32* %319, i8* %323, i32 %327, i32* %330)
  %332 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %333 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %334 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 10
  %336 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %337 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 9
  %339 = bitcast i32* %338 to i8*
  %340 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %341 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %345 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 8
  %347 = call i32 @ti_dma_ring_free(%struct.ti_softc* %332, i32* %335, i8* %339, i32 %343, i32* %346)
  %348 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %349 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %350 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 8
  %352 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %353 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 7
  %355 = bitcast i32* %354 to i8*
  %356 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %357 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 7
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %361 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 6
  %363 = call i32 @ti_dma_ring_free(%struct.ti_softc* %348, i32* %351, i8* %355, i32 %359, i32* %362)
  %364 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %365 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %366 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 6
  %368 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %369 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 5
  %371 = bitcast i32* %370 to i8*
  %372 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %373 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %377 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 4
  %379 = call i32 @ti_dma_ring_free(%struct.ti_softc* %364, i32* %367, i8* %371, i32 %375, i32* %378)
  %380 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %381 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %382 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 4
  %384 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %385 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 3
  %387 = bitcast i32* %386 to i8*
  %388 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %389 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %393 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 2
  %395 = call i32 @ti_dma_ring_free(%struct.ti_softc* %380, i32* %383, i8* %387, i32 %391, i32* %394)
  %396 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %397 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %398 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 2
  %400 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %401 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 1
  %403 = bitcast i32* %402 to i8*
  %404 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %405 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %409 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 0
  %411 = call i32 @ti_dma_ring_free(%struct.ti_softc* %396, i32* %399, i8* %403, i32 %407, i32* %410)
  %412 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %413 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %417, label %426

417:                                              ; preds = %283
  %418 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %419 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 @bus_dma_tag_destroy(i32* %421)
  %423 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %424 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 0
  store i32* null, i32** %425, align 8
  br label %426

426:                                              ; preds = %417, %283
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @ti_dma_ring_free(%struct.ti_softc*, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
