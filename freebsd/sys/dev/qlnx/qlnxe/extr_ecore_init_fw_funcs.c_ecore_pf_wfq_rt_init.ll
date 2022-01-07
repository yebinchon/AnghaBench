; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_pf_wfq_rt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_pf_wfq_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.init_qm_pq_params = type { i32 }

@QM_WFQ_MAX_INC_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid PF WFQ weight configuration\0A\00", align 1
@QM_WFQ_CRD_E5_NUM_VOQS = common dso_local global i32 0, align 4
@QM_REG_WFQPFCRD_RT_OFFSET = common dso_local global i32 0, align 4
@QM_REG_WFQPFCRD_MSB_RT_OFFSET = common dso_local global i32 0, align 4
@MAX_NUM_PFS_E5 = common dso_local global i32 0, align 4
@MAX_NUM_PFS_BB = common dso_local global i32 0, align 4
@QM_WFQ_CRD_REG_SIGN_BIT = common dso_local global i64 0, align 8
@QM_REG_WFQPFUPPERBOUND_RT_OFFSET = common dso_local global i64 0, align 8
@QM_WFQ_UPPER_BOUND = common dso_local global i32 0, align 4
@QM_REG_WFQPFWEIGHT_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32, i64, i32, i64, %struct.init_qm_pq_params*)* @ecore_pf_wfq_rt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_pf_wfq_rt_init(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i64 %3, i32 %4, i64 %5, %struct.init_qm_pq_params* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.init_qm_pq_params*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store %struct.init_qm_pq_params* %6, %struct.init_qm_pq_params** %15, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @QM_WFQ_INC_VAL(i64 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %7
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @QM_WFQ_MAX_INC_VAL, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %7
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %30 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %29, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %115

31:                                               ; preds = %24
  store i64 0, i64* %19, align 8
  br label %32

32:                                               ; preds = %94, %31
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %15, align 8
  %40 = load i64, i64* %19, align 8
  %41 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %39, i64 %40
  %42 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @ecore_get_ext_voq(%struct.ecore_hwfn* %37, i32 %38, i32 %43, i32 %44)
  store i32 %45, i32* %18, align 4
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %47 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ECORE_IS_E5(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %36
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @QM_WFQ_CRD_E5_NUM_VOQS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @QM_REG_WFQPFCRD_RT_OFFSET, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @QM_REG_WFQPFCRD_MSB_RT_OFFSET, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @QM_WFQ_CRD_E5_NUM_VOQS, align 4
  %63 = srem i32 %61, %62
  %64 = load i32, i32* @MAX_NUM_PFS_E5, align 4
  %65 = mul nsw i32 %63, %64
  %66 = add nsw i32 %60, %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  br label %87

69:                                               ; preds = %36
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @QM_REG_WFQPFCRD_RT_OFFSET, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @QM_REG_WFQPFCRD_MSB_RT_OFFSET, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 %78, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  %85 = srem i32 %83, %84
  %86 = add nsw i32 %82, %85
  br label %87

87:                                               ; preds = %77, %59
  %88 = phi i32 [ %68, %59 ], [ %86, %77 ]
  store i32 %88, i32* %17, align 4
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i64, i64* @QM_WFQ_CRD_REG_SIGN_BIT, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @OVERWRITE_RT_REG(%struct.ecore_hwfn* %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %19, align 8
  br label %32

97:                                               ; preds = %32
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %99 = load i64, i64* @QM_REG_WFQPFUPPERBOUND_RT_OFFSET, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load i32, i32* @QM_WFQ_UPPER_BOUND, align 4
  %104 = load i64, i64* @QM_WFQ_CRD_REG_SIGN_BIT, align 8
  %105 = trunc i64 %104 to i32
  %106 = or i32 %103, %105
  %107 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %98, i64 %102, i32 %106)
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %109 = load i64, i64* @QM_REG_WFQPFWEIGHT_RT_OFFSET, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %108, i64 %112, i32 %113)
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %97, %28
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @QM_WFQ_INC_VAL(i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_get_ext_voq(%struct.ecore_hwfn*, i32, i32, i32) #1

declare dso_local i64 @ECORE_IS_E5(i32) #1

declare dso_local i32 @OVERWRITE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
