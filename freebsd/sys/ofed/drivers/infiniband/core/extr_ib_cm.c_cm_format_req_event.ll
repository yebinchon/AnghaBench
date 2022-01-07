; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_req_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_req_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_16__, i32*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ib_cm_req_event_param }
%struct.ib_cm_req_event_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32*, i32*, i32, i32, %struct.ib_cm_id* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.cm_id_private = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.cm_req_msg = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.cm_id_private*, %struct.ib_cm_id*)* @cm_format_req_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_req_event(%struct.cm_work* %0, %struct.cm_id_private* %1, %struct.ib_cm_id* %2) #0 {
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.cm_req_msg*, align 8
  %8 = alloca %struct.ib_cm_req_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_id* %2, %struct.ib_cm_id** %6, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cm_req_msg*
  store %struct.cm_req_msg* %15, %struct.cm_req_msg** %7, align 8
  %16 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %17 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.ib_cm_req_event_param* %19, %struct.ib_cm_req_event_param** %8, align 8
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %21 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %22 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %21, i32 0, i32 18
  store %struct.ib_cm_id* %20, %struct.ib_cm_id** %22, align 8
  %23 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %24 = call i32 @cm_get_bth_pkey(%struct.cm_work* %23)
  %25 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %26 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %25, i32 0, i32 17
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %28 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %34 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %33, i32 0, i32 16
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %36 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %40 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %39, i32 0, i32 15
  store i32* %38, i32** %40, align 8
  %41 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %42 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %47 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %51 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %50, i32 0, i32 14
  store i32* %49, i32** %51, align 8
  br label %55

52:                                               ; preds = %3
  %53 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %54 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %53, i32 0, i32 14
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %57 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %60 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %62 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @be32_to_cpu(i32 %63)
  %65 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %66 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %65, i32 0, i32 12
  store i8* %64, i8** %66, align 8
  %67 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %68 = call i32 @cm_req_get_local_qpn(%struct.cm_req_msg* %67)
  %69 = call i8* @be32_to_cpu(i32 %68)
  %70 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %71 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %70, i32 0, i32 11
  store i8* %69, i8** %71, align 8
  %72 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %73 = call i32 @cm_req_get_qp_type(%struct.cm_req_msg* %72)
  %74 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %75 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %77 = call i32 @cm_req_get_starting_psn(%struct.cm_req_msg* %76)
  %78 = call i8* @be32_to_cpu(i32 %77)
  %79 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %80 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  %81 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %82 = call i32 @cm_req_get_init_depth(%struct.cm_req_msg* %81)
  %83 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %84 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %86 = call i32 @cm_req_get_resp_res(%struct.cm_req_msg* %85)
  %87 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %88 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %90 = call i32 @cm_req_get_remote_resp_timeout(%struct.cm_req_msg* %89)
  %91 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %92 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %94 = call i32 @cm_req_get_flow_ctrl(%struct.cm_req_msg* %93)
  %95 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %96 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %98 = call i32 @cm_req_get_local_resp_timeout(%struct.cm_req_msg* %97)
  %99 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %100 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %102 = call i32 @cm_req_get_retry_count(%struct.cm_req_msg* %101)
  %103 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %104 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %106 = call i32 @cm_req_get_rnr_retry_count(%struct.cm_req_msg* %105)
  %107 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %108 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %110 = call i32 @cm_req_get_srq(%struct.cm_req_msg* %109)
  %111 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %112 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %114 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %120 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %122 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %121, i32 0, i32 0
  %123 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %124 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i32* %122, i32** %125, align 8
  ret void
}

declare dso_local i32 @cm_get_bth_pkey(%struct.cm_work*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @cm_req_get_local_qpn(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_qp_type(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_starting_psn(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_init_depth(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_resp_res(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_remote_resp_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_flow_ctrl(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_local_resp_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_retry_count(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_rnr_retry_count(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_srq(%struct.cm_req_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
