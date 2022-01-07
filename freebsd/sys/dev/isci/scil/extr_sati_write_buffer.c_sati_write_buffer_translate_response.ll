; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_write_buffer.c_sati_write_buffer_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_write_buffer.c_sati_write_buffer_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@SCSI_SENSE_UNIT_ATTENTION = common dso_local global i32 0, align 4
@SCSI_ASC_MICROCODE_HAS_CHANGED = common dso_local global i32 0, align 4
@SCSI_ASCQ_MICROCODE_HAS_CHANGED = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_write_buffer_translate_response(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @sati_get_ata_status(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %23 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %24 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %25 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %26 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %27, i32* %9, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %41 [
    i32 128, label %32
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %36 = load i32, i32* @SCSI_SENSE_UNIT_ATTENTION, align 4
  %37 = load i32, i32* @SCSI_ASC_MICROCODE_HAS_CHANGED, align 4
  %38 = load i32, i32* @SCSI_ASCQ_MICROCODE_HAS_CHANGED, align 4
  %39 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %40, i32* %9, align 4
  br label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %32
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* @SATI_SEQUENCE_STATE_FINAL, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_4__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
