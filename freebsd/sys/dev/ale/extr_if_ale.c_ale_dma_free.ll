; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32*, i32*, i32*, i32*, i32, %struct.TYPE_4__*, i32*, i32*, i32, i32*, %struct.ale_txdesc* }
%struct.TYPE_4__ = type { i64, i64, i32*, i32*, i32, i32*, i32*, i32 }
%struct.ale_txdesc = type { i32* }

@ALE_TX_RING_CNT = common dso_local global i32 0, align 4
@ALE_RX_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_dma_free(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ale_txdesc*, align 8
  %4 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %5 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 11
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ALE_TX_RING_CNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 12
  %19 = load %struct.ale_txdesc*, %struct.ale_txdesc** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %19, i64 %21
  store %struct.ale_txdesc* %22, %struct.ale_txdesc** %3, align 8
  %23 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %24 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 11
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %33 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_dmamap_destroy(i32* %31, i32* %34)
  %36 = load %struct.ale_txdesc*, %struct.ale_txdesc** %3, align 8
  %37 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %27, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 11
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_dma_tag_destroy(i32* %46)
  %48 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 11
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %42, %1
  %52 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %108

57:                                               ; preds = %51
  %58 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bus_dmamap_unload(i32* %67, i32 %71)
  br label %73

73:                                               ; preds = %63, %57
  %74 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 9
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @bus_dmamem_free(i32* %83, i32* %87, i32 %91)
  br label %93

93:                                               ; preds = %79, %73
  %94 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %95 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 9
  store i32* null, i32** %99, align 8
  %100 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 8
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @bus_dma_tag_destroy(i32* %103)
  %105 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 8
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %93, %51
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %231, %108
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @ALE_RX_PAGES, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %234

113:                                              ; preds = %109
  %114 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %230

124:                                              ; preds = %113
  %125 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %124
  %136 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %137 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %146 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @bus_dmamap_unload(i32* %144, i32 %153)
  br label %155

155:                                              ; preds = %135, %124
  %156 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %157 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %195

166:                                              ; preds = %155
  %167 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %177 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 7
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %186 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 7
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @bus_dmamem_free(i32* %175, i32* %184, i32 %193)
  br label %195

195:                                              ; preds = %166, %155
  %196 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %197 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 7
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  %204 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %205 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 6
  store i32* null, i32** %211, align 8
  %212 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %213 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @bus_dma_tag_destroy(i32* %220)
  %222 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %223 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 7
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 5
  store i32* null, i32** %229, align 8
  br label %230

230:                                              ; preds = %195, %113
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %4, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %4, align 4
  br label %109

234:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %235

235:                                              ; preds = %357, %234
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @ALE_RX_PAGES, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %360

239:                                              ; preds = %235
  %240 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %241 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 7
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %356

250:                                              ; preds = %239
  %251 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %252 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 7
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %281

261:                                              ; preds = %250
  %262 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %263 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 7
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %272 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 7
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @bus_dmamap_unload(i32* %270, i32 %279)
  br label %281

281:                                              ; preds = %261, %250
  %282 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %283 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 7
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %321

292:                                              ; preds = %281
  %293 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %294 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 7
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %303 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 7
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 3
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %312 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 7
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @bus_dmamem_free(i32* %301, i32* %310, i32 %319)
  br label %321

321:                                              ; preds = %292, %281
  %322 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %323 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 7
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = load i32, i32* %4, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 1
  store i64 0, i64* %329, align 8
  %330 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %331 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 7
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %332, align 8
  %334 = load i32, i32* %4, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 3
  store i32* null, i32** %337, align 8
  %338 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %339 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 7
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %340, align 8
  %342 = load i32, i32* %4, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = call i32 @bus_dma_tag_destroy(i32* %346)
  %348 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %349 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 7
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 2
  store i32* null, i32** %355, align 8
  br label %356

356:                                              ; preds = %321, %239
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %4, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %4, align 4
  br label %235

360:                                              ; preds = %235
  %361 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %362 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 4
  %364 = load i32*, i32** %363, align 8
  %365 = icmp ne i32* %364, null
  br i1 %365, label %366, label %417

366:                                              ; preds = %360
  %367 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %368 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %382

372:                                              ; preds = %366
  %373 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %374 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %378 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @bus_dmamap_unload(i32* %376, i32 %380)
  br label %382

382:                                              ; preds = %372, %366
  %383 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %384 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 5
  %386 = load i32*, i32** %385, align 8
  %387 = icmp ne i32* %386, null
  br i1 %387, label %388, label %402

388:                                              ; preds = %382
  %389 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %390 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 4
  %392 = load i32*, i32** %391, align 8
  %393 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %394 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 5
  %396 = load i32*, i32** %395, align 8
  %397 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %398 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @bus_dmamem_free(i32* %392, i32* %396, i32 %400)
  br label %402

402:                                              ; preds = %388, %382
  %403 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %404 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 1
  store i64 0, i64* %405, align 8
  %406 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %407 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 5
  store i32* null, i32** %408, align 8
  %409 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %410 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 4
  %412 = load i32*, i32** %411, align 8
  %413 = call i32 @bus_dma_tag_destroy(i32* %412)
  %414 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %415 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 4
  store i32* null, i32** %416, align 8
  br label %417

417:                                              ; preds = %402, %360
  %418 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %419 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 3
  %421 = load i32*, i32** %420, align 8
  %422 = icmp ne i32* %421, null
  br i1 %422, label %423, label %432

423:                                              ; preds = %417
  %424 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %425 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i32 0, i32 3
  %427 = load i32*, i32** %426, align 8
  %428 = call i32 @bus_dma_tag_destroy(i32* %427)
  %429 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %430 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 3
  store i32* null, i32** %431, align 8
  br label %432

432:                                              ; preds = %423, %417
  %433 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %434 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 2
  %436 = load i32*, i32** %435, align 8
  %437 = icmp ne i32* %436, null
  br i1 %437, label %438, label %447

438:                                              ; preds = %432
  %439 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %440 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 2
  %442 = load i32*, i32** %441, align 8
  %443 = call i32 @bus_dma_tag_destroy(i32* %442)
  %444 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %445 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 2
  store i32* null, i32** %446, align 8
  br label %447

447:                                              ; preds = %438, %432
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
