; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_mba_versions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_mba_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mba_vers = type { i32* }

@DRV_MSG_CODE_GET_MBA_VERSION = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i64 0, align 8
@FW_MSG_CODE_NVM_OK = common dso_local global i64 0, align 8
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@MCP_DRV_NVM_BUF_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_get_mba_versions(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_mba_vers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_mba_vers*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_mba_vers* %2, %struct.ecore_mba_vers** %7, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %14 = load i32, i32* @DRV_MSG_CODE_GET_MBA_VERSION, align 4
  %15 = load %struct.ecore_mba_vers*, %struct.ecore_mba_vers** %7, align 8
  %16 = getelementptr inbounds %struct.ecore_mba_vers, %struct.ecore_mba_vers* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn* %12, %struct.ecore_ptt* %13, i32 %14, i32 0, i64* %9, i64* %10, i64* %8, i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @ECORE_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @FW_MSG_CODE_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @FW_MSG_CODE_NVM_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @MCP_DRV_NVM_BUF_LEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i64*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
