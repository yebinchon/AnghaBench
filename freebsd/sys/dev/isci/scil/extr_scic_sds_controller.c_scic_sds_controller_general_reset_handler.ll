; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_general_reset_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_general_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"scic_sds_controller_resetting_state_enter(0x%x) enter\0A\00", align 1
@SCI_BASE_CONTROLLER_STATE_RESETTING = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @scic_sds_controller_general_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_controller_general_reset_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @sci_base_object_get_logger(i32* %5)
  %7 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = ptrtoint i32* %8 to i32
  %10 = call i32 @SCIC_LOG_TRACE(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @scic_sds_controller_release_resource(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @scic_sds_controller_get_base_state_machine(i32* %13)
  %15 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_RESETTING, align 4
  %16 = call i32 @sci_base_state_machine_change_state(i32 %14, i32 %15)
  %17 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %17
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scic_sds_controller_release_resource(i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_controller_get_base_state_machine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
