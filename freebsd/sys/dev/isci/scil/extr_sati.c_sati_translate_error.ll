; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@ATA_ERROR_REG_NO_MEDIA_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4
@SCSI_ASCQ_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4
@ATA_ERROR_REG_MEDIA_CHANGE_BIT = common dso_local global i32 0, align 4
@SCSI_SENSE_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SCSI_ASC_NOT_READY_TO_READY_CHANGE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NOT_READY_TO_READY_CHANGE = common dso_local global i32 0, align 4
@ATA_ERROR_REG_MEDIA_CHANGE_REQUEST_BIT = common dso_local global i32 0, align 4
@SCSI_ASC_MEDIUM_REMOVAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASCQ_MEDIUM_REMOVAL_REQUEST = common dso_local global i32 0, align 4
@ATA_ERROR_REG_ID_NOT_FOUND_BIT = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_LBA_OUT_OF_RANGE = common dso_local global i32 0, align 4
@SCSI_ASCQ_LBA_OUT_OF_RANGE = common dso_local global i32 0, align 4
@ATA_ERROR_REG_UNCORRECTABLE_BIT = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_SENSE_MEDIUM_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASCQ_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_OUT = common dso_local global i64 0, align 8
@ATA_ERROR_REG_WRITE_PROTECTED_BIT = common dso_local global i32 0, align 4
@SCSI_SENSE_DATA_PROTECT = common dso_local global i32 0, align 4
@SCSI_ASC_WRITE_PROTECTED = common dso_local global i32 0, align 4
@SCSI_ASCQ_WRITE_PROTECTED = common dso_local global i32 0, align 4
@ATA_ERROR_REG_ICRC_BIT = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_IU_CRC_ERROR_DETECTED = common dso_local global i32 0, align 4
@SCSI_ASCQ_IU_CRC_ERROR_DETECTED = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_translate_error(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ATA_ERROR_REG_NO_MEDIA_BIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %15 = load i32, i32* @SCSI_SENSE_NOT_READY, align 4
  %16 = load i32, i32* @SCSI_ASC_MEDIUM_NOT_PRESENT, align 4
  %17 = load i32, i32* @SCSI_ASCQ_MEDIUM_NOT_PRESENT, align 4
  %18 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %12, i8* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  br label %120

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ATA_ERROR_REG_MEDIA_CHANGE_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %28 = load i32, i32* @SCSI_SENSE_UNIT_ATTENTION, align 4
  %29 = load i32, i32* @SCSI_ASC_NOT_READY_TO_READY_CHANGE, align 4
  %30 = load i32, i32* @SCSI_ASCQ_NOT_READY_TO_READY_CHANGE, align 4
  %31 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %25, i8* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %119

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ATA_ERROR_REG_MEDIA_CHANGE_REQUEST_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %41 = load i32, i32* @SCSI_SENSE_UNIT_ATTENTION, align 4
  %42 = load i32, i32* @SCSI_ASC_MEDIUM_REMOVAL_REQUEST, align 4
  %43 = load i32, i32* @SCSI_ASCQ_MEDIUM_REMOVAL_REQUEST, align 4
  %44 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %118

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ATA_ERROR_REG_ID_NOT_FOUND_BIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %54 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %55 = load i32, i32* @SCSI_ASC_LBA_OUT_OF_RANGE, align 4
  %56 = load i32, i32* @SCSI_ASCQ_LBA_OUT_OF_RANGE, align 4
  %57 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %51, i8* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %117

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ATA_ERROR_REG_UNCORRECTABLE_BIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @SATI_SEQUENCE_STATE_READ_ERROR, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %70 = load i32, i32* @SCSI_SENSE_MEDIUM_ERROR, align 4
  %71 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  %72 = load i32, i32* @SCSI_ASCQ_UNRECOVERED_READ_ERROR, align 4
  %73 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %67, i8* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  br label %116

74:                                               ; preds = %58
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SATI_DATA_DIRECTION_OUT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ATA_ERROR_REG_WRITE_PROTECTED_BIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %89 = load i32, i32* @SCSI_SENSE_DATA_PROTECT, align 4
  %90 = load i32, i32* @SCSI_ASC_WRITE_PROTECTED, align 4
  %91 = load i32, i32* @SCSI_ASCQ_WRITE_PROTECTED, align 4
  %92 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %86, i8* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %115

93:                                               ; preds = %80, %74
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @ATA_ERROR_REG_ICRC_BIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %102 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %103 = load i32, i32* @SCSI_ASC_IU_CRC_ERROR_DETECTED, align 4
  %104 = load i32, i32* @SCSI_ASCQ_IU_CRC_ERROR_DETECTED, align 4
  %105 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %99, i8* %100, i32 %101, i32 %102, i32 %103, i32 %104)
  br label %114

106:                                              ; preds = %93
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %110 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %111 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %112 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %113 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %107, i8* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %106, %98
  br label %115

115:                                              ; preds = %114, %85
  br label %116

116:                                              ; preds = %115, %63
  br label %117

117:                                              ; preds = %116, %50
  br label %118

118:                                              ; preds = %117, %37
  br label %119

119:                                              ; preds = %118, %24
  br label %120

120:                                              ; preds = %119, %11
  ret void
}

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
