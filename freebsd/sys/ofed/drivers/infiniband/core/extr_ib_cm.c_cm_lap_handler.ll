; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_lap_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_lap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_13__, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.ib_cm_lap_event_param }
%struct.ib_cm_lap_event_param = type { i32* }
%struct.cm_id_private = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.cm_lap_msg = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_mra_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_LAP_COUNTER = common dso_local global i64 0, align 8
@CM_MSG_RESPONSE_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_lap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_lap_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_lap_msg*, align 8
  %6 = alloca %struct.ib_cm_lap_event_param*, align 8
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %7, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 1
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cm_lap_msg*
  store %struct.cm_lap_msg* %15, %struct.cm_lap_msg** %5, align 8
  %16 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %17 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %20 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cm_id_private* @cm_acquire_id(i32 %18, i32 %21)
  store %struct.cm_id_private* %22, %struct.cm_id_private** %4, align 8
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %24 = icmp ne %struct.cm_id_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %217

28:                                               ; preds = %1
  %29 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %30 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store %struct.ib_cm_lap_event_param* %32, %struct.ib_cm_lap_event_param** %6, align 8
  %33 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %34 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %38 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %40 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %41 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %44 = call i32 @cm_format_path_from_lap(%struct.cm_id_private* %39, i32* %42, %struct.cm_lap_msg* %43)
  %45 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %46 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %45, i32 0, i32 1
  %47 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %48 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %51 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_irq(i32* %51)
  %53 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %54 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  br label %208

60:                                               ; preds = %28
  %61 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %140 [
    i32 129, label %65
    i32 131, label %65
    i32 128, label %66
    i32 130, label %127
  ]

65:                                               ; preds = %60, %60
  br label %141

66:                                               ; preds = %60
  %67 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %68 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %67, i32 0, i32 2
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @CM_LAP_COUNTER, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i32 @atomic_long_inc(i32* %77)
  %79 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %80 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %79, i32 0, i32 2
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %83 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = call %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.TYPE_18__* %81, %struct.TYPE_19__* %84)
  store %struct.ib_mad_send_buf* %85, %struct.ib_mad_send_buf** %7, align 8
  %86 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %87 = call i32 @IS_ERR(%struct.ib_mad_send_buf* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %66
  br label %208

90:                                               ; preds = %66
  %91 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %92 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.cm_mra_msg*
  %95 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %96 = load i32, i32* @CM_MSG_RESPONSE_OTHER, align 4
  %97 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %98 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %101 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %104 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cm_format_mra(%struct.cm_mra_msg* %94, %struct.cm_id_private* %95, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %108 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_irq(i32* %108)
  %110 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %111 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %110, i32 0, i32 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %114 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %113, i32 0, i32 1
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %117 = call i32 @cm_create_response_msg_ah(%struct.TYPE_18__* %112, %struct.TYPE_19__* %115, %struct.ib_mad_send_buf* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %90
  %120 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %121 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %120, i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119, %90
  %124 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %125 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %124)
  br label %126

126:                                              ; preds = %123, %119
  br label %212

127:                                              ; preds = %60
  %128 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %129 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %128, i32 0, i32 2
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @CM_LAP_COUNTER, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = call i32 @atomic_long_inc(i32* %138)
  br label %208

140:                                              ; preds = %60
  br label %208

141:                                              ; preds = %65
  %142 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %143 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  store i32 130, i32* %144, align 8
  %145 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %146 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %150 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %152 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %151, i32 0, i32 2
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %155 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %154, i32 0, i32 1
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %160 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %159, i32 0, i32 1
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %166 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %165, i32 0, i32 4
  %167 = call i32 @cm_init_av_for_response(%struct.TYPE_18__* %153, i32 %158, i32 %164, i32* %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %141
  br label %208

171:                                              ; preds = %141
  %172 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %173 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %176 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %175, i32 0, i32 3
  %177 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %178 = call i32 @cm_init_av_by_path(i32* %174, i32* %176, %struct.cm_id_private* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %171
  br label %208

182:                                              ; preds = %171
  %183 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %184 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %183, i32 0, i32 2
  %185 = call i32 @atomic_inc_and_test(i32* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %190 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %189, i32 0, i32 0
  %191 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %192 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %191, i32 0, i32 1
  %193 = call i32 @list_add_tail(i32* %190, i32* %192)
  br label %194

194:                                              ; preds = %188, %182
  %195 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %196 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %195, i32 0, i32 0
  %197 = call i32 @spin_unlock_irq(i32* %196)
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %202 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %203 = call i32 @cm_process_work(%struct.cm_id_private* %201, %struct.cm_work* %202)
  br label %207

204:                                              ; preds = %194
  %205 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %206 = call i32 @cm_deref_id(%struct.cm_id_private* %205)
  br label %207

207:                                              ; preds = %204, %200
  store i32 0, i32* %2, align 4
  br label %217

208:                                              ; preds = %181, %170, %140, %127, %89, %59
  %209 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %210 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %209, i32 0, i32 0
  %211 = call i32 @spin_unlock_irq(i32* %210)
  br label %212

212:                                              ; preds = %208, %126
  %213 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %214 = call i32 @cm_deref_id(%struct.cm_id_private* %213)
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %212, %207, %25
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @cm_format_path_from_lap(%struct.cm_id_private*, i32*, %struct.cm_lap_msg*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_format_mra(%struct.cm_mra_msg*, %struct.cm_id_private*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_create_response_msg_ah(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.ib_mad_send_buf*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_init_av_for_response(%struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32 @cm_init_av_by_path(i32*, i32*, %struct.cm_id_private*) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
