; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCI_BASE_CONTROLLER_STATE_STARTING = common dso_local global i64 0, align 8
@SCI_FAILURE_TIMEOUT = common dso_local global i32 0, align 4
@SCI_BASE_CONTROLLER_STATE_STOPPING = common dso_local global i64 0, align 8
@SCI_BASE_CONTROLLER_STATE_FAILED = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Controller timer fired when controller was not in a state being timed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_timeout_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @scic_sds_controller_get_base_state_machine(i32* %7)
  %9 = call i64 @sci_base_state_machine_get_state(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_STARTING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @SCI_FAILURE_TIMEOUT, align 4
  %16 = call i32 @scic_sds_controller_transition_to_ready(i32* %14, i32 %15)
  br label %35

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @SCI_BASE_CONTROLLER_STATE_STOPPING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @scic_sds_controller_get_base_state_machine(i32* %22)
  %24 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %25 = call i32 @sci_base_state_machine_change_state(i32 %23, i32 %24)
  %26 = load i64, i64* %2, align 8
  %27 = load i32, i32* @SCI_FAILURE_TIMEOUT, align 4
  %28 = call i32 @scic_cb_controller_stop_complete(i64 %26, i32 %27)
  br label %34

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sci_base_object_get_logger(i32* %30)
  %32 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %33 = call i32 @SCIC_LOG_ERROR(i32 ptrtoint ([72 x i8]* @.str to i32))
  br label %34

34:                                               ; preds = %29, %21
  br label %35

35:                                               ; preds = %34, %13
  ret void
}

declare dso_local i64 @sci_base_state_machine_get_state(i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(i32*) #1

declare dso_local i32 @scic_sds_controller_transition_to_ready(i32*, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_cb_controller_stop_complete(i64, i32) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
