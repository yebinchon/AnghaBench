; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_process_adminq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_process_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.i40e_arq_event_info = type { i32, i32, i32, i32 }
%struct.virtchnl_msg = type { i32, i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR = common dso_local global i32 0, align 4
@IXL_AQ_BUF_SZ = common dso_local global i32 0, align 4
@IXL_ADM_LIMIT = common dso_local global i32 0, align 4
@I40E_VFINT_ICR0_ENA1 = common dso_local global i32 0, align 4
@I40E_VFINT_ICR0_ENA1_ADMINQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_sc*, i64*)* @iavf_process_adminq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_process_adminq(%struct.iavf_sc* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_sc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_arq_event_info, align 4
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca %struct.virtchnl_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %15 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %14, i32 0, i32 1
  store %struct.i40e_hw* %15, %struct.i40e_hw** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %17 = call i32 @iavf_check_aq_errors(%struct.iavf_sc* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_CRITICAL_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load i32, i32* @IXL_AQ_BUF_SZ, align 4
  %24 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %26 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IXL_AQ_BUF_SZ, align 4
  %32 = call i32 @bzero(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 2
  %34 = bitcast i32* %33 to %struct.virtchnl_msg*
  store %struct.virtchnl_msg* %34, %struct.virtchnl_msg** %9, align 8
  br label %35

35:                                               ; preds = %68, %22
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = call i32 @i40e_clean_arq_element(%struct.i40e_hw* %36, %struct.i40e_arq_event_info* %7, i64* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %70

42:                                               ; preds = %35
  %43 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %44 = load %struct.virtchnl_msg*, %struct.virtchnl_msg** %9, align 8
  %45 = getelementptr inbounds %struct.virtchnl_msg, %struct.virtchnl_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.virtchnl_msg*, %struct.virtchnl_msg** %9, align 8
  %48 = getelementptr inbounds %struct.virtchnl_msg, %struct.virtchnl_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iavf_vc_completion(%struct.iavf_sc* %43, i32 %46, i32 %49, i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IXL_AQ_BUF_SZ, align 4
  %58 = call i32 @bzero(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %42
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @IXL_ADM_LIMIT, align 4
  %67 = icmp slt i32 %64, %66
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ false, %59 ], [ %67, %63 ]
  br i1 %69, label %35, label %70

70:                                               ; preds = %68, %41
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %72 = load i32, i32* @I40E_VFINT_ICR0_ENA1, align 4
  %73 = call i32 @rd32(%struct.i40e_hw* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @I40E_VFINT_ICR0_ENA1_ADMINQ_MASK, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %78 = load i32, i32* @I40E_VFINT_ICR0_ENA1, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @wr32(%struct.i40e_hw* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %70, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @iavf_check_aq_errors(%struct.iavf_sc*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @i40e_clean_arq_element(%struct.i40e_hw*, %struct.i40e_arq_event_info*, i64*) #1

declare dso_local i32 @iavf_vc_completion(%struct.iavf_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
