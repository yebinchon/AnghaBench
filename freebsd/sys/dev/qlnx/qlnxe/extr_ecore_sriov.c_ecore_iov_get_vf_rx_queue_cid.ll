; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_rx_queue_cid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_get_vf_rx_queue_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid = type { i32 }
%struct.ecore_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ecore_queue_cid*, i32 }

@MAX_QUEUES_PER_QZONE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_queue_cid* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecore_queue_cid* (%struct.ecore_vf_queue*)* @ecore_iov_get_vf_rx_queue_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue* %0) #0 {
  %2 = alloca %struct.ecore_queue_cid*, align 8
  %3 = alloca %struct.ecore_vf_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_vf_queue* %0, %struct.ecore_vf_queue** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_QUEUES_PER_QZONE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %16, align 8
  %18 = icmp ne %struct.ecore_queue_cid* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %9
  %20 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %19
  %30 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %3, align 8
  %31 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %36, align 8
  store %struct.ecore_queue_cid* %37, %struct.ecore_queue_cid** %2, align 8
  br label %44

38:                                               ; preds = %19, %9
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  %43 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  store %struct.ecore_queue_cid* %43, %struct.ecore_queue_cid** %2, align 8
  br label %44

44:                                               ; preds = %42, %29
  %45 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %2, align 8
  ret %struct.ecore_queue_cid* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
