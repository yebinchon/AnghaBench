; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_cmd_substate_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_cmd_substate_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@scic_sds_stp_remote_device_ready_substate_handler_table = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD = common dso_local global i32 0, align 4
@SCIC_REMOTE_DEVICE_NOT_READY_SATA_REQUEST_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scic_sds_stp_remote_device_ready_cmd_substate_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_stp_remote_device_ready_cmd_substate_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = load i32, i32* @scic_sds_stp_remote_device_ready_substate_handler_table, align 4
  %14 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD, align 4
  %15 = call i32 @SET_STATE_HANDLER(%struct.TYPE_5__* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = call i32 @scic_sds_remote_device_get_controller(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = load i32, i32* @SCIC_REMOTE_DEVICE_NOT_READY_SATA_REQUEST_STARTED, align 4
  %20 = call i32 @scic_cb_remote_device_not_ready(i32 %17, %struct.TYPE_5__* %18, i32 %19)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @scic_cb_remote_device_not_ready(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @scic_sds_remote_device_get_controller(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
