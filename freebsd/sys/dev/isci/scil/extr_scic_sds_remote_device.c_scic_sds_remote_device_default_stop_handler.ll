; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_default_stop_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_default_stop_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCIC_LOG_OBJECT_SSP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_SMP_REMOTE_TARGET = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"SCIC Remote Device requested to stop while in wrong state %d\0A\00", align 1
@SCI_FAILURE_INVALID_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_remote_device_default_stop_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @sci_base_object_get_logger(i32* %3)
  %5 = load i32, i32* @SCIC_LOG_OBJECT_SSP_REMOTE_TARGET, align 4
  %6 = load i32, i32* @SCIC_LOG_OBJECT_SMP_REMOTE_TARGET, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %9 = or i32 %7, %8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @scic_sds_remote_device_get_base_state_machine(i32* %10)
  %12 = call i32 @sci_base_state_machine_get_state(i32 %11)
  %13 = call i32 @SCIC_LOG_WARNING(i32 %12)
  %14 = load i32, i32* @SCI_FAILURE_INVALID_STATE, align 4
  ret i32 %14
}

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @sci_base_state_machine_get_state(i32) #1

declare dso_local i32 @scic_sds_remote_device_get_base_state_machine(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
