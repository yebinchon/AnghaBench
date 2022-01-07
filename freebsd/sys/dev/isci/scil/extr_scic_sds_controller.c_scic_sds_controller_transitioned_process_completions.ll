; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_transitioned_process_completions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_transitioned_process_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64* }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"scic_sds_controller_transitioned_process_completions(0x%x) enter\0A\00", align 1
@SCIC_LOG_OBJECT_COMPLETION_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"completion queue beginning get : 0x%08x\0A\00", align 1
@SMU_CQGR_CYCLE_BIT = common dso_local global i64 0, align 8
@SMU_CQGR_EVENT_CYCLE_BIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"completion queue entry : 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"SCIC Controller ignoring completion type %x\0A\00", align 1
@ENABLE = common dso_local global i32 0, align 4
@EVENT_ENABLE = common dso_local global i32 0, align 4
@EVENT_POINTER = common dso_local global i32 0, align 4
@POINTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"completion queue ending get : 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @scic_sds_controller_transitioned_process_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_transitioned_process_completions(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %9)
  %11 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = ptrtoint %struct.TYPE_8__* %12 to i32
  %14 = call i32 @SCIC_LOG_TRACE(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %15)
  %17 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @SCIC_LOG_TRACE(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @NORMALIZE_GET_POINTER(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @SMU_CQGR_CYCLE_BIT, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %27, %30
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @NORMALIZE_EVENT_POINTER(i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @SMU_CQGR_EVENT_CYCLE_BIT, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %36, %39
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %90, %1
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @NORMALIZE_GET_POINTER_CYCLE_BIT(i64 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @COMPLETION_QUEUE_CYCLE_BIT(i64 %49)
  %51 = icmp eq i64 %43, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %41
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %3, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @INCREMENT_COMPLETION_QUEUE_GET(%struct.TYPE_8__* %61, i64 %62, i64 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %65)
  %67 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %68 = load i64, i64* %4, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @SCIC_LOG_TRACE(i32 %69)
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @SCU_GET_COMPLETION_TYPE(i64 %71)
  switch i32 %72, label %83 [
    i32 129, label %73
    i32 131, label %77
    i32 132, label %82
    i32 130, label %82
    i32 128, label %82
  ]

73:                                               ; preds = %52
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @scic_sds_controller_task_completion(%struct.TYPE_8__* %74, i64 %75)
  br label %90

77:                                               ; preds = %52
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @INCREMENT_EVENT_QUEUE_GET(%struct.TYPE_8__* %78, i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %52, %52, %52, %77
  br label %83

83:                                               ; preds = %52, %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %84)
  %86 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %87 = load i64, i64* %4, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @SCIC_LOG_WARNING(i32 %88)
  br label %90

90:                                               ; preds = %83, %73
  br label %41

91:                                               ; preds = %41
  %92 = load i64, i64* %3, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load i32, i32* @ENABLE, align 4
  %96 = call i64 @SMU_CQGR_GEN_BIT(i32 %95)
  %97 = load i32, i32* @EVENT_ENABLE, align 4
  %98 = call i64 @SMU_CQGR_GEN_BIT(i32 %97)
  %99 = or i64 %96, %98
  %100 = load i64, i64* %8, align 8
  %101 = or i64 %99, %100
  %102 = load i32, i32* @EVENT_POINTER, align 4
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @SMU_CQGR_GEN_VAL(i32 %102, i64 %103)
  %105 = or i64 %101, %104
  %106 = load i64, i64* %6, align 8
  %107 = or i64 %105, %106
  %108 = load i32, i32* @POINTER, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @SMU_CQGR_GEN_VAL(i32 %108, i64 %109)
  %111 = or i64 %107, %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @SMU_CQGR_WRITE(%struct.TYPE_8__* %114, i64 %117)
  br label %119

119:                                              ; preds = %94, %91
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %121 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %120)
  %122 = load i32, i32* @SCIC_LOG_OBJECT_COMPLETION_QUEUE, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @SCIC_LOG_TRACE(i32 %126)
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_8__*) #1

declare dso_local i64 @NORMALIZE_GET_POINTER(i64) #1

declare dso_local i64 @NORMALIZE_EVENT_POINTER(i64) #1

declare dso_local i64 @NORMALIZE_GET_POINTER_CYCLE_BIT(i64) #1

declare dso_local i64 @COMPLETION_QUEUE_CYCLE_BIT(i64) #1

declare dso_local i32 @INCREMENT_COMPLETION_QUEUE_GET(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @SCU_GET_COMPLETION_TYPE(i64) #1

declare dso_local i32 @scic_sds_controller_task_completion(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @INCREMENT_EVENT_QUEUE_GET(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i64 @SMU_CQGR_GEN_BIT(i32) #1

declare dso_local i64 @SMU_CQGR_GEN_VAL(i32, i64) #1

declare dso_local i32 @SMU_CQGR_WRITE(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
