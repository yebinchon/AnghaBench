; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_ncq_error_substate_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_ncq_error_substate_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@scic_sds_stp_remote_device_ready_substate_handler_table = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR = common dso_local global i32 0, align 4
@SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scic_sds_stp_remote_device_ready_ncq_error_substate_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_stp_remote_device_ready_ncq_error_substate_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* @scic_sds_stp_remote_device_ready_substate_handler_table, align 4
  %8 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR, align 4
  %9 = call i32 @SET_STATE_HANDLER(%struct.TYPE_5__* %6, i32 %7, i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = call i32 @scic_sds_remote_device_get_controller(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @scic_cb_remote_device_not_ready(i32 %17, %struct.TYPE_5__* %18, i64 %21)
  br label %23

23:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @scic_cb_remote_device_not_ready(i32, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @scic_sds_remote_device_get_controller(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
