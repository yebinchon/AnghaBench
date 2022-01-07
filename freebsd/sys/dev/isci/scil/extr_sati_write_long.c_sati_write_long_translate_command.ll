; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_write_long.c_sati_write_long_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_write_long.c_sati_write_long_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SATI_FAILURE = common dso_local global i64 0, align 8
@SATI_DEVICE_CAP_WRITE_UNCORRECTABLE_ENABLE = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_COMMAND_OPERATION_CODE = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@SCSI_WRITE_LONG_10 = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_MULTIPLE_SECTORS_PER_PHYSCIAL_SECTOR = common dso_local global i32 0, align 4
@ATA_WRITE_UNCORRECTABLE_PSEUDO = common dso_local global i32 0, align 4
@SATI_SEQUENCE_WRITE_LONG = common dso_local global i8* null, align 8
@SATI_SUCCESS = common dso_local global i64 0, align 8
@ATA_WRITE_UNCORRECTABLE_FLAGGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sati_write_long_translate_command(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @sati_cb_get_cdb_address(i8* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i64, i64* @SATI_FAILURE, align 8
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SATI_DEVICE_CAP_WRITE_UNCORRECTABLE_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %27 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %28 = load i32, i32* @SCSI_ASC_INVALID_COMMAND_OPERATION_CODE, align 4
  %29 = load i32, i32* @SCSI_ASCQ_INVALID_COMMAND_OPERATION_CODE, align 4
  %30 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %24, i8* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %31, i64* %4, align 8
  br label %142

32:                                               ; preds = %3
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @sati_get_cdb_byte(i32* %33, i32 0)
  %35 = load i32, i32* @SCSI_WRITE_LONG_10, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @sati_get_cdb_byte(i32* %38, i32 7)
  %40 = shl i32 %39, 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @sati_get_cdb_byte(i32* %41, i32 8)
  %43 = or i32 %40, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @sati_move_translate_32_bit_lba(%struct.TYPE_10__* %44, i8* %45, i8* %46)
  br label %65

48:                                               ; preds = %32
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @sati_get_cdb_byte(i32* %49, i32 12)
  %51 = shl i32 %50, 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @sati_get_cdb_byte(i32* %52, i32 13)
  %54 = or i32 %51, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @sati_move_translate_64_bit_lba(%struct.TYPE_10__* %55, i8* %56, i8* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %4, align 8
  br label %142

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sati_move_translate_command(%struct.TYPE_10__* %66, i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %77 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %78 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %79 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %80 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %74, i8* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %81, i64* %4, align 8
  br label %142

82:                                               ; preds = %65
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @SATI_WRITE_LONG_GET_COR_WR_PB_BITS(i32* %83)
  switch i32 %84, label %131 [
    i32 129, label %85
    i32 128, label %113
    i32 130, label %122
  ]

85:                                               ; preds = %82
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SATI_DEVICE_CAP_MULTIPLE_SECTORS_PER_PHYSCIAL_SECTOR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %98 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %99 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %100 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %101 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %95, i8* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %102, i64* %4, align 8
  br label %142

103:                                              ; preds = %85
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = load i32, i32* @ATA_WRITE_UNCORRECTABLE_PSEUDO, align 4
  %107 = call i32 @sati_ata_write_uncorrectable_construct(i8* %104, %struct.TYPE_10__* %105, i32 %106)
  %108 = load i8*, i8** @SATI_SEQUENCE_WRITE_LONG, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load i64, i64* @SATI_SUCCESS, align 8
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %103
  br label %140

113:                                              ; preds = %82
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = load i32, i32* @ATA_WRITE_UNCORRECTABLE_PSEUDO, align 4
  %117 = call i32 @sati_ata_write_uncorrectable_construct(i8* %114, %struct.TYPE_10__* %115, i32 %116)
  %118 = load i8*, i8** @SATI_SEQUENCE_WRITE_LONG, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i64, i64* @SATI_SUCCESS, align 8
  store i64 %121, i64* %9, align 8
  br label %140

122:                                              ; preds = %82
  %123 = load i8*, i8** %7, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = load i32, i32* @ATA_WRITE_UNCORRECTABLE_FLAGGED, align 4
  %126 = call i32 @sati_ata_write_uncorrectable_construct(i8* %123, %struct.TYPE_10__* %124, i32 %125)
  %127 = load i8*, i8** @SATI_SEQUENCE_WRITE_LONG, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* @SATI_SUCCESS, align 8
  store i64 %130, i64* %9, align 8
  br label %140

131:                                              ; preds = %82
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %135 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %136 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %137 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %138 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__* %132, i8* %133, i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %139, i64* %4, align 8
  br label %142

140:                                              ; preds = %122, %113, %112
  %141 = load i64, i64* %9, align 8
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %140, %131, %94, %73, %62, %23
  %143 = load i64, i64* %4, align 8
  ret i64 %143
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_10__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_move_translate_32_bit_lba(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @sati_move_translate_64_bit_lba(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32 @sati_move_translate_command(%struct.TYPE_10__*, i8*, i8*, i32) #1

declare dso_local i32 @SATI_WRITE_LONG_GET_COR_WR_PB_BITS(i32*) #1

declare dso_local i32 @sati_ata_write_uncorrectable_construct(i8*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
