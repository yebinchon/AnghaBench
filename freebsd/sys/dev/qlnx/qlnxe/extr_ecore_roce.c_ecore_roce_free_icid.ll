; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_free_icid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_free_icid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_rdma_info* }
%struct.ecore_rdma_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i64)* @ecore_roce_free_icid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_roce_free_icid(%struct.ecore_hwfn* %0, i64 %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ecore_rdma_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %9, align 8
  store %struct.ecore_rdma_info* %10, %struct.ecore_rdma_info** %5, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %11, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %19, i32 0, i32 0
  %21 = call i32 @OSAL_SPIN_LOCK(i32* %20)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %23, i32 0, i32 1
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @ecore_bmap_release_id(%struct.ecore_hwfn* %22, i32* %24, i64 %25)
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %28, align 8
  %30 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %29, i32 0, i32 0
  %31 = call i32 @OSAL_SPIN_UNLOCK(i32* %30)
  ret void
}

declare dso_local i64 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_bmap_release_id(%struct.ecore_hwfn*, i32*, i64) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
