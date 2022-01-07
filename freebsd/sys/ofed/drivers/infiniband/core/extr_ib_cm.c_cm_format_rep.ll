; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_rep_msg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_cm_rep_param = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@CM_REP_ATTR_ID = common dso_local global i32 0, align 4
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_rep_msg*, %struct.cm_id_private*, %struct.ib_cm_rep_param*)* @cm_format_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_rep(%struct.cm_rep_msg* %0, %struct.cm_id_private* %1, %struct.ib_cm_rep_param* %2) #0 {
  %4 = alloca %struct.cm_rep_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_rep_param*, align 8
  store %struct.cm_rep_msg* %0, %struct.cm_rep_msg** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_rep_param* %2, %struct.ib_cm_rep_param** %6, align 8
  %7 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %8 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %7, i32 0, i32 6
  %9 = load i32, i32* @CM_REP_ATTR_ID, align 4
  %10 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %11 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cm_format_mad_hdr(i32* %8, i32 %9, i32 %12)
  %14 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %15 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %19 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %21 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %25 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %27 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %28 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = call i32 @cm_rep_set_starting_psn(%struct.cm_rep_msg* %26, i32 %30)
  %32 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %33 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %36 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %38 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %39 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cm_rep_set_target_ack_delay(%struct.cm_rep_msg* %37, i32 %45)
  %47 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %48 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %49 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cm_rep_set_failover(%struct.cm_rep_msg* %47, i32 %50)
  %52 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %53 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %54 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cm_rep_set_rnr_retry_count(%struct.cm_rep_msg* %52, i32 %55)
  %57 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %58 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %64 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %66 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %3
  %71 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %72 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %75 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %77 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %78 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cm_rep_set_flow_ctrl(%struct.cm_rep_msg* %76, i32 %79)
  %81 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %82 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %83 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cm_rep_set_srq(%struct.cm_rep_msg* %81, i32 %84)
  %86 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %87 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %88 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @cpu_to_be32(i32 %89)
  %91 = call i32 @cm_rep_set_local_qpn(%struct.cm_rep_msg* %86, i32 %90)
  br label %101

92:                                               ; preds = %3
  %93 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %94 = call i32 @cm_rep_set_srq(%struct.cm_rep_msg* %93, i32 1)
  %95 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %96 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %97 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @cpu_to_be32(i32 %98)
  %100 = call i32 @cm_rep_set_local_eecn(%struct.cm_rep_msg* %95, i32 %99)
  br label %101

101:                                              ; preds = %92, %70
  %102 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %103 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %108 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %4, align 8
  %113 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %116 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ib_cm_rep_param*, %struct.ib_cm_rep_param** %6, align 8
  %119 = getelementptr inbounds %struct.ib_cm_rep_param, %struct.ib_cm_rep_param* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @memcpy(i32 %114, i64 %117, i64 %120)
  br label %122

122:                                              ; preds = %111, %106, %101
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_rep_set_starting_psn(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cm_rep_set_target_ack_delay(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_set_failover(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_set_rnr_retry_count(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_set_flow_ctrl(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_set_srq(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_set_local_qpn(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_set_local_eecn(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
