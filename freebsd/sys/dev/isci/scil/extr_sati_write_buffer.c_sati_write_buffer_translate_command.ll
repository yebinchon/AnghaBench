; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_write_buffer.c_sati_write_buffer_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_write_buffer.c_sati_write_buffer_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@DOWNLOAD_MICROCODE_BLOCK_SIZE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_WRITE_BUFFER = common dso_local global i8* null, align 8
@SATI_SEQUENCE_STATE_AWAIT_RESPONSE = common dso_local global i8* null, align 8
@SATI_SUCCESS = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i8* null, align 8
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@ATA_MICROCODE_DOWNLOAD_SAVE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_WRITE_BUFFER_MICROCODE = common dso_local global i8* null, align 8
@ATA_MICROCODE_OFFSET_DOWNLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_write_buffer_translate_command(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @sati_cb_get_cdb_address(i8* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @sati_get_cdb_byte(i32* %15, i32 6)
  %17 = shl i32 %16, 16
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @sati_get_cdb_byte(i32* %18, i32 7)
  %20 = shl i32 %19, 8
  %21 = or i32 %17, %20
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @sati_get_cdb_byte(i32* %22, i32 8)
  %24 = or i32 %21, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @sati_get_cdb_byte(i32* %25, i32 3)
  %27 = shl i32 %26, 16
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @sati_get_cdb_byte(i32* %28, i32 4)
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sati_get_cdb_byte(i32* %32, i32 5)
  %34 = or i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DOWNLOAD_MICROCODE_BLOCK_SIZE, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @sati_get_cdb_byte(i32* %41, i32 1)
  switch i32 %42, label %146 [
    i32 128, label %43
    i32 130, label %78
    i32 129, label %92
  ]

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DOWNLOAD_MICROCODE_BLOCK_SIZE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @sati_get_cdb_byte(i32* %51, i32 2)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @sati_ata_write_buffer_construct(i8* %55, %struct.TYPE_8__* %56)
  %58 = load i8*, i8** @SATI_SEQUENCE_WRITE_BUFFER, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @SATI_SEQUENCE_STATE_AWAIT_RESPONSE, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %64, i32* %8, align 4
  br label %77

65:                                               ; preds = %50, %47, %43
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %69 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %70 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %71 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %72 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %66, i8* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %65, %54
  br label %158

78:                                               ; preds = %3
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = load i32, i32* @ATA_MICROCODE_DOWNLOAD_SAVE, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @sati_ata_download_microcode_construct(i8* %79, %struct.TYPE_8__* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i8*, i8** @SATI_SEQUENCE_WRITE_BUFFER_MICROCODE, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @SATI_SEQUENCE_STATE_AWAIT_RESPONSE, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %91, i32* %8, align 4
  br label %158

92:                                               ; preds = %3
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 511
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %133

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 511
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sle i32 %101, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %109, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %116, %108
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = load i32, i32* @ATA_MICROCODE_OFFSET_DOWNLOAD, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @sati_ata_download_microcode_construct(i8* %120, %struct.TYPE_8__* %121, i32 %122, i32 %123, i32 %124)
  %126 = load i8*, i8** @SATI_SEQUENCE_WRITE_BUFFER_MICROCODE, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @SATI_SEQUENCE_STATE_AWAIT_RESPONSE, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %132, i32* %8, align 4
  br label %145

133:                                              ; preds = %116, %100, %96, %92
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %137 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %138 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %139 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %140 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %134, i8* %135, i32 %136, i32 %137, i32 %138, i32 %139)
  %141 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %133, %119
  br label %158

146:                                              ; preds = %3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %150 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %151 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %152 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %153 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__* %147, i8* %148, i32 %149, i32 %150, i32 %151, i32 %152)
  %154 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %146, %145, %78, %77
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_ata_write_buffer_construct(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_8__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_ata_download_microcode_construct(i8*, %struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
