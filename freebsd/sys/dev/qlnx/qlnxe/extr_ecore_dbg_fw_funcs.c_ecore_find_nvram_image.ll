; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_find_nvram_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_find_nvram_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.mcp_file_att = type { i32, i32 }

@DRV_MSG_CODE_NVM_GET_FILE_ATT = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@FW_MSG_CODE_NVM_OK = common dso_local global i32 0, align 4
@DBG_STATUS_NVRAM_GET_IMAGE_FAILED = common dso_local global i32 0, align 4
@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"find_nvram_image: found NVRAM image of type %d in NVRAM offset %d bytes with size %d bytes\0A\00", align 1
@DBG_STATUS_NON_ALIGNED_NVRAM_IMAGE = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32*, i32*)* @ecore_find_nvram_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_find_nvram_image(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mcp_file_att, align 4
  %16 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %19 = load i32, i32* @DRV_MSG_CODE_NVM_GET_FILE_ATT, align 4
  %20 = load i32, i32* %9, align 4
  %21 = bitcast %struct.mcp_file_att* %15 to i32*
  %22 = call i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32 %19, i32 %20, i32* %12, i32* %13, i32* %14, i32* %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @FW_MSG_CODE_NVM_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %5
  %32 = load i32, i32* @DBG_STATUS_NVRAM_GET_IMAGE_FAILED, align 4
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.mcp_file_att, %struct.mcp_file_att* %15, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.mcp_file_att, %struct.mcp_file_att* %15, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %41 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %40, i32 %41, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 3
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @DBG_STATUS_NON_ALIGNED_NVRAM_IMAGE, align 4
  store i32 %53, i32* %6, align 4
  br label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %52, %31
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
