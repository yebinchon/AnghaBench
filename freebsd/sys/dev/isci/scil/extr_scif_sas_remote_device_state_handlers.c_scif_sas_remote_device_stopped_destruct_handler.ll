; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_state_handlers.c_scif_sas_remote_device_stopped_destruct_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device_state_handlers.c_scif_sas_remote_device_stopped_destruct_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_BASE_REMOTE_DEVICE_STATE_FINAL = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Device:0x%x Status:0x%x failed to destruct core device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @scif_sas_remote_device_stopped_destruct_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scif_sas_remote_device_stopped_destruct_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @scic_remote_device_get_protocols(i32 %10, %struct.TYPE_13__* %5)
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = call i32 @scif_sas_smp_remote_device_removed(%struct.TYPE_14__* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @scic_remote_device_destruct(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @SCI_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* @SCI_BASE_REMOTE_DEVICE_STATE_FINAL, align 4
  %33 = call i32 @sci_base_state_machine_change_state(i32* %31, i32 %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @scif_sas_remote_device_deinitialize_state_logging(%struct.TYPE_14__* %34)
  br label %45

36:                                               ; preds = %20
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = call i32 @sci_base_object_get_logger(%struct.TYPE_14__* %37)
  %39 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %40 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = ptrtoint %struct.TYPE_14__* %42 to i32
  %44 = call i32 @SCIF_LOG_ERROR(i32 %43)
  br label %45

45:                                               ; preds = %36, %28
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @scic_remote_device_get_protocols(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_removed(%struct.TYPE_14__*) #1

declare dso_local i64 @scic_remote_device_destruct(i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scif_sas_remote_device_deinitialize_state_logging(%struct.TYPE_14__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
