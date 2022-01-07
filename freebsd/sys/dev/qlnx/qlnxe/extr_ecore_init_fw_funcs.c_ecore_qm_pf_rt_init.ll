; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_qm_pf_rt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_qm_pf_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.init_qm_pq_params = type { i32 }
%struct.init_qm_vport_params = type { i32* }

@QM_OTHER_PQS_PER_PF = common dso_local global i32 0, align 4
@NUM_OF_TCS = common dso_local global i64 0, align 8
@QM_INVALID_PQ_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_qm_pf_rt_init(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i32 %15, i32 %16, %struct.init_qm_pq_params* %17, %struct.init_qm_vport_params* %18) #0 {
  %20 = alloca i32, align 4
  %21 = alloca %struct.ecore_hwfn*, align 8
  %22 = alloca %struct.ecore_ptt*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.init_qm_pq_params*, align 8
  %39 = alloca %struct.init_qm_vport_params*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %21, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %22, align 8
  store i64 %2, i64* %23, align 8
  store i64 %3, i64* %24, align 8
  store i64 %4, i64* %25, align 8
  store i32 %5, i32* %26, align 4
  store i32 %6, i32* %27, align 4
  store i32 %7, i32* %28, align 4
  store i32 %8, i32* %29, align 4
  store i64 %9, i64* %30, align 8
  store i64 %10, i64* %31, align 8
  store i64 %11, i64* %32, align 8
  store i64 %12, i64* %33, align 8
  store i64 %13, i64* %34, align 8
  store i64 %14, i64* %35, align 8
  store i32 %15, i32* %36, align 4
  store i32 %16, i32* %37, align 4
  store %struct.init_qm_pq_params* %17, %struct.init_qm_pq_params** %38, align 8
  store %struct.init_qm_vport_params* %18, %struct.init_qm_vport_params** %39, align 8
  %43 = load i32, i32* %27, align 4
  %44 = load i32, i32* %29, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @QM_PQ_MEM_4KB(i32 %45)
  %47 = load i32, i32* @QM_OTHER_PQS_PER_PF, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %40, align 4
  store i64 0, i64* %42, align 8
  br label %49

49:                                               ; preds = %71, %19
  %50 = load i64, i64* %42, align 8
  %51 = load i64, i64* %34, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  store i64 0, i64* %41, align 8
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i64, i64* %41, align 8
  %56 = load i64, i64* @NUM_OF_TCS, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* @QM_INVALID_PQ_ID, align 4
  %60 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %39, align 8
  %61 = load i64, i64* %42, align 8
  %62 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %60, i64 %61
  %63 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %41, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %59, i32* %66, align 4
  br label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %41, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %41, align 8
  br label %54

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %42, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %42, align 8
  br label %49

74:                                               ; preds = %49
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %21, align 8
  %76 = load %struct.ecore_ptt*, %struct.ecore_ptt** %22, align 8
  %77 = load i64, i64* %23, align 8
  %78 = load i64, i64* %24, align 8
  %79 = load i64, i64* %25, align 8
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i64, i64* %30, align 8
  %84 = load i64, i64* %31, align 8
  %85 = load i64, i64* %32, align 8
  %86 = load i64, i64* %33, align 8
  %87 = load i32, i32* %40, align 4
  %88 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %38, align 8
  %89 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %39, align 8
  %90 = call i32 @ecore_tx_pq_map_rt_init(%struct.ecore_hwfn* %75, %struct.ecore_ptt* %76, i64 %77, i64 %78, i64 %79, i32 %80, i32 %81, i32 %82, i64 %83, i64 %84, i64 %85, i64 %86, i32 %87, %struct.init_qm_pq_params* %88, %struct.init_qm_vport_params* %89)
  %91 = load i64, i64* %35, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %74
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %21, align 8
  %95 = load i64, i64* %23, align 8
  %96 = load i64, i64* %24, align 8
  %97 = load i64, i64* %35, align 8
  %98 = load i64, i64* %25, align 8
  %99 = load i64, i64* %31, align 8
  %100 = load i64, i64* %32, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %38, align 8
  %103 = call i64 @ecore_pf_wfq_rt_init(%struct.ecore_hwfn* %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %101, %struct.init_qm_pq_params* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  store i32 -1, i32* %20, align 4
  br label %131

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %74
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %21, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i32, i32* %36, align 4
  %111 = call i64 @ecore_pf_rl_rt_init(%struct.ecore_hwfn* %108, i64 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 -1, i32* %20, align 4
  br label %131

114:                                              ; preds = %107
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %21, align 8
  %116 = load i64, i64* %34, align 8
  %117 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %39, align 8
  %118 = call i64 @ecore_vp_wfq_rt_init(%struct.ecore_hwfn* %115, i64 %116, %struct.init_qm_vport_params* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 -1, i32* %20, align 4
  br label %131

121:                                              ; preds = %114
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %21, align 8
  %123 = load i64, i64* %33, align 8
  %124 = load i64, i64* %34, align 8
  %125 = load i32, i32* %37, align 4
  %126 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %39, align 8
  %127 = call i64 @ecore_vport_rl_rt_init(%struct.ecore_hwfn* %122, i64 %123, i64 %124, i32 %125, %struct.init_qm_vport_params* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 -1, i32* %20, align 4
  br label %131

130:                                              ; preds = %121
  store i32 0, i32* %20, align 4
  br label %131

131:                                              ; preds = %130, %129, %120, %113, %105
  %132 = load i32, i32* %20, align 4
  ret i32 %132
}

declare dso_local i32 @QM_PQ_MEM_4KB(i32) #1

declare dso_local i32 @ecore_tx_pq_map_rt_init(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, %struct.init_qm_pq_params*, %struct.init_qm_vport_params*) #1

declare dso_local i64 @ecore_pf_wfq_rt_init(%struct.ecore_hwfn*, i64, i64, i64, i64, i64, %struct.init_qm_pq_params*) #1

declare dso_local i64 @ecore_pf_rl_rt_init(%struct.ecore_hwfn*, i64, i32) #1

declare dso_local i64 @ecore_vp_wfq_rt_init(%struct.ecore_hwfn*, i64, %struct.init_qm_vport_params*) #1

declare dso_local i64 @ecore_vport_rl_rt_init(%struct.ecore_hwfn*, i64, i64, i32, %struct.init_qm_vport_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
