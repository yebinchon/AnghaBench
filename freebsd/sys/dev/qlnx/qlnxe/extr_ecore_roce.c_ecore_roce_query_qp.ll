; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_rdma_qp = type { i32 }
%struct.ecore_rdma_query_qp_out_params = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_roce_query_qp(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_query_qp_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_rdma_qp*, align 8
  %7 = alloca %struct.ecore_rdma_query_qp_out_params*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %6, align 8
  store %struct.ecore_rdma_query_qp_out_params* %2, %struct.ecore_rdma_query_qp_out_params** %7, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %10 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %11 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %7, align 8
  %12 = call i32 @ecore_roce_sp_query_responder(%struct.ecore_hwfn* %9, %struct.ecore_rdma_qp* %10, %struct.ecore_rdma_query_qp_out_params* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %20 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %7, align 8
  %21 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %21, i32 0, i32 1
  %23 = call i32 @ecore_roce_sp_query_requester(%struct.ecore_hwfn* %18, %struct.ecore_rdma_qp* %19, %struct.ecore_rdma_query_qp_out_params* %20, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %6, align 8
  %30 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %7, align 8
  %33 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %26, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @ecore_roce_sp_query_responder(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, %struct.ecore_rdma_query_qp_out_params*) #1

declare dso_local i32 @ecore_roce_sp_query_requester(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, %struct.ecore_rdma_query_qp_out_params*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
