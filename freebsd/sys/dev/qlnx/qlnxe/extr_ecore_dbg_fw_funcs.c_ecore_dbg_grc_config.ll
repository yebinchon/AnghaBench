; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_grc_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_grc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dbg_grc_config: paramId = %d, val = %d\0A\00", align 1
@MAX_DBG_GRC_PARAMS = common dso_local global i32 0, align 4
@DBG_STATUS_INVALID_ARGS = common dso_local global i32 0, align 4
@s_grc_param_defs = common dso_local global %struct.TYPE_2__* null, align 8
@DBG_GRC_PARAM_EXCLUDE_ALL = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_CRASH = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_grc_config(%struct.ecore_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load i32, i32* @ECORE_MSG_DEBUG, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %10, i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = call i32 @ecore_dbg_grc_init_params(%struct.ecore_hwfn* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %21, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31, %22
  %41 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %41, i32* %4, align 4
  br label %101

42:                                               ; preds = %31
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %54, i32* %4, align 4
  br label %101

55:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %90, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MAX_DBG_GRC_PARAMS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @DBG_GRC_PARAM_EXCLUDE_ALL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  br label %85

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @DBG_GRC_PARAM_CRASH, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_grc_param_defs, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %9, align 4
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @DBG_STATUS_INVALID_ARGS, align 4
  store i32 %83, i32* %4, align 4
  br label %101

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ecore_grc_set_param(%struct.ecore_hwfn* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %56

93:                                               ; preds = %56
  br label %99

94:                                               ; preds = %42
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @ecore_grc_set_param(%struct.ecore_hwfn* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %82, %53, %40, %20
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_dbg_grc_init_params(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_grc_set_param(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
