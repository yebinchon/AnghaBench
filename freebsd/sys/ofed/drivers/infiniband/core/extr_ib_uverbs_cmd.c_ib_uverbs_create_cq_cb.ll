; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_ib_uverbs_create_cq_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_ib_uverbs_create_cq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_file = type { i32 }
%struct.ib_ucq_object = type { i32 }
%struct.ib_uverbs_ex_create_cq_resp = type { i32 }
%struct.ib_udata = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uverbs_file*, %struct.ib_ucq_object*, %struct.ib_uverbs_ex_create_cq_resp*, %struct.ib_udata*, i8*)* @ib_uverbs_create_cq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_create_cq_cb(%struct.ib_uverbs_file* %0, %struct.ib_ucq_object* %1, %struct.ib_uverbs_ex_create_cq_resp* %2, %struct.ib_udata* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_uverbs_file*, align 8
  %8 = alloca %struct.ib_ucq_object*, align 8
  %9 = alloca %struct.ib_uverbs_ex_create_cq_resp*, align 8
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca i8*, align 8
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %7, align 8
  store %struct.ib_ucq_object* %1, %struct.ib_ucq_object** %8, align 8
  store %struct.ib_uverbs_ex_create_cq_resp* %2, %struct.ib_uverbs_ex_create_cq_resp** %9, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %13 = load %struct.ib_uverbs_ex_create_cq_resp*, %struct.ib_uverbs_ex_create_cq_resp** %9, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq_resp, %struct.ib_uverbs_ex_create_cq_resp* %13, i32 0, i32 0
  %15 = call i64 @ib_copy_to_udata(%struct.ib_udata* %12, i32* %14, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
