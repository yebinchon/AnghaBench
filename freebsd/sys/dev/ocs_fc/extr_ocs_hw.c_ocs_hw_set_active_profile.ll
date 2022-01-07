; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_active_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_active_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_set_active_profile_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"SET_ACTIVE_PROFILE failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_set_active_profile(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = call i64 @sli_get_if_type(i32* %15)
  %17 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %20, i64* %5, align 8
  br label %101

21:                                               ; preds = %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %26 = load i32, i32* @OCS_M_ZERO, align 4
  %27 = load i32, i32* @OCS_M_NOWAIT, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.TYPE_11__* @ocs_malloc(i32 %24, i32 %25, i32 %28)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ocs_log_err(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %37, i64* %5, align 8
  br label %101

38:                                               ; preds = %21
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCS_M_NOWAIT, align 4
  %43 = call %struct.TYPE_11__* @ocs_malloc(i32 %41, i32 16, i32 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %11, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = icmp eq %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ocs_log_err(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %56 = call i32 @ocs_free(i32 %53, %struct.TYPE_11__* %54, i32 %55)
  %57 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %57, i64* %5, align 8
  br label %101

58:                                               ; preds = %38
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @sli_cmd_common_set_active_profile(i32* %66, %struct.TYPE_11__* %67, i32 %68, i32 0, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %76 = load i32, i32* @ocs_hw_set_active_profile_cb, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = call i64 @ocs_hw_command(%struct.TYPE_12__* %73, %struct.TYPE_11__* %74, i32 %75, i32 %76, %struct.TYPE_11__* %77)
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %72, %58
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ocs_log_test(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %93 = call i32 @ocs_free(i32 %90, %struct.TYPE_11__* %91, i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = call i32 @ocs_free(i32 %96, %struct.TYPE_11__* %97, i32 16)
  br label %99

99:                                               ; preds = %83, %79
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %46, %32, %19
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local %struct.TYPE_11__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @sli_cmd_common_set_active_profile(i32*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
