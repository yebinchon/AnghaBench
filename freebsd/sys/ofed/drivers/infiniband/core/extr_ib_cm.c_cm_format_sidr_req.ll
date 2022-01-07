; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_sidr_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_sidr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_sidr_req_msg = type { i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_cm_sidr_req_param = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CM_SIDR_REQ_ATTR_ID = common dso_local global i32 0, align 4
@CM_MSG_SEQUENCE_SIDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_sidr_req_msg*, %struct.cm_id_private*, %struct.ib_cm_sidr_req_param*)* @cm_format_sidr_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_sidr_req(%struct.cm_sidr_req_msg* %0, %struct.cm_id_private* %1, %struct.ib_cm_sidr_req_param* %2) #0 {
  %4 = alloca %struct.cm_sidr_req_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_sidr_req_param*, align 8
  store %struct.cm_sidr_req_msg* %0, %struct.cm_sidr_req_msg** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_sidr_req_param* %2, %struct.ib_cm_sidr_req_param** %6, align 8
  %7 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %8 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %7, i32 0, i32 4
  %9 = load i32, i32* @CM_SIDR_REQ_ATTR_ID, align 4
  %10 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %11 = load i32, i32* @CM_MSG_SEQUENCE_SIDR, align 4
  %12 = call i32 @cm_form_tid(%struct.cm_id_private* %10, i32 %11)
  %13 = call i32 @cm_format_mad_hdr(i32* %8, i32 %9, i32 %12)
  %14 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %15 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %19 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %21 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %26 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %28 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %31 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %33 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %3
  %37 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %38 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %4, align 8
  %43 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %46 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ib_cm_sidr_req_param*, %struct.ib_cm_sidr_req_param** %6, align 8
  %49 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @memcpy(i32 %44, i64 %47, i64 %50)
  br label %52

52:                                               ; preds = %41, %36, %3
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
