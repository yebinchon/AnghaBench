; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_start_stop_unit.c_sati_start_stop_unit_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_start_stop_unit.c_sati_start_stop_unit_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_COMMAND_SEQUENCE_ERROR = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_MEDIA_LOAD_OR_EJECT_FAILED = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i8* null, align 8
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@SCSI_SENSE_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SATI_DEVICE_STATE_OPERATIONAL = common dso_local global i32 0, align 4
@SATI_DEVICE_STATE_IDLE = common dso_local global i32 0, align 4
@SATI_DEVICE_STATE_STOPPED = common dso_local global i32 0, align 4
@SATI_DEVICE_STATE_STANDBY = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i64 0, align 8
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_start_stop_unit_translate_response(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @sati_cb_get_cdb_address(i8* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @sati_get_ata_status(i32* %14)
  %16 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %40 [
    i32 134, label %24
    i32 128, label %24
    i32 132, label %24
    i32 133, label %24
    i32 129, label %24
    i32 130, label %24
    i32 131, label %32
  ]

24:                                               ; preds = %19, %19, %19, %19, %19, %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %28 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %29 = load i32, i32* @SCSI_ASC_COMMAND_SEQUENCE_ERROR, align 4
  %30 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %31 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %25, i8* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  br label %48

32:                                               ; preds = %19
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %36 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %37 = load i32, i32* @SCSI_ASC_MEDIA_LOAD_OR_EJECT_FAILED, align 4
  %38 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %39 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %48

40:                                               ; preds = %19
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %44 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %45 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %46 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %47 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %41, i8* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %32, %24
  %49 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %53, i32* %4, align 4
  br label %133

54:                                               ; preds = %3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %121 [
    i32 130, label %59
    i32 132, label %76
    i32 131, label %93
    i32 129, label %93
    i32 128, label %93
  ]

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %63 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %64 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %65 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %66 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %60, i8* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @SATI_DEVICE_STATE_OPERATIONAL, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %122

76:                                               ; preds = %54
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %80 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %81 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %82 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %83 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %77, i8* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @SATI_DEVICE_STATE_IDLE, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %122

93:                                               ; preds = %54, %54, %54
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %97 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %98 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %99 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %100 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %94, i8* %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @SATI_START_STOP_UNIT_POWER_CONDITION(i32* %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load i32, i32* @SATI_DEVICE_STATE_STOPPED, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  br label %116

110:                                              ; preds = %93
  %111 = load i32, i32* @SATI_DEVICE_STATE_STANDBY, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %122

121:                                              ; preds = %54
  br label %122

122:                                              ; preds = %121, %116, %76, %59
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @SATI_SEQUENCE_INCOMPLETE, align 4
  store i32 %129, i32* %4, align 4
  br label %133

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %128, %48
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SATI_START_STOP_UNIT_POWER_CONDITION(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
