; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_large_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_large_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@SATI_SUCCESS = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_IGNORE_FUA = common dso_local global i32 0, align 4
@SCSI_MOVE_FUA_BIT_ENABLE = common dso_local global i32 0, align 4
@ATA_DEV_HEAD_REG_FUA_ENABLE = common dso_local global i32 0, align 4
@ATA_WRITE_FPDMA = common dso_local global i32 0, align 4
@ATA_READ_FPDMA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SAT_PROTOCOL_FPDMA = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@ATA_WRITE_DMA_EXT = common dso_local global i32 0, align 4
@ATA_READ_DMA_EXT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_UDMA_ENABLE = common dso_local global i32 0, align 4
@ATA_WRITE_DMA = common dso_local global i32 0, align 4
@ATA_READ_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_move_large_translate_command(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @sati_cb_get_cdb_address(i8* %15)
  store i32* %16, i32** %13, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SATI_DEVICE_CAP_IGNORE_FUA, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @sati_get_cdb_byte(i32* %35, i32 1)
  %37 = load i32, i32* @SCSI_MOVE_FUA_BIT_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ATA_DEV_HEAD_REG_FUA_ENABLE, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @ATA_WRITE_FPDMA, align 4
  %48 = load i32, i32* @ATA_READ_FPDMA, align 4
  %49 = call i32 @sati_move_set_ata_command(%struct.TYPE_9__* %45, i8* %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @sati_move_set_sector_count(%struct.TYPE_9__* %50, i8* %51, i8* %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @SAT_PROTOCOL_FPDMA, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %119

59:                                               ; preds = %5
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @sati_get_cdb_byte(i32* %69, i32 1)
  %71 = load i32, i32* @SCSI_MOVE_FUA_BIT_ENABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %78 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %79 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %80 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %81 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_9__* %75, i8* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %82, i32* %6, align 4
  br label %121

83:                                               ; preds = %68
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ATA_WRITE_DMA_EXT, align 4
  %89 = load i32, i32* @ATA_READ_DMA_EXT, align 4
  %90 = call i32 @sati_move_large_udma_translate_command(%struct.TYPE_9__* %84, i8* %85, i8* %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  br label %118

91:                                               ; preds = %59
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SATI_DEVICE_CAP_UDMA_ENABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @ATA_WRITE_DMA, align 4
  %106 = load i32, i32* @ATA_READ_DMA, align 4
  %107 = call i32 @sati_move_large_udma_translate_command(%struct.TYPE_9__* %101, i8* %102, i8* %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %12, align 4
  br label %117

108:                                              ; preds = %91
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %112 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %113 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %114 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %115 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_9__* %109, i8* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %116, i32* %6, align 4
  br label %121

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117, %83
  br label %119

119:                                              ; preds = %118, %44
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %108, %74
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_move_set_ata_command(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @sati_move_set_sector_count(%struct.TYPE_9__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_9__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_move_large_udma_translate_command(%struct.TYPE_9__*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
