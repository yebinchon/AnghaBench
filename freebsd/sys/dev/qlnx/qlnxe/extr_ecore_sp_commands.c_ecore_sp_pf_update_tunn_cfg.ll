; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_update_tunn_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_pf_update_tunn_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_hwfn = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_tunnel_info = type { i32 }
%struct.ecore_spq_comp_cb = type { i32 }
%struct.ecore_sp_init_data = type { i32, %struct.ecore_spq_comp_cb*, i32, i32 }

@OSAL_NULL = common dso_local global %struct.ecore_spq_entry* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"A0 chip: tunnel pf update config is not supported\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_pf_update_tunn_cfg(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_tunnel_info* %2, i32 %3, %struct.ecore_spq_comp_cb* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca %struct.ecore_tunnel_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_spq_comp_cb*, align 8
  %12 = alloca %struct.ecore_spq_entry*, align 8
  %13 = alloca %struct.ecore_sp_init_data, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store %struct.ecore_tunnel_info* %2, %struct.ecore_tunnel_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ecore_spq_comp_cb* %4, %struct.ecore_spq_comp_cb** %11, align 8
  %15 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  store %struct.ecore_spq_entry* %15, %struct.ecore_spq_entry** %12, align 8
  %16 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call i64 @IS_VF(%struct.TYPE_9__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %9, align 8
  %25 = call i32 @ecore_vf_pf_tunnel_param_update(%struct.ecore_hwfn* %23, %struct.ecore_tunnel_info* %24)
  store i32 %25, i32* %6, align 4
  br label %90

26:                                               ; preds = %5
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i64 @ECORE_IS_BB_A0(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %34 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %33, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %90

36:                                               ; preds = %26
  %37 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %9, align 8
  %38 = icmp ne %struct.ecore_tunnel_info* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %90

41:                                               ; preds = %36
  %42 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %13, i32 0, i32 24)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %44 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %43)
  %45 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %47 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %11, align 8
  %54 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %13, i32 0, i32 1
  store %struct.ecore_spq_comp_cb* %53, %struct.ecore_spq_comp_cb** %54, align 8
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %56 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %57 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %58 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %55, %struct.ecore_spq_entry** %12, i32 %56, i32 %57, %struct.ecore_sp_init_data* %13)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @ECORE_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %6, align 4
  br label %90

64:                                               ; preds = %41
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %66 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %9, align 8
  %67 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %68 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @ecore_tunn_set_pf_update_params(%struct.ecore_hwfn* %65, %struct.ecore_tunnel_info* %66, i32* %70)
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %73 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %12, align 8
  %74 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** @OSAL_NULL, align 8
  %75 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %72, %struct.ecore_spq_entry* %73, %struct.ecore_spq_entry* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @ECORE_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %6, align 4
  br label %90

81:                                               ; preds = %64
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %83 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %85 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = call i32 @ecore_set_hw_tunn_mode_port(%struct.ecore_hwfn* %82, %struct.ecore_ptt* %83, i32* %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %81, %79, %62, %39, %32, %22
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @IS_VF(%struct.TYPE_9__*) #1

declare dso_local i32 @ecore_vf_pf_tunnel_param_update(%struct.ecore_hwfn*, %struct.ecore_tunnel_info*) #1

declare dso_local i64 @ECORE_IS_BB_A0(%struct.TYPE_9__*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @ecore_tunn_set_pf_update_params(%struct.ecore_hwfn*, %struct.ecore_tunnel_info*, i32*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, %struct.ecore_spq_entry*) #1

declare dso_local i32 @ecore_set_hw_tunn_mode_port(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
