; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_process_completions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_process_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64* }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"scic_sds_controller_process_completions(0x%x) enter\0A\00", align 1
@SCIC_LOG_OBJECT_COMPLETION_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"completion queue beginning get : 0x%08x\0A\00", align 1
@SMU_CQGR_CYCLE_BIT = common dso_local global i64 0, align 8
@SMU_CQGR_EVENT_CYCLE_BIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"completion queue entry : 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"SCIC Controller received unknown completion type %x\0A\00", align 1
@ENABLE = common dso_local global i32 0, align 4
@EVENT_ENABLE = common dso_local global i32 0, align 4
@EVENT_POINTER = common dso_local global i32 0, align 4
@POINTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"completion queue ending get : 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @scic_sds_controller_process_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_process_completions(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %9)
  %11 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = ptrtoint %struct.TYPE_11__* %12 to i32
  %14 = call i32 @SCIC_LOG_TRACE(i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %15)
  %17 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @SCIC_LOG_TRACE(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @NORMALIZE_GET_POINTER(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @SMU_CQGR_CYCLE_BIT, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %27, %30
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @NORMALIZE_EVENT_POINTER(i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @SMU_CQGR_EVENT_CYCLE_BIT, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %36, %39
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %104, %1
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @NORMALIZE_GET_POINTER_CYCLE_BIT(i64 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @COMPLETION_QUEUE_CYCLE_BIT(i64 %49)
  %51 = icmp eq i64 %43, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %41
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %3, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %4, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @INCREMENT_COMPLETION_QUEUE_GET(%struct.TYPE_11__* %61, i64 %62, i64 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %65)
  %67 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %68 = load i64, i64* %4, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @SCIC_LOG_TRACE(i32 %69)
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @SCU_GET_COMPLETION_TYPE(i64 %71)
  switch i32 %72, label %97 [
    i32 129, label %73
    i32 130, label %77
    i32 128, label %81
    i32 132, label %85
    i32 131, label %89
  ]

73:                                               ; preds = %52
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @scic_sds_controller_task_completion(%struct.TYPE_11__* %74, i64 %75)
  br label %104

77:                                               ; preds = %52
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @scic_sds_controller_sdma_completion(%struct.TYPE_11__* %78, i64 %79)
  br label %104

81:                                               ; preds = %52
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @scic_sds_controller_unsolicited_frame(%struct.TYPE_11__* %82, i64 %83)
  br label %104

85:                                               ; preds = %52
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @scic_sds_controller_event_completion(%struct.TYPE_11__* %86, i64 %87)
  br label %104

89:                                               ; preds = %52
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @INCREMENT_EVENT_QUEUE_GET(%struct.TYPE_11__* %90, i64 %91, i64 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @scic_sds_controller_event_completion(%struct.TYPE_11__* %94, i64 %95)
  br label %104

97:                                               ; preds = %52
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %98)
  %100 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %101 = load i64, i64* %4, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @SCIC_LOG_WARNING(i32 %102)
  br label %104

104:                                              ; preds = %97, %89, %85, %81, %77, %73
  br label %41

105:                                              ; preds = %41
  %106 = load i64, i64* %3, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = load i32, i32* @ENABLE, align 4
  %110 = call i64 @SMU_CQGR_GEN_BIT(i32 %109)
  %111 = load i32, i32* @EVENT_ENABLE, align 4
  %112 = call i64 @SMU_CQGR_GEN_BIT(i32 %111)
  %113 = or i64 %110, %112
  %114 = load i64, i64* %8, align 8
  %115 = or i64 %113, %114
  %116 = load i32, i32* @EVENT_POINTER, align 4
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @SMU_CQGR_GEN_VAL(i32 %116, i64 %117)
  %119 = or i64 %115, %118
  %120 = load i64, i64* %6, align 8
  %121 = or i64 %119, %120
  %122 = load i32, i32* @POINTER, align 4
  %123 = load i64, i64* %5, align 8
  %124 = call i64 @SMU_CQGR_GEN_VAL(i32 %122, i64 %123)
  %125 = or i64 %121, %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @SMU_CQGR_WRITE(%struct.TYPE_11__* %128, i64 %131)
  br label %133

133:                                              ; preds = %108, %105
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %134)
  %136 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @SCIC_LOG_TRACE(i32 %140)
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_11__*) #1

declare dso_local i64 @NORMALIZE_GET_POINTER(i64) #1

declare dso_local i64 @NORMALIZE_EVENT_POINTER(i64) #1

declare dso_local i64 @NORMALIZE_GET_POINTER_CYCLE_BIT(i64) #1

declare dso_local i64 @COMPLETION_QUEUE_CYCLE_BIT(i64) #1

declare dso_local i32 @INCREMENT_COMPLETION_QUEUE_GET(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @SCU_GET_COMPLETION_TYPE(i64) #1

declare dso_local i32 @scic_sds_controller_task_completion(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @scic_sds_controller_sdma_completion(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @scic_sds_controller_unsolicited_frame(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @scic_sds_controller_event_completion(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @INCREMENT_EVENT_QUEUE_GET(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i64 @SMU_CQGR_GEN_BIT(i32) #1

declare dso_local i64 @SMU_CQGR_GEN_VAL(i32, i64) #1

declare dso_local i32 @SMU_CQGR_WRITE(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
