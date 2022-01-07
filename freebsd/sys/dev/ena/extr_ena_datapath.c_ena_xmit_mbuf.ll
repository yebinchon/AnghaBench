; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_xmit_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_xmit_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i64*, i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32, %struct.ena_tx_buffer* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.ena_adapter* }
%struct.ena_adapter = type { i32, i64, %struct.TYPE_5__, i32, %struct.ena_com_dev* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ena_com_dev = type { %struct.ena_com_io_sq* }
%struct.ena_com_io_sq = type { i32 }
%struct.ena_tx_buffer = type { i32, i32, i32, i32, i32, i32, i32*, i32, i64, i32 }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ena_com_tx_ctx = type { i64, i64, i64, i8*, i32 }

@ENA_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to collapse mbuf! err: %d\0A\00", align 1
@ENA_DBG = common dso_local global i32 0, align 4
@ENA_TXPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Tx: %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to map TX mbuf\0A\00", align 1
@DB_THRESHOLD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"llq tx max burst size of queue %d achieved, writing doorbell to send burst\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"tx ring[%d] if out of space\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to prepare tx bufs\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Stop queue %d\0A\00", align 1
@ENA_TX_RESUME_THRESH = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*, %struct.mbuf**)* @ena_xmit_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_xmit_mbuf(%struct.ena_ring* %0, %struct.mbuf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_tx_buffer*, align 8
  %8 = alloca %struct.ena_com_tx_ctx, align 8
  %9 = alloca %struct.ena_com_dev*, align 8
  %10 = alloca %struct.ena_com_io_sq*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  %18 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 6
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ENA_IO_TXQ_IDX(i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %25 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %24, i32 0, i32 6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %27, align 8
  store %struct.ena_adapter* %28, %struct.ena_adapter** %6, align 8
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 4
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %30, align 8
  store %struct.ena_com_dev* %31, %struct.ena_com_dev** %9, align 8
  %32 = load %struct.ena_com_dev*, %struct.ena_com_dev** %9, align 8
  %33 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %32, i32 0, i32 0
  %34 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %34, i64 %35
  store %struct.ena_com_io_sq* %36, %struct.ena_com_io_sq** %10, align 8
  %37 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %38 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %39 = call i32 @ena_check_and_collapse_mbuf(%struct.ena_ring* %37, %struct.mbuf** %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %2
  %46 = load i32, i32* @ENA_WARNING, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 (i32, i8*, ...) @ena_trace(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %3, align 4
  br label %335

50:                                               ; preds = %2
  %51 = load i32, i32* @ENA_DBG, align 4
  %52 = load i32, i32* @ENA_TXPTH, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @ena_trace(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %61 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %12, align 8
  %63 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  %69 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %70 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %69, i32 0, i32 8
  %71 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %71, i64 %72
  store %struct.ena_tx_buffer* %73, %struct.ena_tx_buffer** %7, align 8
  %74 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %74, i32 0, i32 8
  store i64 0, i64* %75, align 8
  %76 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %77 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %78 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %79 = load %struct.mbuf*, %struct.mbuf** %78, align 8
  %80 = call i32 @ena_tx_map_mbuf(%struct.ena_ring* %76, %struct.ena_tx_buffer* %77, %struct.mbuf* %79, i8** %11, i64* %15)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %50
  %87 = load i32, i32* @ENA_WARNING, align 4
  %88 = call i32 (i32, i8*, ...) @ena_trace(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %3, align 4
  br label %335

90:                                               ; preds = %50
  %91 = call i32 @memset(%struct.ena_com_tx_ctx* %8, i32 0, i32 40)
  %92 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %93 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %8, i32 0, i32 4
  store i32 %94, i32* %95, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %8, i32 0, i32 3
  store i8* %96, i8** %97, align 8
  %98 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %8, i32 0, i32 2
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %13, align 8
  %103 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %8, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %8, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %106, align 8
  %108 = call i32 @ena_tx_csum(%struct.ena_com_tx_ctx* %8, %struct.mbuf* %107)
  %109 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %110 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DB_THRESHOLD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %90
  %115 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %116 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ena_com_is_doorbell_needed(i32 %117, %struct.ena_com_tx_ctx* %8)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %114, %90
  %121 = load i32, i32* @ENA_DBG, align 4
  %122 = load i32, i32* @ENA_TXPTH, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %125 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %124, i32 0, i32 6
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @ena_trace(i32 %123, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = call i32 (...) @wmb()
  %131 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %132 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ena_com_write_sq_doorbell(i32 %133)
  %135 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %136 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @counter_u64_add(i32 %138, i32 1)
  %140 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %141 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %120, %114
  %143 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %10, align 8
  %144 = call i32 @ena_com_prepare_tx(%struct.ena_com_io_sq* %143, %struct.ena_com_tx_ctx* %8, i32* %17)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %142
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @ENA_COM_NO_MEM, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i64 @likely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load i32, i32* @ENA_DBG, align 4
  %159 = load i32, i32* @ENA_TXPTH, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %162 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %161, i32 0, i32 6
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @ena_trace(i32 %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  br label %172

167:                                              ; preds = %150
  %168 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %169 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @device_printf(i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %172

172:                                              ; preds = %167, %157
  %173 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %174 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @counter_u64_add(i32 %176, i32 1)
  br label %301

178:                                              ; preds = %142
  %179 = call i32 (...) @counter_enter()
  %180 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %181 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @counter_u64_add_protected(i32 %183, i32 1)
  %185 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %186 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %190 = load %struct.mbuf*, %struct.mbuf** %189, align 8
  %191 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @counter_u64_add_protected(i32 %188, i32 %193)
  %195 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %196 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @counter_u64_add_protected(i32 %198, i32 1)
  %200 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %201 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %205 = load %struct.mbuf*, %struct.mbuf** %204, align 8
  %206 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @counter_u64_add_protected(i32 %203, i32 %208)
  %210 = call i32 (...) @counter_exit()
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %213 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %215 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %214, i32 0, i32 7
  %216 = call i32 @getbinuptime(i32* %215)
  %217 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %218 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = load i64, i64* %12, align 8
  %220 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %221 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @ENA_TX_RING_IDX_NEXT(i64 %219, i32 %222)
  %224 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %225 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  %226 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %227 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %230 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, 2
  %233 = call i64 @ena_com_sq_have_enough_space(i32 %228, i64 %232)
  %234 = icmp ne i64 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  %237 = call i64 @unlikely(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %272

239:                                              ; preds = %178
  %240 = load i32, i32* @ENA_DBG, align 4
  %241 = load i32, i32* @ENA_TXPTH, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %244 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %243, i32 0, i32 6
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i32, i8*, ...) @ena_trace(i32 %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %247)
  %249 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %250 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %249, i32 0, i32 3
  store i32 0, i32* %250, align 8
  %251 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %252 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @counter_u64_add(i32 %254, i32 1)
  %256 = call i32 (...) @mb()
  %257 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %258 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = load i64, i64* @ENA_TX_RESUME_THRESH, align 8
  %261 = call i64 @ena_com_sq_have_enough_space(i32 %259, i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %239
  %264 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %265 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %264, i32 0, i32 3
  store i32 1, i32* %265, align 8
  %266 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %267 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @counter_u64_add(i32 %269, i32 1)
  br label %271

271:                                              ; preds = %263, %239
  br label %272

272:                                              ; preds = %271, %178
  %273 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %274 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %279 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %282 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %285 = call i32 @bus_dmamap_sync(i32 %280, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %277, %272
  %287 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %288 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %291, label %300

291:                                              ; preds = %286
  %292 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %293 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %296 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %299 = call i32 @bus_dmamap_sync(i32 %294, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %291, %286
  store i32 0, i32* %3, align 4
  br label %335

301:                                              ; preds = %172
  %302 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %303 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %302, i32 0, i32 6
  store i32* null, i32** %303, align 8
  %304 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %305 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %318

308:                                              ; preds = %301
  %309 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %310 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %313 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @bus_dmamap_unload(i32 %311, i32 %314)
  %316 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %317 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %316, i32 0, i32 3
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %308, %301
  %319 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %320 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %323, label %333

323:                                              ; preds = %318
  %324 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %325 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %328 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @bus_dmamap_unload(i32 %326, i32 %329)
  %331 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %7, align 8
  %332 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %331, i32 0, i32 2
  store i32 0, i32* %332, align 8
  br label %333

333:                                              ; preds = %323, %318
  %334 = load i32, i32* %16, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %333, %300, %86, %45
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i64 @ENA_IO_TXQ_IDX(i32) #1

declare dso_local i32 @ena_check_and_collapse_mbuf(%struct.ena_ring*, %struct.mbuf**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_trace(i32, i8*, ...) #1

declare dso_local i32 @ena_tx_map_mbuf(%struct.ena_ring*, %struct.ena_tx_buffer*, %struct.mbuf*, i8**, i64*) #1

declare dso_local i32 @memset(%struct.ena_com_tx_ctx*, i32, i32) #1

declare dso_local i32 @ena_tx_csum(%struct.ena_com_tx_ctx*, %struct.mbuf*) #1

declare dso_local i64 @ena_com_is_doorbell_needed(i32, %struct.ena_com_tx_ctx*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ena_com_write_sq_doorbell(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ena_com_prepare_tx(%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @counter_enter(...) #1

declare dso_local i32 @counter_u64_add_protected(i32, i32) #1

declare dso_local i32 @counter_exit(...) #1

declare dso_local i32 @getbinuptime(i32*) #1

declare dso_local i64 @ENA_TX_RING_IDX_NEXT(i64, i32) #1

declare dso_local i64 @ena_com_sq_have_enough_space(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
