; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_nvm_image_att.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_get_nvm_image_att.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_nvm_image_att = type { i32, i32 }
%struct.bist_nvm_image_att = type { i32, i32, i32 }

@NVM_TYPE_ISCSI_CFG = common dso_local global i32 0, align 4
@NVM_TYPE_FCOE_CFG = common dso_local global i32 0, align 4
@NVM_TYPE_MDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown request of image_id %08x\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_STORAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to find nvram image of type %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_get_nvm_image_att(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, %struct.ecore_nvm_image_att* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_nvm_image_att*, align 8
  %10 = alloca %struct.bist_nvm_image_att, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ecore_nvm_image_att* %3, %struct.ecore_nvm_image_att** %9, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 130, label %18
    i32 128, label %20
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* @NVM_TYPE_ISCSI_CFG, align 4
  store i32 %17, i32* %11, align 4
  br label %27

18:                                               ; preds = %4
  %19 = load i32, i32* @NVM_TYPE_FCOE_CFG, align 4
  store i32 %19, i32* %11, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @NVM_TYPE_MDUMP, align 4
  store i32 %21, i32* %11, align 4
  br label %27

22:                                               ; preds = %4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %23, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %84

27:                                               ; preds = %20, %18, %16
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %30 = call i32 @ecore_mcp_bist_nvm_test_get_num_images(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i64* %12)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %84

39:                                               ; preds = %34
  store i64 0, i64* %13, align 8
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @ecore_mcp_bist_nvm_test_get_image_att(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, %struct.bist_nvm_image_att* %10, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @ECORE_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %5, align 4
  br label %84

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.bist_nvm_image_att, %struct.bist_nvm_image_att* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %64

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %13, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %13, align 8
  br label %40

64:                                               ; preds = %59, %40
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %70 = load i32, i32* @ECORE_MSG_STORAGE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %73, i32* %5, align 4
  br label %84

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.bist_nvm_image_att, %struct.bist_nvm_image_att* %10, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ecore_nvm_image_att*, %struct.ecore_nvm_image_att** %9, align 8
  %78 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.bist_nvm_image_att, %struct.bist_nvm_image_att* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ecore_nvm_image_att*, %struct.ecore_nvm_image_att** %9, align 8
  %82 = getelementptr inbounds %struct.ecore_nvm_image_att, %struct.ecore_nvm_image_att* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %74, %68, %52, %37, %22
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_mcp_bist_nvm_test_get_num_images(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*) #1

declare dso_local i32 @ecore_mcp_bist_nvm_test_get_image_att(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.bist_nvm_image_att*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
