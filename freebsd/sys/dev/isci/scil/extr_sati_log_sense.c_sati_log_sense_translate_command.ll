; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_log_sense_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_log_sense_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_LOG_SENSE_SUPPORTED_LOG_PAGE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@ATA_LOG_PAGE_EXTENDED_SMART_SELF_TEST = common dso_local global i32 0, align 4
@SATI_SEQUENCE_LOG_SENSE_EXTENDED_SELF_TEST_LOG_PAGE = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@ATA_LOG_PAGE_SMART_SELF_TEST = common dso_local global i32 0, align 4
@SATI_SEQUENCE_LOG_SENSE_SELF_TEST_LOG_PAGE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SUPPORT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_ENABLE = common dso_local global i32 0, align 4
@ATA_SMART_SUB_CMD_RETURN_STATUS = common dso_local global i32 0, align 4
@SATI_SEQUENCE_LOG_SENSE_INFO_EXCEPTION_LOG_PAGE = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_ATA_DEVICE_FEATURE_NOT_ENABLED = common dso_local global i32 0, align 4
@SCSI_ASCQ_ATA_DEVICE_FEATURE_NOT_ENABLED = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_log_sense_translate_command(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @SATI_LOG_SENSE_GET_PC_FIELD(i32* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %142

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @sati_get_cdb_byte(i32* %16, i32 3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %142

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @sati_get_cdb_byte(i32* %20, i32 7)
  %22 = shl i32 %21, 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @sati_get_cdb_byte(i32* %23, i32 8)
  %25 = or i32 %22, %24
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @SATI_LOG_SENSE_GET_PAGE_CODE(i32* %28)
  switch i32 %29, label %132 [
    i32 128, label %30
    i32 129, label %38
    i32 130, label %85
  ]

30:                                               ; preds = %19
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @sati_supported_log_page_construct(%struct.TYPE_10__* %31, i8* %32)
  %34 = load i32, i32* @SATI_SEQUENCE_LOG_SENSE_SUPPORTED_LOG_PAGE, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %37, i32* %8, align 4
  br label %141

38:                                               ; preds = %19
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %51 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %52 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %53 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %54 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %48, i8* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %55, i32* %8, align 4
  br label %84

56:                                               ; preds = %38
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = load i32, i32* @ATA_LOG_PAGE_EXTENDED_SMART_SELF_TEST, align 4
  %69 = call i32 @sati_ata_read_log_ext_construct(i8* %66, %struct.TYPE_10__* %67, i32 %68, i32 4)
  %70 = load i32, i32* @SATI_SEQUENCE_LOG_SENSE_EXTENDED_SELF_TEST_LOG_PAGE, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %73, i32* %8, align 4
  br label %83

74:                                               ; preds = %56
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i32, i32* @ATA_LOG_PAGE_SMART_SELF_TEST, align 4
  %78 = call i32 @sati_ata_smart_read_log_construct(i8* %75, %struct.TYPE_10__* %76, i32 %77, i32 4)
  %79 = load i32, i32* @SATI_SEQUENCE_LOG_SENSE_SELF_TEST_LOG_PAGE, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %74, %65
  br label %84

84:                                               ; preds = %83, %47
  br label %141

85:                                               ; preds = %19
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SATI_DEVICE_CAP_SMART_SUPPORT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %85
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SATI_DEVICE_CAP_SMART_ENABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = load i32, i32* @ATA_SMART_SUB_CMD_RETURN_STATUS, align 4
  %107 = call i32 @sati_ata_smart_return_status_construct(i8* %104, %struct.TYPE_10__* %105, i32 %106)
  %108 = load i32, i32* @SATI_SEQUENCE_LOG_SENSE_INFO_EXCEPTION_LOG_PAGE, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %111, i32* %8, align 4
  br label %121

112:                                              ; preds = %94
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %116 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %117 = load i32, i32* @SCSI_ASC_ATA_DEVICE_FEATURE_NOT_ENABLED, align 4
  %118 = load i32, i32* @SCSI_ASCQ_ATA_DEVICE_FEATURE_NOT_ENABLED, align 4
  %119 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %113, i8* %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %112, %103
  br label %131

122:                                              ; preds = %85
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %126 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %127 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %128 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %129 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %123, i8* %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %122, %121
  br label %141

132:                                              ; preds = %19
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %136 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %137 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %138 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %139 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %133, i8* %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %132, %131, %84, %30
  br label %142

142:                                              ; preds = %141, %15, %3
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @SATI_LOG_SENSE_GET_PC_FIELD(i32*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @SATI_LOG_SENSE_GET_PAGE_CODE(i32*) #1

declare dso_local i32 @sati_supported_log_page_construct(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_ata_read_log_ext_construct(i8*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sati_ata_smart_read_log_construct(i8*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sati_ata_smart_return_status_construct(i8*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
