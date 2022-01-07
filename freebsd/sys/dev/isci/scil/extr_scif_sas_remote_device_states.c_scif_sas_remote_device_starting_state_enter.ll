; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_states.c_scif_sas_remote_device_starting_state_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_states.c_scif_sas_remote_device_starting_state_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32*)* }

@scif_sas_remote_device_state_handler_table = common dso_local global i32 0, align 4
@SCI_BASE_REMOTE_DEVICE_STATE_STARTING = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RemoteDevice:0x%x starting/configuring\0A\00", align 1
@SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY = common dso_local global i32 0, align 4
@SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_CONTROLLER_REMOTE_DEVICE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scif_sas_remote_device_starting_state_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_remote_device_starting_state_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load i32, i32* @scif_sas_remote_device_state_handler_table, align 4
  %8 = load i32, i32* @SCI_BASE_REMOTE_DEVICE_STATE_STARTING, align 4
  %9 = call i32 @SET_STATE_HANDLER(%struct.TYPE_10__* %6, i32 %7, i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %10)
  %12 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %13 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = ptrtoint %struct.TYPE_10__* %15 to i32
  %17 = call i32 @SCIF_LOG_INFO(i32 %16)
  %18 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %23 = call i32 @sci_base_state_machine_start(i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT, align 4
  %28 = call i64 @scic_remote_device_start(i32 %26, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SCI_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32 (i32*)*, i32 (i32*)** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = call i32 %42(i32* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SCI_CONTROLLER_REMOTE_DEVICE_ERROR, align 4
  %52 = call i32 @scif_cb_controller_error(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

declare dso_local i32 @sci_base_state_machine_start(i32*) #1

declare dso_local i64 @scic_remote_device_start(i32, i32) #1

declare dso_local i32 @scif_cb_controller_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
