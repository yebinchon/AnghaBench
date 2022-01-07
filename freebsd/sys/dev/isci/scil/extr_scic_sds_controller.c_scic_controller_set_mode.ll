; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_10__, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"scic_controller_set_mode(0x%x, 0x%x) enter\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_INITIALIZING = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_INITIALIZED = common dso_local global i64 0, align 8
@SCI_MAX_REMOTE_DEVICES = common dso_local global i32 0, align 4
@SCU_IO_REQUEST_COUNT = common dso_local global i32 0, align 4
@SCU_UNSOLICITED_FRAME_COUNT = common dso_local global i32 0, align 4
@SCU_EVENT_COUNT = common dso_local global i32 0, align 4
@SCU_COMPLETION_QUEUE_COUNT = common dso_local global i32 0, align 4
@SCI_MIN_REMOTE_DEVICES = common dso_local global i32 0, align 4
@SCI_MIN_IO_REQUESTS = common dso_local global i32 0, align 4
@SCU_MIN_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@SCU_MIN_EVENTS = common dso_local global i32 0, align 4
@SCU_MIN_COMPLETION_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_set_mode(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %5, align 8
  %9 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @sci_base_object_get_logger(i64 %10)
  %12 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @SCIC_LOG_TRACE(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_INITIALIZING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_INITIALIZED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %120

31:                                               ; preds = %23, %2
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %117 [
    i32 128, label %33
    i32 129, label %75
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @SCI_MAX_REMOTE_DEVICES, align 4
  %38 = call i8* @MIN(i8* %36, i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @SCU_IO_REQUEST_COUNT, align 4
  %45 = call i8* @MIN(i8* %43, i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @SCU_UNSOLICITED_FRAME_COUNT, align 4
  %54 = call i8* @MIN(i8* %52, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @SCU_EVENT_COUNT, align 4
  %63 = call i8* @MIN(i8* %61, i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @SCU_COMPLETION_QUEUE_COUNT, align 4
  %70 = call i8* @MIN(i8* %68, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = call i32 @scic_sds_controller_build_memory_descriptor_table(%struct.TYPE_11__* %73)
  br label %119

75:                                               ; preds = %31
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @SCI_MIN_REMOTE_DEVICES, align 4
  %80 = call i8* @MIN(i8* %78, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @SCI_MIN_IO_REQUESTS, align 4
  %87 = call i8* @MIN(i8* %85, i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @SCU_MIN_UNSOLICITED_FRAMES, align 4
  %96 = call i8* @MIN(i8* %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i8* %96, i8** %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @SCU_MIN_EVENTS, align 4
  %105 = call i8* @MIN(i8* %103, i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @SCU_MIN_COMPLETION_QUEUE_ENTRIES, align 4
  %112 = call i8* @MIN(i8* %110, i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = call i32 @scic_sds_controller_build_memory_descriptor_table(%struct.TYPE_11__* %115)
  br label %119

117:                                              ; preds = %31
  %118 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %75, %33
  br label %122

120:                                              ; preds = %23
  %121 = load i32, i32* @SCI_FAILURE_INVALID_STATE, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i8* @MIN(i8*, i32) #1

declare dso_local i32 @scic_sds_controller_build_memory_descriptor_table(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
