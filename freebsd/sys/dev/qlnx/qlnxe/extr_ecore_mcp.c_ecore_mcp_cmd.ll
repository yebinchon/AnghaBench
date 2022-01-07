; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64, i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i64, i64, i64, i64 }

@DRV_MSG_CODE_UNLOAD_REQ = common dso_local global i64 0, align 8
@loaded = common dso_local global i32 0, align 4
@loaded_port = common dso_local global i32* null, align 8
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unload cnt: 0x%x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ecore_mcp_mb_params, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @CHIP_REV_IS_EMUL(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @DRV_MSG_CODE_UNLOAD_REQ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* @loaded, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @loaded, align 4
  %28 = load i32*, i32** @loaded_port, align 8
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %36 = load i32, i32* @ECORE_MSG_SP, align 4
  %37 = load i32, i32* @loaded, align 4
  %38 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %35, i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %25, %21
  %40 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %40, i32* %7, align 4
  br label %63

41:                                               ; preds = %6
  %42 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %14, i32 32)
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %14, i32 0, i32 3
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %14, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %49 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, %struct.ecore_mcp_mb_params* %14)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @ECORE_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %63

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %12, align 8
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %14, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %13, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %55, %53, %39
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
