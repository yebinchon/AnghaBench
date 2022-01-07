; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_remove_id_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_remove_id_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.rdma_cm_event*)* }
%struct.rdma_cm_event = type opaque
%struct.rdma_cm_event.0 = type { i32 }

@RDMA_CM_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@RDMA_CM_DESTROYING = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_DEVICE_REMOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_remove_id_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_remove_id_dev(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.rdma_cm_event.0, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %8 = load i32, i32* @RDMA_CM_DEVICE_REMOVAL, align 4
  %9 = call i32 @cma_exch(%struct.rdma_id_private* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RDMA_CM_DESTROYING, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @cma_cancel_operation(%struct.rdma_id_private* %15, i32 %16)
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %22 = load i32, i32* @RDMA_CM_DEVICE_REMOVAL, align 4
  %23 = call i32 @cma_comp(%struct.rdma_id_private* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %38

26:                                               ; preds = %14
  %27 = call i32 @memset(%struct.rdma_cm_event.0* %4, i32 0, i32 4)
  %28 = load i32, i32* @RDMA_CM_EVENT_DEVICE_REMOVAL, align 4
  %29 = getelementptr inbounds %struct.rdma_cm_event.0, %struct.rdma_cm_event.0* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_2__*, %struct.rdma_cm_event*)*, i32 (%struct.TYPE_2__*, %struct.rdma_cm_event*)** %32, align 8
  %34 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %35 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %34, i32 0, i32 1
  %36 = bitcast %struct.rdma_cm_event.0* %4 to %struct.rdma_cm_event*
  %37 = call i32 %33(%struct.TYPE_2__* %35, %struct.rdma_cm_event* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %26, %25
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @cma_exch(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_cancel_operation(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cma_comp(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @memset(%struct.rdma_cm_event.0*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
