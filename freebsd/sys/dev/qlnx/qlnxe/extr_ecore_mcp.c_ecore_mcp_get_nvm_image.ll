; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_nvm_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_nvm_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_nvm_image_att = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_STORAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Image [%d] is too small - only %d bytes\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Image [%d] is too big - %08x bytes where only %08x are available\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_get_nvm_image(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_nvm_image_att, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @OSAL_MEM_ZERO(i32* %14, i32 %15)
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ecore_mcp_get_nvm_image_att(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32 %19, %struct.ecore_nvm_image_att* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @ECORE_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %65

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 4
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %32 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %31, i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %65

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 4
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %48 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %47, i32 %48, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51, i32 %52)
  %54 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %54, i32* %6, align 4
  br label %65

55:                                               ; preds = %38
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %57 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ecore_mcp_nvm_read(i32 %58, i32 %60, i32* %61, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %55, %46, %30, %24
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @OSAL_MEM_ZERO(i32*, i32) #1

declare dso_local i32 @ecore_mcp_get_nvm_image_att(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, %struct.ecore_nvm_image_att*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ecore_mcp_nvm_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
