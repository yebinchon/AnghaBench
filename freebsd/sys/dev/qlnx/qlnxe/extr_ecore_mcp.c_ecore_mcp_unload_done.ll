; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_unload_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_unload_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, i32, i32, %struct.ecore_mcp_mb_params*, i32 }
%struct.mcp_mac = type { i32, i32, i32, %struct.mcp_mac*, i32 }

@DRV_MSG_CODE_UNLOAD_DONE = common dso_local global i32 0, align 4
@ECORE_OV_WOL_ENABLED = common dso_local global i64 0, align 8
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@ECORE_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Setting WoL MAC: %02x:%02x:%02x:%02x:%02x:%02x --> [%08x,%08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_unload_done(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_mcp_mb_params, align 8
  %6 = alloca %struct.mcp_mac, align 8
  %7 = alloca i32*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %8 = bitcast %struct.ecore_mcp_mb_params* %5 to %struct.mcp_mac*
  %9 = call i32 @OSAL_MEM_ZERO(%struct.mcp_mac* %8, i32 32)
  %10 = load i32, i32* @DRV_MSG_CODE_UNLOAD_DONE, align 4
  %11 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %5, i32 0, i32 4
  store i32 %10, i32* %11, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ECORE_OV_WOL_ENABLED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %2
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = call i32 @OSAL_MEM_ZERO(%struct.mcp_mac* %6, i32 32)
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %55 = load i32, i32* @ECORE_MSG_SP, align 4
  %56 = load i32, i32* @ECORE_MSG_IFDOWN, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %54, i32 %57, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %77, i32 %79)
  %81 = bitcast %struct.mcp_mac* %6 to %struct.ecore_mcp_mb_params*
  %82 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %5, i32 0, i32 3
  store %struct.ecore_mcp_mb_params* %81, %struct.ecore_mcp_mb_params** %82, align 8
  %83 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %5, i32 0, i32 2
  store i32 32, i32* %83, align 8
  br label %84

84:                                               ; preds = %19, %2
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %86 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %87 = bitcast %struct.ecore_mcp_mb_params* %5 to %struct.mcp_mac*
  %88 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %85, %struct.ecore_ptt* %86, %struct.mcp_mac* %87)
  ret i32 %88
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.mcp_mac*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.mcp_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
