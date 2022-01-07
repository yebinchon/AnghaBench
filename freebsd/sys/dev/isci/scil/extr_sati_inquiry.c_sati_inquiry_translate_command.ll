; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@SCSI_INQUIRY_EVPD_ENABLE = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_SUPPORTED_PAGES = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_DEVICE_ID = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_EXECUTE_DEVICE_DIAG = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_ATA_INFORMATION = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INQUIRY_STANDARD = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_inquiry_translate_command(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @sati_get_cdb_byte(i32* %11, i32 1)
  %13 = load i32, i32* @SCSI_INQUIRY_EVPD_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @sati_get_cdb_byte(i32* %17, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %24 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %25 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %26 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %27 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__* %21, i8* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %28, i32* %4, align 4
  br label %103

29:                                               ; preds = %16, %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @sati_get_cdb_byte(i32* %30, i32 3)
  %32 = shl i32 %31, 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @sati_get_cdb_byte(i32* %33, i32 4)
  %35 = or i32 %32, %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @sati_get_cdb_byte(i32* %38, i32 1)
  %40 = load i32, i32* @SCSI_INQUIRY_EVPD_ENABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %29
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @sati_get_cdb_byte(i32* %44, i32 2)
  switch i32 %45, label %84 [
    i32 129, label %46
    i32 128, label %54
    i32 130, label %58
    i32 132, label %62
    i32 131, label %80
  ]

46:                                               ; preds = %43
  %47 = load i32, i32* @SATI_SEQUENCE_INQUIRY_SUPPORTED_PAGES, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @sati_inquiry_supported_pages_translate_data(%struct.TYPE_7__* %50, i8* %51)
  %53 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %53, i32* %4, align 4
  br label %103

54:                                               ; preds = %43
  %55 = load i32, i32* @SATI_SEQUENCE_INQUIRY_SERIAL_NUMBER, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %93

58:                                               ; preds = %43
  %59 = load i32, i32* @SATI_SEQUENCE_INQUIRY_DEVICE_ID, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %93

62:                                               ; preds = %43
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SATI_SEQUENCE_STATE_INCOMPLETE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = call i32 @sati_ata_execute_device_diagnostic_construct(i8* %69, %struct.TYPE_7__* %70)
  %72 = load i32, i32* @SATI_SEQUENCE_INQUIRY_EXECUTE_DEVICE_DIAG, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* @SATI_SEQUENCE_INQUIRY_ATA_INFORMATION, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %68
  br label %93

80:                                               ; preds = %43
  %81 = load i32, i32* @SATI_SEQUENCE_INQUIRY_BLOCK_DEVICE, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %93

84:                                               ; preds = %43
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %88 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %89 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %90 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %91 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__* %85, i8* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %92, i32* %4, align 4
  br label %103

93:                                               ; preds = %80, %79, %58, %54
  br label %98

94:                                               ; preds = %29
  %95 = load i32, i32* @SATI_SEQUENCE_INQUIRY_STANDARD, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %93
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = call i32 @sati_ata_identify_device_construct(i8* %99, %struct.TYPE_7__* %100)
  %102 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %84, %46, %20
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_inquiry_supported_pages_translate_data(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @sati_ata_execute_device_diagnostic_construct(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @sati_ata_identify_device_construct(i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
