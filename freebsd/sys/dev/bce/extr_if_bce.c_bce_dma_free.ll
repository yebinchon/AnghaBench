; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i64, i64, i32, i64*, i32, i64*, i32, i64*, i32, i64*, i32*, i32*, i32**, i32*, i32**, i32*, i32**, i32*, i32**, i32**, i32*, i32**, i32**, i32*, i32**, i32**, i32*, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_VERBOSE_UNLOAD = common dso_local global i32 0, align 4
@BCE_VERBOSE_CTX = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@bce_hdr_split = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MAX_TX_BD_AVAIL = common dso_local global i32 0, align 4
@MAX_RX_BD_AVAIL = common dso_local global i32 0, align 4
@MAX_PG_BD_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_dma_free(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %5 = load i32, i32* @BCE_VERBOSE_UNLOAD, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @DBENTER(i32 %8)
  %10 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %15, i32 0, i32 32
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %18, i32 0, i32 34
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @bus_dmamap_unload(i32* %17, i32* %20)
  %22 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %26 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %25, i32 0, i32 33
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %30, i32 0, i32 32
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %33, i32 0, i32 33
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %37 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %36, i32 0, i32 34
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @bus_dmamem_free(i32* %32, i32* %35, i32* %38)
  %40 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %40, i32 0, i32 33
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %29, %24
  %43 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %43, i32 0, i32 32
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %48, i32 0, i32 32
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_dma_tag_destroy(i32* %50)
  %52 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %52, i32 0, i32 32
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %56 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %60, i32 0, i32 29
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %64 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %63, i32 0, i32 31
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_dmamap_unload(i32* %62, i32* %65)
  %67 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %68 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %71 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %70, i32 0, i32 30
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %76 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %75, i32 0, i32 29
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %79 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %78, i32 0, i32 30
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %81, i32 0, i32 31
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @bus_dmamem_free(i32* %77, i32* %80, i32* %83)
  %85 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %86 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %85, i32 0, i32 30
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %74, %69
  %88 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %89 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %88, i32 0, i32 29
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %93, i32 0, i32 29
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @bus_dma_tag_destroy(i32* %95)
  %97 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %98 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %97, i32 0, i32 29
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %101 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %100)
  %102 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %189

104:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %173, %104
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %176

111:                                              ; preds = %105
  %112 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %113 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %111
  %121 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %121, i32 0, i32 26
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %125 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %124, i32 0, i32 28
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @bus_dmamap_unload(i32* %123, i32* %130)
  %132 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %133 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %132, i32 0, i32 3
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %120, %111
  %139 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %140 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %139, i32 0, i32 27
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %172

147:                                              ; preds = %138
  %148 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %149 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %148, i32 0, i32 26
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %152 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %151, i32 0, i32 27
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %159 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %158, i32 0, i32 28
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @bus_dmamem_free(i32* %150, i32* %157, i32* %164)
  %166 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %167 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %166, i32 0, i32 27
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  store i32* null, i32** %171, align 8
  br label %172

172:                                              ; preds = %147, %138
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %105

176:                                              ; preds = %105
  %177 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %178 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %177, i32 0, i32 26
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %183 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %182, i32 0, i32 26
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @bus_dma_tag_destroy(i32* %184)
  %186 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %187 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %186, i32 0, i32 26
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %181, %176
  br label %189

189:                                              ; preds = %188, %99
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %258, %189
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %193 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %261

196:                                              ; preds = %190
  %197 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %198 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %197, i32 0, i32 5
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %196
  %206 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %207 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %206, i32 0, i32 23
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %210 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %209, i32 0, i32 25
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @bus_dmamap_unload(i32* %208, i32* %215)
  %217 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %218 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %217, i32 0, i32 5
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64 0, i64* %222, align 8
  br label %223

223:                                              ; preds = %205, %196
  %224 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %225 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %224, i32 0, i32 24
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %257

232:                                              ; preds = %223
  %233 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %234 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %233, i32 0, i32 23
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %237 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %236, i32 0, i32 24
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %244 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %243, i32 0, i32 25
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @bus_dmamem_free(i32* %235, i32* %242, i32* %249)
  %251 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %252 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %251, i32 0, i32 24
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  store i32* null, i32** %256, align 8
  br label %257

257:                                              ; preds = %232, %223
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %3, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %3, align 4
  br label %190

261:                                              ; preds = %190
  %262 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %263 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %262, i32 0, i32 23
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %268 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %267, i32 0, i32 23
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @bus_dma_tag_destroy(i32* %269)
  %271 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %272 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %271, i32 0, i32 23
  store i32* null, i32** %272, align 8
  br label %273

273:                                              ; preds = %266, %261
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %342, %273
  %275 = load i32, i32* %3, align 4
  %276 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %277 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %345

280:                                              ; preds = %274
  %281 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %282 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %281, i32 0, i32 7
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %3, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %280
  %290 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %291 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %290, i32 0, i32 20
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %294 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %293, i32 0, i32 22
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = call i32 @bus_dmamap_unload(i32* %292, i32* %299)
  %301 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %302 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %301, i32 0, i32 7
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %3, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  store i64 0, i64* %306, align 8
  br label %307

307:                                              ; preds = %289, %280
  %308 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %309 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %308, i32 0, i32 21
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %341

316:                                              ; preds = %307
  %317 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %318 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %317, i32 0, i32 20
  %319 = load i32*, i32** %318, align 8
  %320 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %321 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %320, i32 0, i32 21
  %322 = load i32**, i32*** %321, align 8
  %323 = load i32, i32* %3, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32*, i32** %322, i64 %324
  %326 = load i32*, i32** %325, align 8
  %327 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %328 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %327, i32 0, i32 22
  %329 = load i32**, i32*** %328, align 8
  %330 = load i32, i32* %3, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32*, i32** %329, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = call i32 @bus_dmamem_free(i32* %319, i32* %326, i32* %333)
  %335 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %336 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %335, i32 0, i32 21
  %337 = load i32**, i32*** %336, align 8
  %338 = load i32, i32* %3, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32*, i32** %337, i64 %339
  store i32* null, i32** %340, align 8
  br label %341

341:                                              ; preds = %316, %307
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %3, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %3, align 4
  br label %274

345:                                              ; preds = %274
  %346 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %347 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %346, i32 0, i32 20
  %348 = load i32*, i32** %347, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %357

350:                                              ; preds = %345
  %351 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %352 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %351, i32 0, i32 20
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @bus_dma_tag_destroy(i32* %353)
  %355 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %356 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %355, i32 0, i32 20
  store i32* null, i32** %356, align 8
  br label %357

357:                                              ; preds = %350, %345
  %358 = load i64, i64* @bce_hdr_split, align 8
  %359 = load i64, i64* @TRUE, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %446

361:                                              ; preds = %357
  store i32 0, i32* %3, align 4
  br label %362

362:                                              ; preds = %430, %361
  %363 = load i32, i32* %3, align 4
  %364 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %365 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %364, i32 0, i32 8
  %366 = load i32, i32* %365, align 8
  %367 = icmp slt i32 %363, %366
  br i1 %367, label %368, label %433

368:                                              ; preds = %362
  %369 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %370 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %369, i32 0, i32 9
  %371 = load i64*, i64** %370, align 8
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %395

377:                                              ; preds = %368
  %378 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %379 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %378, i32 0, i32 17
  %380 = load i32*, i32** %379, align 8
  %381 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %382 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %381, i32 0, i32 19
  %383 = load i32**, i32*** %382, align 8
  %384 = load i32, i32* %3, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32*, i32** %383, i64 %385
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @bus_dmamap_unload(i32* %380, i32* %387)
  %389 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %390 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %389, i32 0, i32 9
  %391 = load i64*, i64** %390, align 8
  %392 = load i32, i32* %3, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64, i64* %391, i64 %393
  store i64 0, i64* %394, align 8
  br label %395

395:                                              ; preds = %377, %368
  %396 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %397 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %396, i32 0, i32 18
  %398 = load i32**, i32*** %397, align 8
  %399 = load i32, i32* %3, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32*, i32** %398, i64 %400
  %402 = load i32*, i32** %401, align 8
  %403 = icmp ne i32* %402, null
  br i1 %403, label %404, label %429

404:                                              ; preds = %395
  %405 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %406 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %405, i32 0, i32 17
  %407 = load i32*, i32** %406, align 8
  %408 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %409 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %408, i32 0, i32 18
  %410 = load i32**, i32*** %409, align 8
  %411 = load i32, i32* %3, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32*, i32** %410, i64 %412
  %414 = load i32*, i32** %413, align 8
  %415 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %416 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %415, i32 0, i32 19
  %417 = load i32**, i32*** %416, align 8
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32*, i32** %417, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = call i32 @bus_dmamem_free(i32* %407, i32* %414, i32* %421)
  %423 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %424 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %423, i32 0, i32 18
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %3, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32*, i32** %425, i64 %427
  store i32* null, i32** %428, align 8
  br label %429

429:                                              ; preds = %404, %395
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %3, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %3, align 4
  br label %362

433:                                              ; preds = %362
  %434 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %435 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %434, i32 0, i32 17
  %436 = load i32*, i32** %435, align 8
  %437 = icmp ne i32* %436, null
  br i1 %437, label %438, label %445

438:                                              ; preds = %433
  %439 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %440 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %439, i32 0, i32 17
  %441 = load i32*, i32** %440, align 8
  %442 = call i32 @bus_dma_tag_destroy(i32* %441)
  %443 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %444 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %443, i32 0, i32 17
  store i32* null, i32** %444, align 8
  br label %445

445:                                              ; preds = %438, %433
  br label %446

446:                                              ; preds = %445, %357
  store i32 0, i32* %3, align 4
  br label %447

447:                                              ; preds = %490, %446
  %448 = load i32, i32* %3, align 4
  %449 = load i32, i32* @MAX_TX_BD_AVAIL, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %493

451:                                              ; preds = %447
  %452 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %453 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %452, i32 0, i32 16
  %454 = load i32**, i32*** %453, align 8
  %455 = load i32, i32* %3, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = icmp ne i32* %458, null
  br i1 %459, label %460, label %489

460:                                              ; preds = %451
  %461 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %462 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %461, i32 0, i32 15
  %463 = load i32*, i32** %462, align 8
  %464 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %465 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %464, i32 0, i32 16
  %466 = load i32**, i32*** %465, align 8
  %467 = load i32, i32* %3, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32*, i32** %466, i64 %468
  %470 = load i32*, i32** %469, align 8
  %471 = call i32 @bus_dmamap_unload(i32* %463, i32* %470)
  %472 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %473 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %472, i32 0, i32 15
  %474 = load i32*, i32** %473, align 8
  %475 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %476 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %475, i32 0, i32 16
  %477 = load i32**, i32*** %476, align 8
  %478 = load i32, i32* %3, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32*, i32** %477, i64 %479
  %481 = load i32*, i32** %480, align 8
  %482 = call i32 @bus_dmamap_destroy(i32* %474, i32* %481)
  %483 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %484 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %483, i32 0, i32 16
  %485 = load i32**, i32*** %484, align 8
  %486 = load i32, i32* %3, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32*, i32** %485, i64 %487
  store i32* null, i32** %488, align 8
  br label %489

489:                                              ; preds = %460, %451
  br label %490

490:                                              ; preds = %489
  %491 = load i32, i32* %3, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %3, align 4
  br label %447

493:                                              ; preds = %447
  %494 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %495 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %494, i32 0, i32 15
  %496 = load i32*, i32** %495, align 8
  %497 = icmp ne i32* %496, null
  br i1 %497, label %498, label %505

498:                                              ; preds = %493
  %499 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %500 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %499, i32 0, i32 15
  %501 = load i32*, i32** %500, align 8
  %502 = call i32 @bus_dma_tag_destroy(i32* %501)
  %503 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %504 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %503, i32 0, i32 15
  store i32* null, i32** %504, align 8
  br label %505

505:                                              ; preds = %498, %493
  store i32 0, i32* %3, align 4
  br label %506

506:                                              ; preds = %549, %505
  %507 = load i32, i32* %3, align 4
  %508 = load i32, i32* @MAX_RX_BD_AVAIL, align 4
  %509 = icmp slt i32 %507, %508
  br i1 %509, label %510, label %552

510:                                              ; preds = %506
  %511 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %512 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %511, i32 0, i32 14
  %513 = load i32**, i32*** %512, align 8
  %514 = load i32, i32* %3, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32*, i32** %513, i64 %515
  %517 = load i32*, i32** %516, align 8
  %518 = icmp ne i32* %517, null
  br i1 %518, label %519, label %548

519:                                              ; preds = %510
  %520 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %521 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %520, i32 0, i32 13
  %522 = load i32*, i32** %521, align 8
  %523 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %524 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %523, i32 0, i32 14
  %525 = load i32**, i32*** %524, align 8
  %526 = load i32, i32* %3, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32*, i32** %525, i64 %527
  %529 = load i32*, i32** %528, align 8
  %530 = call i32 @bus_dmamap_unload(i32* %522, i32* %529)
  %531 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %532 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %531, i32 0, i32 13
  %533 = load i32*, i32** %532, align 8
  %534 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %535 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %534, i32 0, i32 14
  %536 = load i32**, i32*** %535, align 8
  %537 = load i32, i32* %3, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32*, i32** %536, i64 %538
  %540 = load i32*, i32** %539, align 8
  %541 = call i32 @bus_dmamap_destroy(i32* %533, i32* %540)
  %542 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %543 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %542, i32 0, i32 14
  %544 = load i32**, i32*** %543, align 8
  %545 = load i32, i32* %3, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32*, i32** %544, i64 %546
  store i32* null, i32** %547, align 8
  br label %548

548:                                              ; preds = %519, %510
  br label %549

549:                                              ; preds = %548
  %550 = load i32, i32* %3, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %3, align 4
  br label %506

552:                                              ; preds = %506
  %553 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %554 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %553, i32 0, i32 13
  %555 = load i32*, i32** %554, align 8
  %556 = icmp ne i32* %555, null
  br i1 %556, label %557, label %564

557:                                              ; preds = %552
  %558 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %559 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %558, i32 0, i32 13
  %560 = load i32*, i32** %559, align 8
  %561 = call i32 @bus_dma_tag_destroy(i32* %560)
  %562 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %563 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %562, i32 0, i32 13
  store i32* null, i32** %563, align 8
  br label %564

564:                                              ; preds = %557, %552
  %565 = load i64, i64* @bce_hdr_split, align 8
  %566 = load i64, i64* @TRUE, align 8
  %567 = icmp eq i64 %565, %566
  br i1 %567, label %568, label %628

568:                                              ; preds = %564
  store i32 0, i32* %3, align 4
  br label %569

569:                                              ; preds = %612, %568
  %570 = load i32, i32* %3, align 4
  %571 = load i32, i32* @MAX_PG_BD_AVAIL, align 4
  %572 = icmp slt i32 %570, %571
  br i1 %572, label %573, label %615

573:                                              ; preds = %569
  %574 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %575 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %574, i32 0, i32 12
  %576 = load i32**, i32*** %575, align 8
  %577 = load i32, i32* %3, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32*, i32** %576, i64 %578
  %580 = load i32*, i32** %579, align 8
  %581 = icmp ne i32* %580, null
  br i1 %581, label %582, label %611

582:                                              ; preds = %573
  %583 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %584 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %583, i32 0, i32 11
  %585 = load i32*, i32** %584, align 8
  %586 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %587 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %586, i32 0, i32 12
  %588 = load i32**, i32*** %587, align 8
  %589 = load i32, i32* %3, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32*, i32** %588, i64 %590
  %592 = load i32*, i32** %591, align 8
  %593 = call i32 @bus_dmamap_unload(i32* %585, i32* %592)
  %594 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %595 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %594, i32 0, i32 11
  %596 = load i32*, i32** %595, align 8
  %597 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %598 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %597, i32 0, i32 12
  %599 = load i32**, i32*** %598, align 8
  %600 = load i32, i32* %3, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32*, i32** %599, i64 %601
  %603 = load i32*, i32** %602, align 8
  %604 = call i32 @bus_dmamap_destroy(i32* %596, i32* %603)
  %605 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %606 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %605, i32 0, i32 12
  %607 = load i32**, i32*** %606, align 8
  %608 = load i32, i32* %3, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32*, i32** %607, i64 %609
  store i32* null, i32** %610, align 8
  br label %611

611:                                              ; preds = %582, %573
  br label %612

612:                                              ; preds = %611
  %613 = load i32, i32* %3, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %3, align 4
  br label %569

615:                                              ; preds = %569
  %616 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %617 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %616, i32 0, i32 11
  %618 = load i32*, i32** %617, align 8
  %619 = icmp ne i32* %618, null
  br i1 %619, label %620, label %627

620:                                              ; preds = %615
  %621 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %622 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %621, i32 0, i32 11
  %623 = load i32*, i32** %622, align 8
  %624 = call i32 @bus_dma_tag_destroy(i32* %623)
  %625 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %626 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %625, i32 0, i32 11
  store i32* null, i32** %626, align 8
  br label %627

627:                                              ; preds = %620, %615
  br label %628

628:                                              ; preds = %627, %564
  %629 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %630 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %629, i32 0, i32 10
  %631 = load i32*, i32** %630, align 8
  %632 = icmp ne i32* %631, null
  br i1 %632, label %633, label %640

633:                                              ; preds = %628
  %634 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %635 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %634, i32 0, i32 10
  %636 = load i32*, i32** %635, align 8
  %637 = call i32 @bus_dma_tag_destroy(i32* %636)
  %638 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %639 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %638, i32 0, i32 10
  store i32* null, i32** %639, align 8
  br label %640

640:                                              ; preds = %633, %628
  %641 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %642 = load i32, i32* @BCE_VERBOSE_UNLOAD, align 4
  %643 = or i32 %641, %642
  %644 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %645 = or i32 %643, %644
  %646 = call i32 @DBEXIT(i32 %645)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
