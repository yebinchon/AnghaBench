; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_polling_completion_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_polling_completion_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"scic_sds_controller_polling_completion_handler(0x%d) enter\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"SCIC Controller has encountered a fatal error.\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_FAILED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SMU_ISR_COMPLETION = common dso_local global i32 0, align 4
@SMU_ISR_QUEUE_ERROR = common dso_local global i32 0, align 4
@SMU_ISR_QUEUE_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @scic_sds_controller_polling_completion_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_polling_completion_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %5)
  %7 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = ptrtoint %struct.TYPE_10__* %8 to i32
  %10 = call i32 @SCIC_LOG_TRACE(i32 %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %17)
  %19 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %20 = call i32 @SCIC_LOG_ERROR(i32 ptrtoint ([48 x i8]* @.str.1 to i32))
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_10__* %21)
  %23 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %24 = call i32 @sci_base_state_machine_change_state(i32 %22, i32 %23)
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i64 @scic_sds_controller_completion_queue_has_entries(%struct.TYPE_10__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i32 @scic_sds_controller_process_completions(%struct.TYPE_10__* %36)
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @scic_sds_controller_transitioned_process_completions(%struct.TYPE_10__* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %16
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i32, i32* @SMU_ISR_COMPLETION, align 4
  %46 = load i32, i32* @SMU_ISR_QUEUE_ERROR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SMU_ISR_QUEUE_SUSPEND, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @SMU_ISR_WRITE(%struct.TYPE_10__* %44, i32 %49)
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(%struct.TYPE_10__*) #1

declare dso_local i64 @scic_sds_controller_completion_queue_has_entries(%struct.TYPE_10__*) #1

declare dso_local i32 @scic_sds_controller_process_completions(%struct.TYPE_10__*) #1

declare dso_local i32 @scic_sds_controller_transitioned_process_completions(%struct.TYPE_10__*) #1

declare dso_local i32 @SMU_ISR_WRITE(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
