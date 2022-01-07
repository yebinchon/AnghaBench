; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_request_sense.c_sati_request_sense_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_request_sense.c_sati_request_sense_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@SCSI_SENSE_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_LUN_FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SCSI_SENSE_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SCSI_SENSE_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_POWER_STATE_CHANGE = common dso_local global i32 0, align 4
@SCSI_ASCQ_IDLE_CONDITION_ACTIVATE_BY_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASCQ_STANDBY_CONDITION_ACTIVATE_BY_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SUPPORT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_ENABLE = common dso_local global i32 0, align 4
@ATA_SMART_SUB_CMD_RETURN_STATUS = common dso_local global i32 0, align 4
@SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_request_sense_translate_command(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %69 [
    i32 132, label %16
    i32 128, label %25
    i32 131, label %42
    i32 130, label %51
    i32 129, label %60
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %20 = load i32, i32* @SCSI_SENSE_NOT_READY, align 4
  %21 = load i32, i32* @SCSI_ASC_LUN_FORMAT_IN_PROGRESS, align 4
  %22 = load i32, i32* @SCSI_ASCQ_LUN_FORMAT_IN_PROGRESS, align 4
  %23 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %24, i32* %4, align 4
  br label %110

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %29 = load i32, i32* @SCSI_SENSE_UNIT_ATTENTION, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %26, i8* %27, i32 %28, i32 %29, i32 %34, i32 %39)
  %41 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %41, i32* %4, align 4
  br label %110

42:                                               ; preds = %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %46 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %47 = load i32, i32* @SCSI_ASC_POWER_STATE_CHANGE, align 4
  %48 = load i32, i32* @SCSI_ASCQ_IDLE_CONDITION_ACTIVATE_BY_COMMAND, align 4
  %49 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %43, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %50, i32* %4, align 4
  br label %110

51:                                               ; preds = %3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %55 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %56 = load i32, i32* @SCSI_ASC_POWER_STATE_CHANGE, align 4
  %57 = load i32, i32* @SCSI_ASCQ_STANDBY_CONDITION_ACTIVATE_BY_COMMAND, align 4
  %58 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %52, i8* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %59, i32* %4, align 4
  br label %110

60:                                               ; preds = %3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %64 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %65 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %66 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %67 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %61, i8* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %3
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @sati_get_cdb_byte(i32* %71, i32 4)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SATI_DEVICE_CAP_SMART_SUPPORT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %70
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SATI_DEVICE_CAP_SMART_ENABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i32, i32* @ATA_SMART_SUB_CMD_RETURN_STATUS, align 4
  %96 = call i32 @sati_ata_smart_return_status_construct(i8* %93, %struct.TYPE_8__* %94, i32 %95)
  %97 = load i32, i32* @SATI_SEQUENCE_REQUEST_SENSE_SMART_RETURN_STATUS, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %100, i32* %4, align 4
  br label %110

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %70
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = call i32 @sati_ata_check_power_mode_construct(i8* %103, %struct.TYPE_8__* %104)
  %106 = load i32, i32* @SATI_SEQUENCE_REQUEST_SENSE_CHECK_POWER_MODE, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %102, %92, %60, %51, %42, %25, %16
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_ata_smart_return_status_construct(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @sati_ata_check_power_mode_construct(i8*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
