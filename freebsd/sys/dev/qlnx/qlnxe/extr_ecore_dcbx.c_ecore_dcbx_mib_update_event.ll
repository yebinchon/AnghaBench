; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_mib_update_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_mib_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.ecore_dcbx_results, %struct.TYPE_9__ }
%struct.ecore_dcbx_results = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_DCBX_OPERATIONAL_MIB = common dso_local global i32 0, align 4
@NIG_REG_DSCP_TO_TC_MAP_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to update the DSCP to TC mapping enable bit\0A\00", align 1
@DCBX_PROTOCOL_ROCE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ROCE_V2 = common dso_local global i64 0, align 8
@NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN = common dso_local global i32 0, align 4
@NIG_REG_TX_EDPM_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dcbx_mib_update_event(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_dcbx_results*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ecore_dcbx_read_mib(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %131

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ECORE_DCBX_OPERATIONAL_MIB, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = call i32 @ecore_dcbx_get_dscp_params(%struct.ecore_hwfn* %27, %struct.TYPE_9__* %31)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %35 = call i32 @ecore_dcbx_process_mib_info(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %41 = call i32 @ecore_qm_reconf(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40)
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %43 = call i32 @ecore_sp_pf_update_dcbx(%struct.ecore_hwfn* %42)
  br label %44

44:                                               ; preds = %38, %26
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ecore_dcbx_get_params(%struct.ecore_hwfn* %46, %struct.TYPE_9__* %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ECORE_DCBX_OPERATIONAL_MIB, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %45
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %56
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @NIG_REG_DSCP_TO_TC_MAP_ENABLE, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %77 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @ecore_all_ppfids_wr(%struct.ecore_hwfn* %76, %struct.ecore_ptt* %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %63
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %86 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %85, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %131

88:                                               ; preds = %63
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %90 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %56
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %95 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store %struct.ecore_dcbx_results* %97, %struct.ecore_dcbx_results** %9, align 8
  %98 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %99 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 1, %104
  %106 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %9, align 8
  %107 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 1, %112
  %114 = or i32 %105, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT, align 4
  %116 = load i32, i32* %10, align 4
  %117 = shl i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN, align 4
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %122 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %123 = load i32, i32* @NIG_REG_TX_EDPM_CTRL, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @ecore_wr(%struct.ecore_hwfn* %121, %struct.ecore_ptt* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %93, %45
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @OSAL_DCBX_AEN(%struct.ecore_hwfn* %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %84, %20
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @ecore_dcbx_read_mib(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_dcbx_get_dscp_params(%struct.ecore_hwfn*, %struct.TYPE_9__*) #1

declare dso_local i32 @ecore_dcbx_process_mib_info(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_qm_reconf(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_sp_pf_update_dcbx(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_dcbx_get_params(%struct.ecore_hwfn*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ecore_all_ppfids_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_DCBX_AEN(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
