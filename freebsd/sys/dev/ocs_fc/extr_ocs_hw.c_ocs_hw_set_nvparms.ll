; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_nvparms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_nvparms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8*, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_set_nvparms_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SET_NVPARMS failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_set_nvparms(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i64, align 8
  %20 = bitcast %struct.TYPE_17__* %10 to { i8*, i32 }*
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %20, i32 0, i32 0
  store i8* %4, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %20, i32 0, i32 1
  store i32 %5, i32* %22, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %23 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %23, i64* %19, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %28 = load i32, i32* @OCS_M_ZERO, align 4
  %29 = load i32, i32* @OCS_M_NOWAIT, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_17__* @ocs_malloc(i32 %26, i32 %27, i32 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %17, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %33 = icmp eq %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ocs_log_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %39, i64* %9, align 8
  br label %105

40:                                               ; preds = %8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OCS_M_NOWAIT, align 4
  %45 = call %struct.TYPE_17__* @ocs_malloc(i32 %43, i32 16, i32 %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %18, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %47 = icmp eq %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ocs_log_err(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %57 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %58 = call i32 @ocs_free(i32 %55, %struct.TYPE_17__* %56, i32 %57)
  %59 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %59, i64* %9, align 8
  br label %105

60:                                               ; preds = %40
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %70 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @sli_cmd_write_nvparms(i32* %68, %struct.TYPE_17__* %69, i32 %70, %struct.TYPE_17__* %71, %struct.TYPE_17__* %72, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %10, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %60
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %79 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %80 = load i32, i32* @ocs_hw_set_nvparms_cb, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %82 = call i64 @ocs_hw_command(%struct.TYPE_18__* %77, %struct.TYPE_17__* %78, i32 %79, i32 %80, %struct.TYPE_17__* %81)
  store i64 %82, i64* %19, align 8
  br label %83

83:                                               ; preds = %76, %60
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ocs_log_test(i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %96 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %97 = call i32 @ocs_free(i32 %94, %struct.TYPE_17__* %95, i32 %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %102 = call i32 @ocs_free(i32 %100, %struct.TYPE_17__* %101, i32 16)
  br label %103

103:                                              ; preds = %87, %83
  %104 = load i64, i64* %19, align 8
  store i64 %104, i64* %9, align 8
  br label %105

105:                                              ; preds = %103, %48, %34
  %106 = load i64, i64* %9, align 8
  ret i64 %106
}

declare dso_local %struct.TYPE_17__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @sli_cmd_write_nvparms(i32*, %struct.TYPE_17__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
