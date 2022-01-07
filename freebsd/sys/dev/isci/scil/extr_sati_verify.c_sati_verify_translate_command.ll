; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_verify.c_sati_verify_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_verify.c_sati_verify_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SCSI_VERIFY_BYTCHK_ENABLED = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SAT_PROTOCOL_NON_DATA = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_NONE = common dso_local global i32 0, align 4
@ATA_DEV_HEAD_REG_LBA_MODE_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@ATA_READ_VERIFY_SECTORS_EXT = common dso_local global i32 0, align 4
@ATA_READ_VERIFY_SECTORS = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @sati_verify_translate_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_verify_translate_command(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @sati_cb_get_cdb_address(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @sati_get_cdb_byte(i32* %14, i32 1)
  %16 = load i32, i32* @SCSI_VERIFY_BYTCHK_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %23 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %24 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %25 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %26 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %3
  %29 = load i32, i32* @SAT_PROTOCOL_NON_DATA, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SATI_DATA_DIRECTION_NONE, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @ATA_DEV_HEAD_REG_LBA_MODE_ENABLE, align 4
  %37 = call i32 @sati_set_ata_device_head(i32* %35, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @ATA_READ_VERIFY_SECTORS_EXT, align 4
  %49 = call i32 @sati_set_ata_command(i32* %47, i32 %48)
  br label %54

50:                                               ; preds = %28
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @ATA_READ_VERIFY_SECTORS, align 4
  %53 = call i32 @sati_set_ata_command(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sati_set_ata_device_head(i32*, i32) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
