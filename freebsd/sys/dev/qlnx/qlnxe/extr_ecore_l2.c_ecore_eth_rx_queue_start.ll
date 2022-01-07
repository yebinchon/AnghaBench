; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_rx_queue_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_rx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_start_common_params = type { i32 }
%struct.ecore_rxq_start_ret_params = type { i8*, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_queue_cid* null, align 8
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eth_rx_queue_start(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_queue_start_common_params* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.ecore_rxq_start_ret_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_queue_start_common_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ecore_rxq_start_ret_params*, align 8
  %18 = alloca %struct.ecore_queue_cid*, align 8
  %19 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.ecore_queue_start_common_params* %2, %struct.ecore_queue_start_common_params** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ecore_rxq_start_ret_params* %7, %struct.ecore_rxq_start_ret_params** %17, align 8
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ecore_queue_start_common_params*, %struct.ecore_queue_start_common_params** %12, align 8
  %23 = call %struct.ecore_queue_cid* @ecore_eth_queue_to_cid_pf(%struct.ecore_hwfn* %20, i32 %21, i32 1, %struct.ecore_queue_start_common_params* %22)
  store %struct.ecore_queue_cid* %23, %struct.ecore_queue_cid** %18, align 8
  %24 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %18, align 8
  %25 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %26 = icmp eq %struct.ecore_queue_cid* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %28, i32* %9, align 4
  br label %70

29:                                               ; preds = %8
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_PF(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %37 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %18, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.ecore_rxq_start_ret_params*, %struct.ecore_rxq_start_ret_params** %17, align 8
  %43 = getelementptr inbounds %struct.ecore_rxq_start_ret_params, %struct.ecore_rxq_start_ret_params* %42, i32 0, i32 1
  %44 = call i32 @ecore_eth_pf_rx_queue_start(%struct.ecore_hwfn* %36, %struct.ecore_queue_cid* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %43)
  store i32 %44, i32* %19, align 4
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %47 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %18, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.ecore_rxq_start_ret_params*, %struct.ecore_rxq_start_ret_params** %17, align 8
  %53 = getelementptr inbounds %struct.ecore_rxq_start_ret_params, %struct.ecore_rxq_start_ret_params* %52, i32 0, i32 1
  %54 = call i32 @ecore_vf_pf_rxq_start(%struct.ecore_hwfn* %46, %struct.ecore_queue_cid* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* %53)
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %45, %35
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %61 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %18, align 8
  %62 = call i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn* %60, %struct.ecore_queue_cid* %61)
  br label %68

63:                                               ; preds = %55
  %64 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %18, align 8
  %65 = bitcast %struct.ecore_queue_cid* %64 to i8*
  %66 = load %struct.ecore_rxq_start_ret_params*, %struct.ecore_rxq_start_ret_params** %17, align 8
  %67 = getelementptr inbounds %struct.ecore_rxq_start_ret_params, %struct.ecore_rxq_start_ret_params* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %19, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %27
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local %struct.ecore_queue_cid* @ecore_eth_queue_to_cid_pf(%struct.ecore_hwfn*, i32, i32, %struct.ecore_queue_start_common_params*) #1

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @ecore_eth_pf_rx_queue_start(%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ecore_vf_pf_rxq_start(%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
