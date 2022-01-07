; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_config_vf_msix_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_config_vf_msix_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_OFFSET = common dso_local global i64 0, align 8
@DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK = common dso_local global i64 0, align 8
@DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_OFFSET = common dso_local global i64 0, align 8
@DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK = common dso_local global i64 0, align 8
@DRV_MSG_CODE_CFG_VF_MSIX = common dso_local global i32 0, align 4
@FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"VF[%d]: MFW failed to set MSI-X\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Requested 0x%02x MSI-x interrupts from VF 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64)* @ecore_mcp_config_vf_msix_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_config_vf_msix_bb(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = call i32 @IS_LEAD_HWFN(%struct.ecore_hwfn* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = mul nsw i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_OFFSET, align 8
  %29 = shl i64 %27, %28
  %30 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* %11, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_OFFSET, align 8
  %36 = shl i64 %34, %35
  %37 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* %11, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %43 = load i32, i32* @DRV_MSG_CODE_CFG_VF_MSIX, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 %43, i64 %44, i64* %10, i64* %12)
  store i32 %45, i32* %13, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %19
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %50, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %53, i32* %13, align 4
  br label %60

54:                                               ; preds = %19
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %56 = load i32, i32* @ECORE_MSG_IOV, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %55, i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @IS_LEAD_HWFN(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
