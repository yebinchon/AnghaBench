; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_rd_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_rd_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i32, i8*, i8*, i32*, i8*, i8* }

@MCP_DRV_NVM_BUF_LEN = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i8* %2, i8* %3, i8** %4, i8** %5, i8** %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca %struct.ecore_ptt*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.ecore_mcp_mb_params, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %10, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8** %7, i8*** %17, align 8
  %23 = load i32, i32* @MCP_DRV_NVM_BUF_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %18, i32 48)
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 5
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 4
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 3
  store i32* %26, i32** %32, align 8
  %33 = load i32, i32* @MCP_DRV_NVM_BUF_LEN, align 4
  %34 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %37 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36, %struct.ecore_mcp_mb_params* %18)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* @ECORE_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = load i32, i32* %21, align 4
  store i32 %42, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %58

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %14, align 8
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %15, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8**, i8*** %15, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %16, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %17, align 8
  %54 = load i8**, i8*** %16, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @OSAL_MEMCPY(i8** %53, i32* %26, i8* %55)
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %57, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %58

58:                                               ; preds = %43, %41
  %59 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #2

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #2

declare dso_local i32 @OSAL_MEMCPY(i8**, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
