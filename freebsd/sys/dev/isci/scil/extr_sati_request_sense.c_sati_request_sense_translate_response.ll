; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_request_sense.c_sati_request_sense_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_request_sense.c_sati_request_sense_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@ATA_MID_REGISTER_THRESHOLD_EXCEEDED = common dso_local global i32 0, align 4
@ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED = common dso_local global i32 0, align 4
@SCSI_SENSE_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_HARDWARE_IMPENDING_FAILURE = common dso_local global i32 0, align 4
@SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SCSI_ASC_POWER_STATE_CHANGE = common dso_local global i32 0, align 4
@SCSI_ASCQ_POWER_STATE_CHANGE_TO_STANDBY = common dso_local global i32 0, align 4
@SCSI_ASCQ_POWER_STATE_CHANGE_TO_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_request_sense_translate_response(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @sati_get_ata_status(i32* %15)
  %17 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %24 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %25 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %26 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %27 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_5__* %21, i8* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %28, i32* %11, align 4
  br label %101

29:                                               ; preds = %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %92 [
    i32 128, label %33
    i32 129, label %62
  ]

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @sati_get_ata_lba_mid(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sati_get_ata_lba_high(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ATA_MID_REGISTER_THRESHOLD_EXCEEDED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ATA_HIGH_REGISTER_THRESHOLD_EXCEEDED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %49 = load i32, i32* @SCSI_ASC_HARDWARE_IMPENDING_FAILURE, align 4
  %50 = load i32, i32* @SCSI_ASCQ_GENERAL_HARD_DRIVE_FAILURE, align 4
  %51 = call i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__* %46, i8* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %41, %33
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %57 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %58 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %59 = call i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__* %54, i8* %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %53, %45
  br label %100

62:                                               ; preds = %29
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @sati_get_ata_sector_count(i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %90 [
    i32 130, label %66
    i32 131, label %74
    i32 132, label %82
  ]

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %70 = load i32, i32* @SCSI_ASC_POWER_STATE_CHANGE, align 4
  %71 = load i32, i32* @SCSI_ASCQ_POWER_STATE_CHANGE_TO_STANDBY, align 4
  %72 = call i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__* %67, i8* %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %73, i32* %11, align 4
  br label %91

74:                                               ; preds = %62
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %78 = load i32, i32* @SCSI_ASC_POWER_STATE_CHANGE, align 4
  %79 = load i32, i32* @SCSI_ASCQ_POWER_STATE_CHANGE_TO_IDLE, align 4
  %80 = call i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__* %75, i8* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %81, i32* %11, align 4
  br label %91

82:                                               ; preds = %62
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %86 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %87 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %88 = call i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__* %83, i8* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %89, i32* %11, align 4
  br label %91

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90, %82, %74, %66
  br label %100

92:                                               ; preds = %29
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %96 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %97 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %98 = call i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__* %93, i8* %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %92, %91, %61
  br label %101

101:                                              ; preds = %100, %20
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_get_ata_lba_mid(i32*) #1

declare dso_local i32 @sati_get_ata_lba_high(i32*) #1

declare dso_local i32 @sati_request_sense_data_response_construct(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local i32 @sati_get_ata_sector_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
