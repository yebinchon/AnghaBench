; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_bist_nvm_test_get_image_att.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_bist_nvm_test_get_image_att.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.bist_nvm_image_att = type { i32 }

@DRV_MB_PARAM_BIST_NVM_TEST_IMAGE_BY_INDEX = common dso_local global i32 0, align 4
@DRV_MB_PARAM_BIST_TEST_INDEX_OFFSET = common dso_local global i32 0, align 4
@DRV_MB_PARAM_BIST_TEST_IMAGE_INDEX_OFFSET = common dso_local global i32 0, align 4
@DRV_MSG_CODE_BIST_TEST = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i32 0, align 4
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_bist_nvm_test_get_image_att(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.bist_nvm_image_att* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca %struct.bist_nvm_image_att*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store %struct.bist_nvm_image_att* %2, %struct.bist_nvm_image_att** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @DRV_MB_PARAM_BIST_NVM_TEST_IMAGE_BY_INDEX, align 4
  %16 = load i32, i32* @DRV_MB_PARAM_BIST_TEST_INDEX_OFFSET, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DRV_MB_PARAM_BIST_TEST_IMAGE_INDEX_OFFSET, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %25 = load i32, i32* @DRV_MSG_CODE_BIST_TEST, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.bist_nvm_image_att*, %struct.bist_nvm_image_att** %8, align 8
  %28 = bitcast %struct.bist_nvm_image_att* %27 to i32*
  %29 = call i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i32 %25, i32 %26, i32* %12, i32* %13, i32* %10, i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @FW_MSG_CODE_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.bist_nvm_image_att*, %struct.bist_nvm_image_att** %8, align 8
  %43 = getelementptr inbounds %struct.bist_nvm_image_att, %struct.bist_nvm_image_att* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %35
  %47 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @ecore_mcp_nvm_rd_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
