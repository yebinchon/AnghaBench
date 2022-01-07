; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_link_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_link_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to malloc mbox\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to malloc cb_arg\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_link_stat = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"READ_LINK_STATS failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_get_link_stats(%struct.TYPE_18__* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = bitcast %struct.TYPE_17__* %10 to { i8*, i32 }*
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %18, i32 0, i32 0
  store i8* %1, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %18, i32 0, i32 1
  store i32 %2, i32* %20, align 8
  %21 = bitcast %struct.TYPE_17__* %11 to { i8*, i32 }*
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %21, i32 0, i32 0
  store i8* %3, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %21, i32 0, i32 1
  store i32 %4, i32* %23, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %12, align 8
  store i32 %6, i32* %13, align 4
  store i8* %7, i8** %14, align 8
  %24 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %24, i64* %15, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %29 = load i32, i32* @OCS_M_ZERO, align 4
  %30 = load i32, i32* @OCS_M_NOWAIT, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.TYPE_17__* @ocs_malloc(i32 %27, i32 %28, i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %17, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %34 = icmp eq %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ocs_log_err(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %40, i64* %9, align 8
  br label %108

41:                                               ; preds = %8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OCS_M_NOWAIT, align 4
  %46 = call %struct.TYPE_17__* @ocs_malloc(i32 %44, i32 16, i32 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %16, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %48 = icmp eq %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ocs_log_err(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %58 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %59 = call i32 @ocs_free(i32 %56, %struct.TYPE_17__* %57, i32 %58)
  %60 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %60, i64* %9, align 8
  br label %108

61:                                               ; preds = %41
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %71 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %72 = bitcast %struct.TYPE_17__* %10 to { i8*, i32 }*
  %73 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %72, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @sli_cmd_read_link_stats(i32* %69, %struct.TYPE_17__* %70, i32 %71, i8* %74, i32 %76, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %11, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %5)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %61
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %82 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %83 = load i32, i32* @ocs_hw_cb_link_stat, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %85 = call i64 @ocs_hw_command(%struct.TYPE_18__* %80, %struct.TYPE_17__* %81, i32 %82, i32 %83, %struct.TYPE_17__* %84)
  store i64 %85, i64* %15, align 8
  br label %86

86:                                               ; preds = %79, %61
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ocs_log_test(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %99 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %100 = call i32 @ocs_free(i32 %97, %struct.TYPE_17__* %98, i32 %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %105 = call i32 @ocs_free(i32 %103, %struct.TYPE_17__* %104, i32 16)
  br label %106

106:                                              ; preds = %90, %86
  %107 = load i64, i64* %15, align 8
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %106, %49, %35
  %109 = load i64, i64* %9, align 8
  ret i64 %109
}

declare dso_local %struct.TYPE_17__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @sli_cmd_read_link_stats(i32*, %struct.TYPE_17__*, i32, i8*, i32, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
