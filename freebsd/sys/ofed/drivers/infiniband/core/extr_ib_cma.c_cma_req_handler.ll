; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_req_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { i32, %struct.rdma_id_private* }
%struct.rdma_id_private = type { i64, %struct.TYPE_14__, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i64 }
%struct.rdma_cm_event = type opaque
%struct.TYPE_13__ = type { %struct.ib_cm_id* }
%struct.ib_cm_event = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.rdma_cm_event.0 = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_CM_LISTEN = common dso_local global i64 0, align 8
@ECONNABORTED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_CONNECT_REQUEST = common dso_local global i32 0, align 4
@IB_CM_SIDR_REQ_RECEIVED = common dso_local global i64 0, align 8
@IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@cma_ib_handler = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@RDMA_CM_CONNECT = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@CMA_CM_MRA_SETTING = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @cma_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_req_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.rdma_id_private*, align 8
  %7 = alloca %struct.rdma_id_private*, align 8
  %8 = alloca %struct.rdma_cm_event.0, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  store %struct.rdma_id_private* null, %struct.rdma_id_private** %7, align 8
  %12 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %13 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %14 = call %struct.rdma_id_private* @cma_id_from_event(%struct.ib_cm_id* %12, %struct.ib_cm_event* %13, %struct.net_device** %9)
  store %struct.rdma_id_private* %14, %struct.rdma_id_private** %6, align 8
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %16 = call i64 @IS_ERR(%struct.rdma_id_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.rdma_id_private* %19)
  store i32 %20, i32* %3, align 4
  br label %197

21:                                               ; preds = %2
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 1
  %24 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %25 = call i32 @cma_check_req_qp_type(%struct.TYPE_14__* %23, %struct.ib_cm_event* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %189

30:                                               ; preds = %21
  %31 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %32 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %35 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RDMA_CM_LISTEN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @ECONNABORTED, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %11, align 4
  br label %178

42:                                               ; preds = %30
  %43 = call i32 @memset(%struct.rdma_cm_event.0* %8, i32 0, i32 24)
  %44 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %45 = call i32 @cma_user_data_offset(%struct.rdma_id_private* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @RDMA_CM_EVENT_CONNECT_REQUEST, align 4
  %47 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %49 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_CM_SIDR_REQ_RECEIVED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %42
  %54 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %55 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %54, i32 0, i32 1
  %56 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = call %struct.rdma_id_private* @cma_new_udp_id(%struct.TYPE_14__* %55, %struct.ib_cm_event* %56, %struct.net_device* %57)
  store %struct.rdma_id_private* %58, %struct.rdma_id_private** %7, align 8
  %59 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %60 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load i64, i64* @IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %69, %71
  %73 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  br label %90

76:                                               ; preds = %42
  %77 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %78 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %77, i32 0, i32 1
  %79 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %80 = load %struct.net_device*, %struct.net_device** %9, align 8
  %81 = call %struct.rdma_id_private* @cma_new_conn_id(%struct.TYPE_14__* %78, %struct.ib_cm_event* %79, %struct.net_device* %80)
  store %struct.rdma_id_private* %81, %struct.rdma_id_private** %7, align 8
  %82 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %83 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %86 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @cma_set_req_event_data(%struct.rdma_cm_event.0* %8, i32* %84, i64 %87, i32 %88)
  br label %90

90:                                               ; preds = %76, %53
  %91 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %92 = icmp ne %struct.rdma_id_private* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %178

96:                                               ; preds = %90
  %97 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %98 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %97, i32 0, i32 2
  %99 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %100 = call i32 @mutex_lock_nested(i32* %98, i32 %99)
  %101 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %102 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %103 = call i32 @cma_acquire_dev(%struct.rdma_id_private* %101, %struct.rdma_id_private* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %171

107:                                              ; preds = %96
  %108 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %109 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %110 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store %struct.ib_cm_id* %108, %struct.ib_cm_id** %111, align 8
  %112 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %113 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %114 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %113, i32 0, i32 1
  store %struct.rdma_id_private* %112, %struct.rdma_id_private** %114, align 8
  %115 = load i32, i32* @cma_ib_handler, align 4
  %116 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %117 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %119 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %118, i32 0, i32 4
  %120 = call i32 @atomic_inc(i32* %119)
  %121 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %122 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_14__*, %struct.rdma_cm_event*)** %123, align 8
  %125 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %126 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %125, i32 0, i32 1
  %127 = bitcast %struct.rdma_cm_event.0* %8 to %struct.rdma_cm_event*
  %128 = call i32 %124(%struct.TYPE_14__* %126, %struct.rdma_cm_event* %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %107
  br label %165

132:                                              ; preds = %107
  %133 = call i32 @mutex_lock(i32* @lock)
  %134 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %135 = load i32, i32* @RDMA_CM_CONNECT, align 4
  %136 = call i64 @cma_comp(%struct.rdma_id_private* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %140 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IB_QPT_UD, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %147 = load i32, i32* @CMA_CM_MRA_SETTING, align 4
  %148 = call i32 @ib_send_cm_mra(%struct.ib_cm_id* %146, i32 %147, i32* null, i32 0)
  br label %149

149:                                              ; preds = %145, %138, %132
  %150 = call i32 @mutex_unlock(i32* @lock)
  %151 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %152 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %151, i32 0, i32 2
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %155 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %154, i32 0, i32 2
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %158 = call i32 @cma_deref_id(%struct.rdma_id_private* %157)
  %159 = load %struct.net_device*, %struct.net_device** %9, align 8
  %160 = icmp ne %struct.net_device* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %149
  %162 = load %struct.net_device*, %struct.net_device** %9, align 8
  %163 = call i32 @dev_put(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %161, %149
  store i32 0, i32* %3, align 4
  br label %197

165:                                              ; preds = %131
  %166 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %167 = call i32 @cma_deref_id(%struct.rdma_id_private* %166)
  %168 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %169 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %170, align 8
  br label %171

171:                                              ; preds = %165, %106
  %172 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %173 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %174 = call i32 @cma_exch(%struct.rdma_id_private* %172, i32 %173)
  %175 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %176 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %175, i32 0, i32 2
  %177 = call i32 @mutex_unlock(i32* %176)
  br label %178

178:                                              ; preds = %171, %93, %39
  %179 = load %struct.rdma_id_private*, %struct.rdma_id_private** %6, align 8
  %180 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %179, i32 0, i32 2
  %181 = call i32 @mutex_unlock(i32* %180)
  %182 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %183 = icmp ne %struct.rdma_id_private* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %186 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %185, i32 0, i32 1
  %187 = call i32 @rdma_destroy_id(%struct.TYPE_14__* %186)
  br label %188

188:                                              ; preds = %184, %178
  br label %189

189:                                              ; preds = %188, %27
  %190 = load %struct.net_device*, %struct.net_device** %9, align 8
  %191 = icmp ne %struct.net_device* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.net_device*, %struct.net_device** %9, align 8
  %194 = call i32 @dev_put(%struct.net_device* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %164, %18
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.rdma_id_private* @cma_id_from_event(%struct.ib_cm_id*, %struct.ib_cm_event*, %struct.net_device**) #1

declare dso_local i64 @IS_ERR(%struct.rdma_id_private*) #1

declare dso_local i32 @PTR_ERR(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_check_req_qp_type(%struct.TYPE_14__*, %struct.ib_cm_event*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local i32 @cma_user_data_offset(%struct.rdma_id_private*) #1

declare dso_local %struct.rdma_id_private* @cma_new_udp_id(%struct.TYPE_14__*, %struct.ib_cm_event*, %struct.net_device*) #1

declare dso_local %struct.rdma_id_private* @cma_new_conn_id(%struct.TYPE_14__*, %struct.ib_cm_event*, %struct.net_device*) #1

declare dso_local i32 @cma_set_req_event_data(%struct.rdma_cm_event.0*, i32*, i64, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @cma_acquire_dev(%struct.rdma_id_private*, %struct.rdma_id_private*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @cma_comp(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @ib_send_cm_mra(%struct.ib_cm_id*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cma_deref_id(%struct.rdma_id_private*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
