; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_cm_msgs.h_cm_req_get_qp_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_cm_msgs.h_cm_req_get_qp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i32 }

@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i32 0, align 4
@IB_QPT_XRC_TGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_req_msg*)* @cm_req_get_qp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_req_get_qp_type(%struct.cm_req_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_req_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %3, align 8
  %5 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %6 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be32_to_cpu(i32 %7)
  %9 = and i32 %8, 6
  %10 = ashr i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %24 [
    i32 0, label %12
    i32 1, label %14
    i32 3, label %16
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @IB_QPT_RC, align 4
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* @IB_QPT_UC, align 4
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.cm_req_msg*, %struct.cm_req_msg** %3, align 8
  %18 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 7
  switch i32 %20, label %23 [
    i32 1, label %21
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @IB_QPT_XRC_TGT, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %21, %14, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
