; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i64, i64*, i64, i64*, i64, i64* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@BGE_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@BGE_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@BGE_TX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_dma_free(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 21
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %8
  %19 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 16
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 21
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bus_dmamap_destroy(i64 %22, i64 %30)
  br label %32

32:                                               ; preds = %18, %8
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %4
  %37 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 20
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 16
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 20
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @bus_dmamap_destroy(i64 %46, i64 %50)
  br label %52

52:                                               ; preds = %42, %36
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %82, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %59 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 19
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 15
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %73 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 19
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @bus_dmamap_destroy(i64 %71, i64 %79)
  br label %81

81:                                               ; preds = %67, %57
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %53

85:                                               ; preds = %53
  %86 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 18
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %93 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 15
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %97 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 18
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @bus_dmamap_destroy(i64 %95, i64 %99)
  br label %101

101:                                              ; preds = %91, %85
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @BGE_TX_RING_CNT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 17
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %106
  %117 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %118 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 14
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 17
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @bus_dmamap_destroy(i64 %120, i64 %128)
  br label %130

130:                                              ; preds = %116, %106
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %102

134:                                              ; preds = %102
  %135 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %136 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 16
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %142 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 16
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @bus_dma_tag_destroy(i64 %144)
  br label %146

146:                                              ; preds = %140, %134
  %147 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %148 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 15
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %154 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 15
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @bus_dma_tag_destroy(i64 %156)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %160 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 14
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %166 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 14
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @bus_dma_tag_destroy(i64 %168)
  br label %170

170:                                              ; preds = %164, %158
  %171 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %172 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 11
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %178 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 12
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 13
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @bus_dmamap_unload(i64 %180, i32 %184)
  br label %186

186:                                              ; preds = %176, %170
  %187 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %188 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %194 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 12
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %198 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 10
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %202 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 13
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @bus_dmamem_free(i64 %196, i64 %200, i32 %204)
  br label %206

206:                                              ; preds = %192, %186
  %207 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %208 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 12
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %206
  %213 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %214 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 12
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @bus_dma_tag_destroy(i64 %216)
  br label %218

218:                                              ; preds = %212, %206
  %219 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %220 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 9
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %218
  %225 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %226 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 10
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %230 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @bus_dmamap_unload(i64 %228, i32 %232)
  br label %234

234:                                              ; preds = %224, %218
  %235 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %236 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %242 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 10
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %246 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %250 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 11
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @bus_dmamem_free(i64 %244, i64 %248, i32 %252)
  br label %254

254:                                              ; preds = %240, %234
  %255 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %256 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 10
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %262 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 10
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @bus_dma_tag_destroy(i64 %264)
  br label %266

266:                                              ; preds = %260, %254
  %267 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %268 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 7
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %266
  %273 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %274 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 8
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %278 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @bus_dmamap_unload(i64 %276, i32 %280)
  br label %282

282:                                              ; preds = %272, %266
  %283 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %284 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 6
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %302

288:                                              ; preds = %282
  %289 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %290 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 8
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %294 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %298 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @bus_dmamem_free(i64 %292, i64 %296, i32 %300)
  br label %302

302:                                              ; preds = %288, %282
  %303 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %304 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 8
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %302
  %309 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %310 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 8
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @bus_dma_tag_destroy(i64 %312)
  br label %314

314:                                              ; preds = %308, %302
  %315 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %316 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %314
  %321 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %322 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 6
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %326 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @bus_dmamap_unload(i64 %324, i32 %328)
  br label %330

330:                                              ; preds = %320, %314
  %331 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %332 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %350

336:                                              ; preds = %330
  %337 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %338 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 6
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %342 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %346 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @bus_dmamem_free(i64 %340, i64 %344, i32 %348)
  br label %350

350:                                              ; preds = %336, %330
  %351 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %352 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %350
  %357 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %358 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = call i32 @bus_dma_tag_destroy(i64 %360)
  br label %362

362:                                              ; preds = %356, %350
  %363 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %364 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 3
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %378

368:                                              ; preds = %362
  %369 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %370 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %374 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @bus_dmamap_unload(i64 %372, i32 %376)
  br label %378

378:                                              ; preds = %368, %362
  %379 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %380 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 2
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %378
  %385 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %386 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 4
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %390 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %394 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @bus_dmamem_free(i64 %388, i64 %392, i32 %396)
  br label %398

398:                                              ; preds = %384, %378
  %399 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %400 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 4
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %398
  %405 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %406 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 4
  %408 = load i64, i64* %407, align 8
  %409 = call i32 @bus_dma_tag_destroy(i64 %408)
  br label %410

410:                                              ; preds = %404, %398
  %411 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %412 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %426

416:                                              ; preds = %410
  %417 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %418 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 2
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %422 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @bus_dmamap_unload(i64 %420, i32 %424)
  br label %426

426:                                              ; preds = %416, %410
  %427 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %428 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %446

432:                                              ; preds = %426
  %433 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %434 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 2
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %438 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %442 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @bus_dmamem_free(i64 %436, i64 %440, i32 %444)
  br label %446

446:                                              ; preds = %432, %426
  %447 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %448 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %446
  %453 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %454 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 2
  %456 = load i64, i64* %455, align 8
  %457 = call i32 @bus_dma_tag_destroy(i64 %456)
  br label %458

458:                                              ; preds = %452, %446
  %459 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %460 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %458
  %465 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %466 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 1
  %468 = load i64, i64* %467, align 8
  %469 = call i32 @bus_dma_tag_destroy(i64 %468)
  br label %470

470:                                              ; preds = %464, %458
  %471 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %472 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %482

476:                                              ; preds = %470
  %477 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %478 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @bus_dma_tag_destroy(i64 %480)
  br label %482

482:                                              ; preds = %476, %470
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
