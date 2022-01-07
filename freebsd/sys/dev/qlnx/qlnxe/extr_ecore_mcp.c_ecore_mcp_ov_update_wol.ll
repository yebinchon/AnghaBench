; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_ov_update_wol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_ov_update_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_WOL_SUPPORT_NONE = common dso_local global i64 0, align 8
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Can't change WoL configuration when WoL isn't supported\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_WOL_DEFAULT = common dso_local global i32 0, align 4
@DRV_MB_PARAM_WOL_DISABLED = common dso_local global i32 0, align 4
@DRV_MB_PARAM_WOL_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid wol state %d\0A\00", align 1
@DRV_MSG_CODE_OV_UPDATE_WOL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to send wol mode, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_ov_update_wol(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ECORE_WOL_SUPPORT_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = load i32, i32* @ECORE_MSG_SP, align 4
  %21 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %19, i32 %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %31 [
    i32 130, label %25
    i32 129, label %27
    i32 128, label %29
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @DRV_MB_PARAM_WOL_DEFAULT, align 4
  store i32 %26, i32* %10, align 4
  br label %36

27:                                               ; preds = %23
  %28 = load i32, i32* @DRV_MB_PARAM_WOL_DISABLED, align 4
  store i32 %28, i32* %10, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @DRV_MB_PARAM_WOL_ENABLED, align 4
  store i32 %30, i32* %10, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @DP_ERR(%struct.ecore_hwfn* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %57

36:                                               ; preds = %29, %27, %25
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %39 = load i32, i32* @DRV_MSG_CODE_OV_UPDATE_WOL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ecore_mcp_cmd(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %39, i32 %40, i32* %8, i32* %9)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @DP_ERR(%struct.ecore_hwfn* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %31, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #1

declare dso_local i32 @ecore_mcp_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
