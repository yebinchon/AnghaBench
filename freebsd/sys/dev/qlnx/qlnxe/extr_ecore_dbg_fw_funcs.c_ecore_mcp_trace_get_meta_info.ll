; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_mcp_trace_get_meta_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_mcp_trace_get_meta_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@MCP_SPAD_TRACE_OFFSIZE_ADDR = common dso_local global i32 0, align 4
@MCP_REG_SCRATCH = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_NVRAM_BUNDLE = common dso_local global i32 0, align 4
@DIR_ID_1 = common dso_local global i32 0, align 4
@NVM_TYPE_MFW_TRACE1 = common dso_local global i32 0, align 4
@NVM_TYPE_MFW_TRACE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*, i32*, i32*)* @ecore_mcp_trace_get_meta_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcp_trace_get_meta_info(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca %struct.ecore_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %19 = load i32, i32* @MCP_SPAD_TRACE_OFFSIZE_ADDR, align 4
  %20 = call i32 @ecore_rd(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @MCP_REG_SCRATCH, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @SECTION_OFFSET(i32 %22)
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @SECTION_SIZE(i32 %25)
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @ecore_rd(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, i32 %32)
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @DBG_STATUS_INVALID_NVRAM_BUNDLE, align 4
  store i32 %39, i32* %7, align 4
  br label %57

40:                                               ; preds = %6
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DIR_ID_1, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @NVM_TYPE_MFW_TRACE1, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @NVM_TYPE_MFW_TRACE2, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %15, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %52 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @ecore_find_nvram_image(%struct.ecore_hwfn* %51, %struct.ecore_ptt* %52, i32 %53, i32* %54, i32* %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %49, %38
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @SECTION_OFFSET(i32) #1

declare dso_local i32 @SECTION_SIZE(i32) #1

declare dso_local i32 @ecore_find_nvram_image(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
