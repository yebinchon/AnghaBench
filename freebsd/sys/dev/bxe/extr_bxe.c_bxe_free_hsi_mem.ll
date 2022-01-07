; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_hsi_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_free_hsi_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, %struct.bxe_fastpath* }
%struct.bxe_fastpath = type { i32*, i32*, %struct.TYPE_10__*, i32*, i32*, %struct.TYPE_9__*, i32*, %struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@TX_BD_TOTAL = common dso_local global i32 0, align 4
@RX_BD_TOTAL = common dso_local global i32 0, align 4
@RX_SGE_TOTAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_free_hsi_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_free_hsi_mem(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_fastpath*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %381

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %334, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %337

19:                                               ; preds = %13
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 13
  %22 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %22, i64 %24
  store %struct.bxe_fastpath* %25, %struct.bxe_fastpath** %3, align 8
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %28 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %27, i32 0, i32 19
  %29 = call i32 @bxe_dma_free(%struct.bxe_softc* %26, i32* %28)
  %30 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %31 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %30, i32 0, i32 18
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %35 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %34, i32 0, i32 17
  %36 = call i32 @bxe_dma_free(%struct.bxe_softc* %33, i32* %35)
  %37 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %38 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %37, i32 0, i32 16
  store i32* null, i32** %38, align 8
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %41 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %40, i32 0, i32 15
  %42 = call i32 @bxe_dma_free(%struct.bxe_softc* %39, i32* %41)
  %43 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %44 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %43, i32 0, i32 14
  store i32* null, i32** %44, align 8
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %47 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %46, i32 0, i32 13
  %48 = call i32 @bxe_dma_free(%struct.bxe_softc* %45, i32* %47)
  %49 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %50 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %49, i32 0, i32 12
  store i32* null, i32** %50, align 8
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %52 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %53 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %52, i32 0, i32 11
  %54 = call i32 @bxe_dma_free(%struct.bxe_softc* %51, i32* %53)
  %55 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %56 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %55, i32 0, i32 10
  store i32* null, i32** %56, align 8
  %57 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %58 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %112

61:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %102, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @TX_BD_TOTAL, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %62
  %67 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %68 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %67, i32 0, i32 9
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %66
  %77 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %78 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %81 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %80, i32 0, i32 9
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @bus_dmamap_unload(i32* %79, i32* %87)
  %89 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %90 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %93 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %92, i32 0, i32 9
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @bus_dmamap_destroy(i32* %91, i32* %99)
  br label %101

101:                                              ; preds = %76, %66
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %62

105:                                              ; preds = %62
  %106 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %107 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %106, i32 0, i32 8
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @bus_dma_tag_destroy(i32* %108)
  %110 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %111 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %110, i32 0, i32 8
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %105, %19
  %113 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %114 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %257

117:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %158, %117
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @RX_BD_TOTAL, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %118
  %123 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %124 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %123, i32 0, i32 7
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %157

132:                                              ; preds = %122
  %133 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %134 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %137 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %136, i32 0, i32 7
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @bus_dmamap_unload(i32* %135, i32* %143)
  %145 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %146 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %149 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %148, i32 0, i32 7
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @bus_dmamap_destroy(i32* %147, i32* %155)
  br label %157

157:                                              ; preds = %132, %122
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %118

161:                                              ; preds = %118
  %162 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %163 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %181

166:                                              ; preds = %161
  %167 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %168 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %171 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @bus_dmamap_unload(i32* %169, i32* %172)
  %174 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %175 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %178 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @bus_dmamap_destroy(i32* %176, i32* %179)
  br label %181

181:                                              ; preds = %166, %161
  %182 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %183 = call i32 @MAX_AGG_QS(%struct.bxe_softc* %182)
  store i32 %183, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %227, %181
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %230

188:                                              ; preds = %184
  %189 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %190 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %189, i32 0, i32 5
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %226

199:                                              ; preds = %188
  %200 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %201 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %204 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %203, i32 0, i32 5
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @bus_dmamap_unload(i32* %202, i32* %211)
  %213 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %214 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %217 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %216, i32 0, i32 5
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @bus_dmamap_destroy(i32* %215, i32* %224)
  br label %226

226:                                              ; preds = %199, %188
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %184

230:                                              ; preds = %184
  %231 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %232 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %250

235:                                              ; preds = %230
  %236 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %237 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %240 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @bus_dmamap_unload(i32* %238, i32* %241)
  %243 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %244 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %247 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %246, i32 0, i32 4
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @bus_dmamap_destroy(i32* %245, i32* %248)
  br label %250

250:                                              ; preds = %235, %230
  %251 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %252 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @bus_dma_tag_destroy(i32* %253)
  %255 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %256 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %255, i32 0, i32 3
  store i32* null, i32** %256, align 8
  br label %257

257:                                              ; preds = %250, %112
  %258 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %259 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %333

262:                                              ; preds = %257
  store i32 0, i32* %6, align 4
  br label %263

263:                                              ; preds = %303, %262
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @RX_SGE_TOTAL, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %306

267:                                              ; preds = %263
  %268 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %269 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %268, i32 0, i32 2
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %302

277:                                              ; preds = %267
  %278 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %279 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %282 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %281, i32 0, i32 2
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call i32 @bus_dmamap_unload(i32* %280, i32* %288)
  %290 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %291 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %294 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %293, i32 0, i32 2
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @bus_dmamap_destroy(i32* %292, i32* %300)
  br label %302

302:                                              ; preds = %277, %267
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %6, align 4
  br label %263

306:                                              ; preds = %263
  %307 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %308 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %326

311:                                              ; preds = %306
  %312 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %313 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %316 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @bus_dmamap_unload(i32* %314, i32* %317)
  %319 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %320 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %323 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = call i32 @bus_dmamap_destroy(i32* %321, i32* %324)
  br label %326

326:                                              ; preds = %311, %306
  %327 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %328 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @bus_dma_tag_destroy(i32* %329)
  %331 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %332 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %331, i32 0, i32 0
  store i32* null, i32** %332, align 8
  br label %333

333:                                              ; preds = %326, %257
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %5, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %5, align 4
  br label %13

337:                                              ; preds = %13
  %338 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %339 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %340 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %339, i32 0, i32 12
  %341 = call i32 @bxe_dma_free(%struct.bxe_softc* %338, i32* %340)
  %342 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %343 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %342, i32 0, i32 11
  store i32* null, i32** %343, align 8
  %344 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %345 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %344, i32 0, i32 10
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* @M_DEVBUF, align 4
  %348 = call i32 @free(i32* %346, i32 %347)
  %349 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %350 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %349, i32 0, i32 10
  store i32* null, i32** %350, align 8
  %351 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %352 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %353 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %352, i32 0, i32 9
  %354 = call i32 @bxe_dma_free(%struct.bxe_softc* %351, i32* %353)
  %355 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %356 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %355, i32 0, i32 8
  store i32* null, i32** %356, align 8
  %357 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %358 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %359 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %358, i32 0, i32 7
  %360 = call i32 @bxe_dma_free(%struct.bxe_softc* %357, i32* %359)
  %361 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %362 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %361, i32 0, i32 6
  store i32* null, i32** %362, align 8
  %363 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %364 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %365 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %364, i32 0, i32 5
  %366 = call i32 @bxe_dma_free(%struct.bxe_softc* %363, i32* %365)
  %367 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %368 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %367, i32 0, i32 4
  store i32* null, i32** %368, align 8
  %369 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %370 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %371 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %370, i32 0, i32 3
  %372 = call i32 @bxe_dma_free(%struct.bxe_softc* %369, i32* %371)
  %373 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %374 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %373, i32 0, i32 2
  store i32* null, i32** %374, align 8
  %375 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %376 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = call i32 @bus_dma_tag_destroy(i32* %377)
  %379 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %380 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %379, i32 0, i32 1
  store i32* null, i32** %380, align 8
  br label %381

381:                                              ; preds = %337, %11
  ret void
}

declare dso_local i32 @bxe_dma_free(%struct.bxe_softc*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @MAX_AGG_QS(%struct.bxe_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
