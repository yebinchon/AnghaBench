; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_dreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_format_dreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dreq_msg = type { i32, i32, i32, i32 }
%struct.cm_id_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CM_DREQ_ATTR_ID = common dso_local global i32 0, align 4
@CM_MSG_SEQUENCE_DREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_dreq_msg*, %struct.cm_id_private*, i8*, i64)* @cm_format_dreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_dreq(%struct.cm_dreq_msg* %0, %struct.cm_id_private* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.cm_dreq_msg*, align 8
  %6 = alloca %struct.cm_id_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.cm_dreq_msg* %0, %struct.cm_dreq_msg** %5, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %10 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %9, i32 0, i32 3
  %11 = load i32, i32* @CM_DREQ_ATTR_ID, align 4
  %12 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %13 = load i32, i32* @CM_MSG_SEQUENCE_DREQ, align 4
  %14 = call i32 @cm_form_tid(%struct.cm_id_private* %12, i32 %13)
  %15 = call i32 @cm_format_mad_hdr(i32* %10, i32 %11, i32 %14)
  %16 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %17 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %21 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %23 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %27 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %29 = load %struct.cm_id_private*, %struct.cm_id_private** %6, align 8
  %30 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cm_dreq_set_remote_qpn(%struct.cm_dreq_msg* %28, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.cm_dreq_msg*, %struct.cm_dreq_msg** %5, align 8
  %40 = getelementptr inbounds %struct.cm_dreq_msg, %struct.cm_dreq_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @memcpy(i32 %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %35, %4
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*, i32) #1

declare dso_local i32 @cm_dreq_set_remote_qpn(%struct.cm_dreq_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
