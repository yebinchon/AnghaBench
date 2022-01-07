; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_free_qset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_free_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.sge_qset = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__*, i32, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i64, i32, i32*, i32* }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i64, i32 }

@TXQ_ETH = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@SGE_RXQ_PER_SET = common dso_local global i32 0, align 4
@SGE_TXQ_PER_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.sge_qset*)* @t3_free_qset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_free_qset(%struct.TYPE_17__* %0, %struct.sge_qset* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %4, align 8
  %6 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %7 = load i64, i64* @TXQ_ETH, align 8
  %8 = call i32 @reclaim_completed_tx(%struct.sge_qset* %6, i32 0, i64 %7)
  %9 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %10 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %9, i32 0, i32 2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = load i64, i64* @TXQ_ETH, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %19 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = load i64, i64* @TXQ_ETH, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @buf_ring_free(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %29 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %28, i32 0, i32 2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load i64, i64* @TXQ_ETH, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %27
  %37 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %38 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = load i64, i64* @TXQ_ETH, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ifq_delete(i32* %43)
  %45 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %46 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i64, i64* @TXQ_ETH, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @M_DEVBUF, align 4
  %53 = call i32 @free(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %36, %27
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %178, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SGE_RXQ_PER_SET, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %181

59:                                               ; preds = %55
  %60 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %61 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %60, i32 0, i32 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %148

69:                                               ; preds = %59
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = call i32 @mtx_lock_spin(i32* %72)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %76 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %75, i32 0, i32 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @t3_sge_disable_fl(%struct.TYPE_17__* %74, i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = call i32 @mtx_unlock_spin(i32* %86)
  %88 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %89 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %88, i32 0, i32 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %97 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %96, i32 0, i32 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bus_dmamap_unload(i32 %95, i32 %103)
  %105 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %106 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %105, i32 0, i32 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %114 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %113, i32 0, i32 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %122 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %121, i32 0, i32 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bus_dmamem_free(i32 %112, i64 %120, i32 %128)
  %130 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %131 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %130, i32 0, i32 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @bus_dma_tag_destroy(i32 %137)
  %139 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %140 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %139, i32 0, i32 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @bus_dma_tag_destroy(i32 %146)
  br label %148

148:                                              ; preds = %69, %59
  %149 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %150 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %149, i32 0, i32 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %177

158:                                              ; preds = %148
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %160 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %161 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %160, i32 0, i32 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %164
  %166 = call i32 @free_rx_bufs(%struct.TYPE_17__* %159, %struct.TYPE_12__* %165)
  %167 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %168 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %167, i32 0, i32 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @M_DEVBUF, align 4
  %176 = call i32 @free(i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %158, %148
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %55

181:                                              ; preds = %55
  %182 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %183 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %182, i32 0, i32 3
  %184 = call i32 @mtx_unlock(i32* %183)
  %185 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %186 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %185, i32 0, i32 3
  %187 = call i32 @MTX_DESTROY(i32* %186)
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %303, %181
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @SGE_TXQ_PER_SET, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %306

192:                                              ; preds = %188
  %193 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %194 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %193, i32 0, i32 2
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %281

202:                                              ; preds = %192
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = call i32 @mtx_lock_spin(i32* %205)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %208 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %209 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %208, i32 0, i32 2
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @t3_sge_enable_ecntxt(%struct.TYPE_17__* %207, i32 %215, i32 0)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = call i32 @mtx_unlock_spin(i32* %219)
  %221 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %222 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %221, i32 0, i32 2
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %230 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %229, i32 0, i32 2
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @bus_dmamap_unload(i32 %228, i32 %236)
  %238 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %239 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %238, i32 0, i32 2
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = load i32, i32* %5, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %247 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %246, i32 0, i32 2
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 4
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %255 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %254, i32 0, i32 2
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @bus_dmamem_free(i32 %245, i64 %253, i32 %261)
  %263 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %264 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %263, i32 0, i32 2
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @bus_dma_tag_destroy(i32 %270)
  %272 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %273 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %272, i32 0, i32 2
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @bus_dma_tag_destroy(i32 %279)
  br label %281

281:                                              ; preds = %202, %192
  %282 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %283 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %282, i32 0, i32 2
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %302

291:                                              ; preds = %281
  %292 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %293 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %292, i32 0, i32 2
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* @M_DEVBUF, align 4
  %301 = call i32 @free(i32* %299, i32 %300)
  br label %302

302:                                              ; preds = %291, %281
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %5, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %5, align 4
  br label %188

306:                                              ; preds = %188
  %307 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %308 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %358

312:                                              ; preds = %306
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = call i32 @mtx_lock_spin(i32* %315)
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %318 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %319 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @t3_sge_disable_rspcntxt(%struct.TYPE_17__* %317, i32 %321)
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 0
  %326 = call i32 @mtx_unlock_spin(i32* %325)
  %327 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %328 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %332 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @bus_dmamap_unload(i32 %330, i32 %334)
  %336 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %337 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %341 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %345 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @bus_dmamem_free(i32 %339, i64 %343, i32 %347)
  %349 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %350 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @bus_dma_tag_destroy(i32 %352)
  %354 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %355 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = call i32 @MTX_DESTROY(i32* %356)
  br label %358

358:                                              ; preds = %312, %306
  %359 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %360 = call i32 @bzero(%struct.sge_qset* %359, i32 64)
  ret void
}

declare dso_local i32 @reclaim_completed_tx(%struct.sge_qset*, i32, i64) #1

declare dso_local i32 @buf_ring_free(i32*, i32) #1

declare dso_local i32 @ifq_delete(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @t3_sge_disable_fl(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free_rx_bufs(%struct.TYPE_17__*, %struct.TYPE_12__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @MTX_DESTROY(i32*) #1

declare dso_local i32 @t3_sge_enable_ecntxt(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @t3_sge_disable_rspcntxt(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bzero(%struct.sge_qset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
