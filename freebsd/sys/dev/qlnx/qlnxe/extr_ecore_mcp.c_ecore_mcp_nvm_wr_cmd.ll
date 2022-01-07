; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_wr_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_nvm_wr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_mcp_mb_params = type { i8**, i8*, i8*, i64, i8*, i8* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_nvm_wr_cmd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i8* %2, i8* %3, i8** %4, i8** %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_hwfn*, align 8
  %11 = alloca %struct.ecore_ptt*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.ecore_mcp_mb_params, align 8
  %19 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %10, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = call i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params* %18, i32 48)
  %21 = load i8*, i8** %12, align 8
  %22 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %17, align 8
  %26 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 0
  store i8** %25, i8*** %26, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 3
  store i64 %28, i64* %29, align 8
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %11, align 8
  %32 = call i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, %struct.ecore_mcp_mb_params* %18)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %9, align 4
  br label %46

38:                                               ; preds = %8
  %39 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %14, align 8
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.ecore_mcp_mb_params, %struct.ecore_mcp_mb_params* %18, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %15, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %38, %36
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_mcp_mb_params*, i32) #1

declare dso_local i32 @ecore_mcp_cmd_and_union(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
