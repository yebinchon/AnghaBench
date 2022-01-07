; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_single_vector_completion_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_single_vector_completion_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"scic_sds_controller_single_vector_completion_handler(0x%d) enter\0A\00", align 1
@SMU_ISR_QUEUE_ERROR = common dso_local global i32 0, align 4
@SMU_ISR_QUEUE_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"SCIC Controller has encountered a fatal error.\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_FAILED = common dso_local global i32 0, align 4
@SMU_ISR_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scic_sds_controller_single_vector_completion_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_single_vector_completion_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @sci_base_object_get_logger(i32* %6)
  %8 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = ptrtoint i32* %9 to i32
  %11 = call i32 @SCIC_LOG_TRACE(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @SMU_ISR_READ(i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @SMU_ISR_QUEUE_ERROR, align 4
  %15 = load i32, i32* @SMU_ISR_QUEUE_SUSPEND, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SMU_ISR_QUEUE_ERROR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @sci_base_object_get_logger(i32* %24)
  %26 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %27 = call i32 @SCIC_LOG_ERROR(i32 ptrtoint ([48 x i8]* @.str.1 to i32))
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @scic_sds_controller_get_base_state_machine(i32* %28)
  %30 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %31 = call i32 @sci_base_state_machine_change_state(i32 %29, i32 %30)
  br label %65

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SMU_ISR_QUEUE_SUSPEND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @scic_sds_controller_completion_queue_has_entries(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @sci_base_object_get_logger(i32* %42)
  %44 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %45 = call i32 @SCIC_LOG_ERROR(i32 ptrtoint ([48 x i8]* @.str.1 to i32))
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @scic_sds_controller_get_base_state_machine(i32* %46)
  %48 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_FAILED, align 4
  %49 = call i32 @sci_base_state_machine_change_state(i32 %47, i32 %48)
  br label %65

50:                                               ; preds = %37, %32
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @scic_sds_controller_completion_queue_has_entries(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @scic_sds_controller_process_completions(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @SMU_ISR_COMPLETION, align 4
  %59 = load i32, i32* @SMU_ISR_QUEUE_SUSPEND, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @SMU_ISR_WRITE(i32* %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %50
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @SMU_IMR_WRITE(i32* %63, i32 0)
  br label %65

65:                                               ; preds = %62, %41, %23
  ret void
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @SMU_ISR_READ(i32*) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(i32*) #1

declare dso_local i64 @scic_sds_controller_completion_queue_has_entries(i32*) #1

declare dso_local i32 @scic_sds_controller_process_completions(i32*) #1

declare dso_local i32 @SMU_ISR_WRITE(i32*, i32) #1

declare dso_local i32 @SMU_IMR_WRITE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
