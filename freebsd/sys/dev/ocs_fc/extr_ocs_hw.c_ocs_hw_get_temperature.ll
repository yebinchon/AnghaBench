; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_temperature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to malloc mbox\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to malloc cb_arg\00", align 1
@SLI4_WKI_TAG_SAT_TEM = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_temp = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"DUMP_TYPE4 failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_get_temperature(%struct.TYPE_12__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %16 = load i32, i32* @OCS_M_ZERO, align 4
  %17 = load i32, i32* @OCS_M_NOWAIT, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.TYPE_11__* @ocs_malloc(i32 %14, i32 %15, i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ocs_log_err(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %27, i64* %4, align 8
  br label %91

28:                                               ; preds = %3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCS_M_NOWAIT, align 4
  %33 = call %struct.TYPE_11__* @ocs_malloc(i32 %31, i32 16, i32 %32)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocs_log_err(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %46 = call i32 @ocs_free(i32 %43, %struct.TYPE_11__* %44, i32 %45)
  %47 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %47, i64* %4, align 8
  br label %91

48:                                               ; preds = %28
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %59 = load i32, i32* @SLI4_WKI_TAG_SAT_TEM, align 4
  %60 = call i64 @sli_cmd_dump_type4(i32* %56, %struct.TYPE_11__* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %48
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %66 = load i32, i32* @ocs_hw_cb_temp, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = call i64 @ocs_hw_command(%struct.TYPE_12__* %63, %struct.TYPE_11__* %64, i32 %65, i32 %66, %struct.TYPE_11__* %67)
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %62, %48
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ocs_log_test(i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %83 = call i32 @ocs_free(i32 %80, %struct.TYPE_11__* %81, i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = call i32 @ocs_free(i32 %86, %struct.TYPE_11__* %87, i32 16)
  br label %89

89:                                               ; preds = %73, %69
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %89, %36, %22
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local %struct.TYPE_11__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @sli_cmd_dump_type4(i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
