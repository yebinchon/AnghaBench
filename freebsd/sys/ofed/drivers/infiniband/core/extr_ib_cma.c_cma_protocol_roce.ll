; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_protocol_roce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_protocol_roce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, %struct.ib_device* }
%struct.ib_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @cma_protocol_roce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_protocol_roce(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %5 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %6 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %5, i32 0, i32 1
  %7 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  store %struct.ib_device* %7, %struct.ib_device** %3, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %15 = call i32 @rdma_start_port(%struct.ib_device* %14)
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i32 [ %10, %12 ], [ %15, %13 ]
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cma_protocol_roce_dev_port(%struct.ib_device* %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @cma_protocol_roce_dev_port(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
