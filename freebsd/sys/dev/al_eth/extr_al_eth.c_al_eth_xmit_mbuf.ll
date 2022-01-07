; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_xmit_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_xmit_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_ring = type { i32, i32, i64, i32, i32, i32, %struct.al_eth_tx_buffer* }
%struct.al_eth_tx_buffer = type { i64, i32, %struct.al_eth_pkt, %struct.mbuf* }
%struct.al_eth_pkt = type { i32, %struct.al_buf*, i32 }
%struct.al_buf = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AL_ETH_PKT_MAX_BUFS = common dso_local global i32 0, align 4
@XMIT_QUEUE_TIMEOUT = common dso_local global i32 0, align 4
@AL_ETH_DEFAULT_TX_HW_DESCS = common dso_local global i64 0, align 8
@AL_ETH_TX_WAKEUP_THRESH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"stall\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"timeout waiting for queue %d ready!\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"queue %d is ready!\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"mbuf is NULL\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to defrag mbuf\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to map mbuf, error %d\0A\00", align 1
@AL_ETH_TX_FLAGS_INT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"stall, stopping queue %d...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_ring*, %struct.mbuf*)* @al_eth_xmit_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_xmit_mbuf(%struct.al_eth_ring* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.al_eth_ring*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.al_eth_tx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.al_eth_pkt*, align 8
  %13 = alloca %struct.al_buf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  store %struct.al_eth_ring* %0, %struct.al_eth_ring** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %17 = load i32, i32* @AL_ETH_PKT_MAX_BUFS, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.TYPE_3__, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %23 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @XMIT_QUEUE_TIMEOUT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %34 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @al_udma_available_get(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @AL_ETH_DEFAULT_TX_HW_DESCS, align 8
  %39 = load i64, i64* @AL_ETH_TX_WAKEUP_THRESH, align 8
  %40 = sub nsw i64 %38, %39
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %44 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %50

45:                                               ; preds = %32
  %46 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %28

50:                                               ; preds = %42, %28
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @XMIT_QUEUE_TIMEOUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %56 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %59 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 1, i32* %15, align 4
  br label %231

62:                                               ; preds = %50
  %63 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %64 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %67 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf_dbg(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %73 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %76 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %75, i32 0, i32 6
  %77 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %77, i64 %78
  store %struct.al_eth_tx_buffer* %79, %struct.al_eth_tx_buffer** %5, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %81 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %81, i32 0, i32 3
  store %struct.mbuf* %80, %struct.mbuf** %82, align 8
  %83 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %84 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %83, i32 0, i32 2
  store %struct.al_eth_pkt* %84, %struct.al_eth_pkt** %12, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %86 = icmp eq %struct.mbuf* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %89 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %231

92:                                               ; preds = %71
  %93 = load i64, i64* @TRUE, align 8
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %127, %92
  %95 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %96 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %102 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %103 = call i32 @bus_dmamap_load_mbuf_sg(i32 %97, i32 %100, %struct.mbuf* %101, %struct.TYPE_3__* %21, i32* %7, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @__predict_false(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @EFBIG, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* @TRUE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load i64, i64* @FALSE, align 8
  store i64 %116, i64* %14, align 8
  %117 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %118 = load i32, i32* @M_NOWAIT, align 4
  %119 = call %struct.mbuf* @m_defrag(%struct.mbuf* %117, i32 %118)
  store %struct.mbuf* %119, %struct.mbuf** %16, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %121 = icmp eq %struct.mbuf* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %124 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %228

127:                                              ; preds = %115
  %128 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %128, %struct.mbuf** %4, align 8
  br label %94

129:                                              ; preds = %111
  %130 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %131 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  br label %228

135:                                              ; preds = %107
  %136 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %137 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %228

141:                                              ; preds = %94
  %142 = load i32, i32* @AL_ETH_TX_FLAGS_INT, align 4
  %143 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %12, align 8
  %144 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %146 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %147 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %12, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %149 = call i32 @al_eth_tx_csum(%struct.al_eth_ring* %145, %struct.al_eth_tx_buffer* %146, %struct.al_eth_pkt* %147, %struct.mbuf* %148)
  %150 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %12, align 8
  %151 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %150, i32 0, i32 1
  %152 = load %struct.al_buf*, %struct.al_buf** %151, align 8
  store %struct.al_buf* %152, %struct.al_buf** %13, align 8
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %174, %141
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.al_buf*, %struct.al_buf** %13, align 8
  %164 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.al_buf*, %struct.al_buf** %13, align 8
  %171 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.al_buf*, %struct.al_buf** %13, align 8
  %173 = getelementptr inbounds %struct.al_buf, %struct.al_buf* %172, i32 1
  store %struct.al_buf* %173, %struct.al_buf** %13, align 8
  br label %174

174:                                              ; preds = %157
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %153

177:                                              ; preds = %153
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %12, align 8
  %180 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %182 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %12, align 8
  %185 = call i64 @al_eth_tx_pkt_prepare(i32 %183, %struct.al_eth_pkt* %184)
  %186 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %187 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %189 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  br label %228

193:                                              ; preds = %177
  %194 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %195 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @al_udma_available_get(i32 %196)
  %198 = load i32, i32* @AL_ETH_PKT_MAX_BUFS, align 4
  %199 = add nsw i32 %198, 2
  %200 = icmp slt i32 %197, %199
  %201 = zext i1 %200 to i32
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %193
  %205 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %206 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %208 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %211 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @device_printf_dbg(i32 %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  %214 = call i32 (...) @al_data_memory_barrier()
  br label %215

215:                                              ; preds = %204, %193
  %216 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %217 = load i64, i64* %9, align 8
  %218 = call i64 @AL_ETH_TX_RING_IDX_NEXT(%struct.al_eth_ring* %216, i64 %217)
  %219 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %220 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  %221 = load %struct.al_eth_ring*, %struct.al_eth_ring** %3, align 8
  %222 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.al_eth_tx_buffer*, %struct.al_eth_tx_buffer** %5, align 8
  %225 = getelementptr inbounds %struct.al_eth_tx_buffer, %struct.al_eth_tx_buffer* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @al_eth_tx_dma_action(i32 %223, i64 %226)
  store i32 1, i32* %15, align 4
  br label %231

228:                                              ; preds = %192, %135, %129, %122
  %229 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %230 = call i32 @m_freem(%struct.mbuf* %229)
  store i32 0, i32* %15, align 4
  br label %231

231:                                              ; preds = %228, %215, %87, %54
  %232 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %15, align 4
  switch i32 %233, label %235 [
    i32 0, label %234
    i32 1, label %234
  ]

234:                                              ; preds = %231, %231
  ret void

235:                                              ; preds = %231
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @al_udma_available_get(i32) #2

declare dso_local i32 @pause(i8*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_3__*, i32*, i32) #2

declare dso_local i64 @__predict_false(i32) #2

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #2

declare dso_local i32 @al_eth_tx_csum(%struct.al_eth_ring*, %struct.al_eth_tx_buffer*, %struct.al_eth_pkt*, %struct.mbuf*) #2

declare dso_local i64 @al_eth_tx_pkt_prepare(i32, %struct.al_eth_pkt*) #2

declare dso_local i32 @al_data_memory_barrier(...) #2

declare dso_local i64 @AL_ETH_TX_RING_IDX_NEXT(%struct.al_eth_ring*, i64) #2

declare dso_local i32 @al_eth_tx_dma_action(i32, i64) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
