; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_host_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to malloc mbox\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to malloc cb_arg\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_host_stat = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"READ_HOST_STATS failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_get_host_stats(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = bitcast %struct.TYPE_13__* %7 to { i8*, i32 }*
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 0
  store i8* %1, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 1
  store i32 %2, i32* %16, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %22 = load i32, i32* @OCS_M_ZERO, align 4
  %23 = call %struct.TYPE_13__* @ocs_malloc(i32 %20, i32 %21, i32 %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %13, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ocs_log_err(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %31, i64* %6, align 8
  br label %98

32:                                               ; preds = %5
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_13__* @ocs_malloc(i32 %35, i32 16, i32 0)
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %12, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %38 = icmp eq %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocs_log_err(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %49 = call i32 @ocs_free(i32 %46, %struct.TYPE_13__* %47, i32 %48)
  %50 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %50, i64* %6, align 8
  br label %98

51:                                               ; preds = %32
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %61 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %62 = bitcast %struct.TYPE_13__* %7 to { i8*, i32 }*
  %63 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @sli_cmd_read_status(i32* %59, %struct.TYPE_13__* %60, i32 %61, i8* %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %51
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %72 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %73 = load i32, i32* @ocs_hw_cb_host_stat, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %75 = call i64 @ocs_hw_command(%struct.TYPE_14__* %70, %struct.TYPE_13__* %71, i32 %72, i32 %73, %struct.TYPE_13__* %74)
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %69, %51
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ocs_log_test(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %89 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %90 = call i32 @ocs_free(i32 %87, %struct.TYPE_13__* %88, i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = call i32 @ocs_free(i32 %93, %struct.TYPE_13__* %94, i32 16)
  br label %96

96:                                               ; preds = %80, %76
  %97 = load i64, i64* %11, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %39, %26
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local %struct.TYPE_13__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @sli_cmd_read_status(i32*, %struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
