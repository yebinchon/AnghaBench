; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_ncq_substate_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_remote_device.c_scic_sds_stp_remote_device_ready_ncq_substate_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SATA_FIS_TYPE_SETDEVBITS = common dso_local global i64 0, align 8
@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED = common dso_local global i8* null, align 8
@SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR = common dso_local global i32 0, align 4
@SATA_FIS_TYPE_REGD2H = common dso_local global i64 0, align 8
@SCI_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32)* @scic_sds_stp_remote_device_ready_ncq_substate_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_stp_remote_device_ready_ncq_substate_frame_handler(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call %struct.TYPE_9__* @scic_sds_remote_device_get_controller(%struct.TYPE_7__* %7)
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = bitcast %struct.TYPE_8__** %6 to i8**
  %12 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %9, i32 %10, i8** %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SCI_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SATA_FIS_TYPE_SETDEVBITS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i8*, i8** @SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR, align 4
  %36 = call i32 @sci_base_state_machine_change_state(i32* %34, i32 %35)
  br label %61

37:                                               ; preds = %22, %16
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SATA_FIS_TYPE_REGD2H, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i8*, i8** @SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* @SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR, align 4
  %57 = call i32 @sci_base_state_machine_change_state(i32* %55, i32 %56)
  br label %60

58:                                               ; preds = %43, %37
  %59 = load i64, i64* @SCI_FAILURE, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %50
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = call %struct.TYPE_9__* @scic_sds_remote_device_get_controller(%struct.TYPE_7__* %62)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_9__* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %2
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local %struct.TYPE_9__* @scic_sds_remote_device_get_controller(%struct.TYPE_7__*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32*, i32) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
