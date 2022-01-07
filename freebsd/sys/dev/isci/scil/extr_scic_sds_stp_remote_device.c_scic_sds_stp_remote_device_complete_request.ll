; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_complete_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_FAILURE_REMOTE_DEVICE_RESET_REQUIRED = common dso_local global i64 0, align 8
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_AWAIT_RESET = common dso_local global i32 0, align 4
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_STP_REMOTE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Port:0x%x Device:0x%x Request:0x%x Status:0x%x could not complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @scic_sds_stp_remote_device_complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_remote_device_complete_request(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = call i64 @scic_sds_io_request_complete(%struct.TYPE_9__* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SCI_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = call i64 @scic_sds_port_complete_io(i32 %20, %struct.TYPE_10__* %21, %struct.TYPE_9__* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @SCI_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = call i32 @scic_sds_remote_device_decrement_request_count(%struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCI_FAILURE_REMOTE_DEVICE_RESET_REQUIRED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_AWAIT_RESET, align 4
  %39 = call i32 @sci_base_state_machine_change_state(i32* %37, i32 %38)
  br label %50

40:                                               ; preds = %27
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = call i64 @scic_sds_remote_device_get_request_count(%struct.TYPE_10__* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE, align 4
  %48 = call i32 @sci_base_state_machine_change_state(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %17
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @SCI_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = call i32 @sci_base_object_get_logger(%struct.TYPE_10__* %57)
  %59 = load i32, i32* @SCIC_LOG_OBJECT_STP_REMOTE_TARGET, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @SCIC_LOG_ERROR(i32 %66)
  br label %68

68:                                               ; preds = %56, %52
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i64 @scic_sds_io_request_complete(%struct.TYPE_9__*) #1

declare dso_local i64 @scic_sds_port_complete_io(i32, %struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @scic_sds_remote_device_decrement_request_count(%struct.TYPE_10__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i64 @scic_sds_remote_device_get_request_count(%struct.TYPE_10__*) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
