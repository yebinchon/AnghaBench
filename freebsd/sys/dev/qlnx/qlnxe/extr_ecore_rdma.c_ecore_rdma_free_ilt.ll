; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_free_ilt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_free_ilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ECORE_ELEM_CXT = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_ELEM_TASK = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@ECORE_ELEM_SRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_rdma_free_ilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_rdma_free_ilt(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %3 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %4 = load i32, i32* @ECORE_ELEM_CXT, align 4
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %5, i32 %10)
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OSAL_NULL, align 4
  %19 = call i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn* %12, i32 %17, i32 %18)
  %20 = call i32 @ecore_cxt_free_ilt_range(%struct.ecore_hwfn* %3, i32 %4, i32 %11, i32 %19)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %22 = load i32, i32* @ECORE_ELEM_TASK, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %24 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %25 = call i32 @ecore_cxt_get_proto_tid_count(%struct.ecore_hwfn* %23, i32 %24)
  %26 = call i32 @ecore_cxt_free_ilt_range(%struct.ecore_hwfn* %21, i32 %22, i32 0, i32 %25)
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %28 = load i32, i32* @ECORE_ELEM_SRQ, align 4
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %30 = call i32 @ecore_cxt_get_srq_count(%struct.ecore_hwfn* %29)
  %31 = call i32 @ecore_cxt_free_ilt_range(%struct.ecore_hwfn* %27, i32 %28, i32 0, i32 %30)
  ret void
}

declare dso_local i32 @ecore_cxt_free_ilt_range(%struct.ecore_hwfn*, i32, i32, i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_count(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_cxt_get_proto_tid_count(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_cxt_get_srq_count(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
