; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_active_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_active_profile.c"
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
@ocs_hw_get_active_profile_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"GET_ACTIVE_PROFILE failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_get_active_profile(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = call i64 @sli_get_if_type(i32* %13)
  %15 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %18, i64* %4, align 8
  br label %98

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %24 = load i32, i32* @OCS_M_ZERO, align 4
  %25 = load i32, i32* @OCS_M_NOWAIT, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.TYPE_11__* @ocs_malloc(i32 %22, i32 %23, i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ocs_log_err(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %35, i64* %4, align 8
  br label %98

36:                                               ; preds = %19
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OCS_M_NOWAIT, align 4
  %41 = call %struct.TYPE_11__* @ocs_malloc(i32 %39, i32 16, i32 %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ocs_log_err(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %54 = call i32 @ocs_free(i32 %51, %struct.TYPE_11__* %52, i32 %53)
  %55 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %55, i64* %4, align 8
  br label %98

56:                                               ; preds = %36
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %67 = call i64 @sli_cmd_common_get_active_profile(i32* %64, %struct.TYPE_11__* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %73 = load i32, i32* @ocs_hw_get_active_profile_cb, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = call i64 @ocs_hw_command(%struct.TYPE_12__* %70, %struct.TYPE_11__* %71, i32 %72, i32 %73, %struct.TYPE_11__* %74)
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %69, %56
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ocs_log_test(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %90 = call i32 @ocs_free(i32 %87, %struct.TYPE_11__* %88, i32 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %95 = call i32 @ocs_free(i32 %93, %struct.TYPE_11__* %94, i32 16)
  br label %96

96:                                               ; preds = %80, %76
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %96, %44, %30, %17
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local %struct.TYPE_11__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @sli_cmd_common_get_active_profile(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
