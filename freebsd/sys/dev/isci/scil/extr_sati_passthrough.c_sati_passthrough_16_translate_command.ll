; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_16_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_16_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_ATA_PASSTHROUGH_16 = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_TRANSLATE_DATA = common dso_local global i32 0, align 4
@PASSTHROUGH_DMA = common dso_local global i64 0, align 8
@PASSTHROUGH_UDMA_DATA_IN = common dso_local global i64 0, align 8
@PASSTHROUGH_UDMA_DATA_OUT = common dso_local global i64 0, align 8
@SATI_COMPLETE = common dso_local global i64 0, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@PASSTHROUGH_RETURN_RESPONSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_AWAIT_RESPONSE = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_passthrough_16_translate_command(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SATI_SEQUENCE_ATA_PASSTHROUGH_16, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @SATI_SEQUENCE_STATE_TRANSLATE_DATA, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @sati_cb_get_cdb_address(i8* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @PASSTHROUGH_CDB_PROTOCOL(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %24)
  store i32* %25, i32** %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PASSTHROUGH_DMA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @PASSTHROUGH_CDB_T_DIR(i32* %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* @PASSTHROUGH_UDMA_DATA_IN, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load i64, i64* @PASSTHROUGH_UDMA_DATA_OUT, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @sati_passthrough_check_direction(%struct.TYPE_5__* %45, i32* %46)
  %48 = load i64, i64* @SATI_COMPLETE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @sati_passthrough_multiple_count_error(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50, %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %58 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %59 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %60 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %61 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_5__* %55, i8* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %62, i32* %4, align 4
  br label %134

63:                                               ; preds = %50
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @PASSTHROUGH_CDB_EXTEND(i32* %64)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @sati_get_cdb_byte(i32* %69, i32 3)
  %71 = call i32 @sati_set_ata_features_exp(i32* %68, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @sati_get_cdb_byte(i32* %73, i32 5)
  %75 = call i32 @sati_set_ata_sector_count_exp(i32* %72, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @sati_get_cdb_byte(i32* %77, i32 7)
  %79 = call i32 @sati_set_ata_lba_low_exp(i32* %76, i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @sati_get_cdb_byte(i32* %81, i32 9)
  %83 = call i32 @sati_set_ata_lba_mid_exp(i32* %80, i32 %82)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @sati_get_cdb_byte(i32* %85, i32 11)
  %87 = call i32 @sati_set_ata_lba_high_exp(i32* %84, i32 %86)
  br label %88

88:                                               ; preds = %67, %63
  %89 = load i32*, i32** %9, align 8
  %90 = call i64 @PASSTHROUGH_CDB_CK_COND(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @PASSTHROUGH_CDB_PROTOCOL(i32* %93)
  %95 = load i64, i64* @PASSTHROUGH_RETURN_RESPONSE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92, %88
  %98 = load i32, i32* @TRUE, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @sati_get_cdb_byte(i32* %103, i32 4)
  %105 = call i32 @sati_set_ata_features(i32* %102, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @sati_get_cdb_byte(i32* %107, i32 6)
  %109 = call i32 @sati_set_ata_sector_count(i32* %106, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @sati_get_cdb_byte(i32* %111, i32 8)
  %113 = call i32 @sati_set_ata_lba_low(i32* %110, i32 %112)
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @sati_get_cdb_byte(i32* %115, i32 10)
  %117 = call i32 @sati_set_ata_lba_mid(i32* %114, i32 %116)
  %118 = load i32*, i32** %10, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @sati_get_cdb_byte(i32* %119, i32 12)
  %121 = call i32 @sati_set_ata_lba_high(i32* %118, i32 %120)
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @sati_get_cdb_byte(i32* %123, i32 13)
  %125 = call i32 @sati_set_ata_device_head(i32* %122, i32 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @sati_get_cdb_byte(i32* %127, i32 14)
  %129 = call i32 @sati_set_ata_command(i32* %126, i32 %128)
  %130 = load i32, i32* @SATI_SEQUENCE_STATE_AWAIT_RESPONSE, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %101, %54
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i64 @PASSTHROUGH_CDB_PROTOCOL(i32*) #1

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @PASSTHROUGH_CDB_T_DIR(i32*) #1

declare dso_local i64 @sati_passthrough_check_direction(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @sati_passthrough_multiple_count_error(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @PASSTHROUGH_CDB_EXTEND(i32*) #1

declare dso_local i32 @sati_set_ata_features_exp(i32*, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high_exp(i32*, i32) #1

declare dso_local i64 @PASSTHROUGH_CDB_CK_COND(i32*) #1

declare dso_local i32 @sati_set_ata_features(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high(i32*, i32) #1

declare dso_local i32 @sati_set_ata_device_head(i32*, i32) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
