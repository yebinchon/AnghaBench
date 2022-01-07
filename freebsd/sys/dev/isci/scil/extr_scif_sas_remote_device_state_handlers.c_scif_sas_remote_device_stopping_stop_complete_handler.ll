; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_state_handlers.c_scif_sas_remote_device_stopping_stop_complete_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_state_handlers.c_scif_sas_remote_device_stopping_stop_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SCI_BASE_REMOTE_DEVICE_STATE_STOPPED = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Device:0x%x Status:0x%x failed to stop core device\0A\00", align 1
@SCI_CONTROLLER_REMOTE_DEVICE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @scif_sas_remote_device_stopping_stop_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_remote_device_stopping_stop_complete_handler(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* @SCI_BASE_REMOTE_DEVICE_STATE_STOPPED, align 4
  %9 = call i32 @sci_base_state_machine_change_state(i32* %7, i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @SCI_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @sci_base_object_get_logger(%struct.TYPE_8__* %14)
  %16 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %17 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @SCIF_LOG_ERROR(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SCI_CONTROLLER_REMOTE_DEVICE_ERROR, align 4
  %29 = call i32 @scif_cb_controller_error(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_8__*) #1

declare dso_local i32 @scif_cb_controller_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
