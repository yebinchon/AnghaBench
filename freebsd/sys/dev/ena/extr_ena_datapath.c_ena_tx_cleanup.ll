; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_tx_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_tx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i64*, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.ena_tx_buffer*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.ena_tx_buffer = type { i32, i32, i64, i32, i32, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.ena_adapter* }
%struct.ena_adapter = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32*, %struct.ena_com_io_cq* }
%struct.ena_com_io_cq = type { i32 }

@TX_COMMIT = common dso_local global i32 0, align 4
@TX_BUDGET = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ENA_DBG = common dso_local global i32 0, align 4
@ENA_TXPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tx: q %d mbuf %p completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"tx: q %d done. total pkts: %d\0A\00", align 1
@ENA_TX_RESUME_THRESH = common dso_local global i32 0, align 4
@NM_IRQ_PASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*)* @ena_tx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_tx_cleanup(%struct.ena_ring* %0) #0 {
  %2 = alloca %struct.ena_ring*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_io_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ena_tx_buffer*, align 8
  %15 = alloca %struct.mbuf*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %2, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @TX_COMMIT, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @TX_BUDGET, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %21, align 8
  store %struct.ena_adapter* %22, %struct.ena_adapter** %3, align 8
  %23 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %24 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %23, i32 0, i32 10
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ENA_IO_TXQ_IDX(i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %33, i64 %34
  store %struct.ena_com_io_cq* %35, %struct.ena_com_io_cq** %4, align 8
  %36 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %37 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %170, %1
  %40 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %4, align 8
  %41 = call i32 @ena_com_tx_comp_req_id_get(%struct.ena_com_io_cq* %40, i64* %6)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %175

48:                                               ; preds = %39
  %49 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @validate_tx_req_id(%struct.ena_ring* %49, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %175

58:                                               ; preds = %48
  %59 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %60 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %59, i32 0, i32 9
  %61 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %61, i64 %62
  store %struct.ena_tx_buffer* %63, %struct.ena_tx_buffer** %14, align 8
  %64 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %65 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %64, i32 0, i32 6
  %66 = load %struct.mbuf*, %struct.mbuf** %65, align 8
  store %struct.mbuf* %66, %struct.mbuf** %15, align 8
  %67 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %68 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %67, i32 0, i32 6
  store %struct.mbuf* null, %struct.mbuf** %68, align 8
  %69 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %70 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %69, i32 0, i32 5
  %71 = call i32 @bintime_clear(i32* %70)
  %72 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %73 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %94

76:                                               ; preds = %58
  %77 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %81 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %84 = call i32 @bus_dmamap_sync(i32 %79, i32 %82, i32 %83)
  %85 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %89 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bus_dmamap_unload(i32 %87, i32 %90)
  %92 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %93 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %76, %58
  %95 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %96 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %104 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %107 = call i32 @bus_dmamap_sync(i32 %102, i32 %105, i32 %106)
  %108 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %112 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @bus_dmamap_unload(i32 %110, i32 %113)
  %115 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %116 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %99, %94
  %118 = load i32, i32* @ENA_DBG, align 4
  %119 = load i32, i32* @ENA_TXPTH, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %122 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %125 = ptrtoint %struct.mbuf* %124 to i32
  %126 = call i32 @ena_trace(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %125)
  %127 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %128 = call i32 @m_freem(%struct.mbuf* %127)
  %129 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %130 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %138 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 %136, i64* %141, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %144 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @ENA_TX_RING_IDX_NEXT(i64 %142, i32 %145)
  store i64 %146, i64* %5, align 8
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %10, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %117
  %154 = load i32, i32* @TX_COMMIT, align 4
  store i32 %154, i32* %10, align 4
  %155 = load i64, i64* %5, align 8
  %156 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %157 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %7, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @ena_com_comp_ack(i32* %164, i32 %165)
  %167 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %4, align 8
  %168 = call i32 @ena_com_update_dev_comp_head(%struct.ena_com_io_cq* %167)
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %153, %117
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %11, align 4
  %173 = call i64 @likely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %39, label %175

175:                                              ; preds = %170, %57, %47
  %176 = load i32, i32* @TX_BUDGET, align 4
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* @ENA_DBG, align 4
  %180 = load i32, i32* @ENA_TXPTH, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %183 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @ena_trace(i32 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @TX_COMMIT, align 4
  %189 = icmp ne i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i64 @likely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %175
  %194 = load i64, i64* %5, align 8
  %195 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %196 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %198 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @ena_com_comp_ack(i32* %203, i32 %204)
  %206 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %4, align 8
  %207 = call i32 @ena_com_update_dev_comp_head(%struct.ena_com_io_cq* %206)
  br label %208

208:                                              ; preds = %193, %175
  %209 = call i32 (...) @mb()
  %210 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %211 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ENA_TX_RESUME_THRESH, align 4
  %214 = call i32 @ena_com_sq_have_enough_space(i32 %212, i32 %213)
  store i32 %214, i32* %13, align 4
  %215 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %216 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %208
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br label %222

222:                                              ; preds = %219, %208
  %223 = phi i1 [ false, %208 ], [ %221, %219 ]
  %224 = zext i1 %223 to i32
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %259

227:                                              ; preds = %222
  %228 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %229 = call i32 @ENA_RING_MTX_LOCK(%struct.ena_ring* %228)
  %230 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %231 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ENA_TX_RESUME_THRESH, align 4
  %234 = call i32 @ena_com_sq_have_enough_space(i32 %232, i32 %233)
  store i32 %234, i32* %13, align 4
  %235 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %236 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %256, label %239

239:                                              ; preds = %227
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %244 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %243, i32 0, i32 2
  store i32 1, i32* %244, align 8
  %245 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %246 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @counter_u64_add(i32 %248, i32 1)
  %250 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %251 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %254 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %253, i32 0, i32 3
  %255 = call i32 @taskqueue_enqueue(i32 %252, i32* %254)
  br label %256

256:                                              ; preds = %242, %239, %227
  %257 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %258 = call i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring* %257)
  br label %259

259:                                              ; preds = %256, %222
  %260 = load i32, i32* %12, align 4
  ret i32 %260
}

declare dso_local i64 @ENA_IO_TXQ_IDX(i32) #1

declare dso_local i32 @ena_com_tx_comp_req_id_get(%struct.ena_com_io_cq*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @validate_tx_req_id(%struct.ena_ring*, i64) #1

declare dso_local i32 @bintime_clear(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @ENA_TX_RING_IDX_NEXT(i64, i32) #1

declare dso_local i32 @ena_com_comp_ack(i32*, i32) #1

declare dso_local i32 @ena_com_update_dev_comp_head(%struct.ena_com_io_cq*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @ena_com_sq_have_enough_space(i32, i32) #1

declare dso_local i32 @ENA_RING_MTX_LOCK(%struct.ena_ring*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @ENA_RING_MTX_UNLOCK(%struct.ena_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
