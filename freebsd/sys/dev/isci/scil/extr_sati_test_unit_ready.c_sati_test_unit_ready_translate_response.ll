; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_test_unit_ready.c_sati_test_unit_ready_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_test_unit_ready.c_sati_test_unit_ready_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_LUN_NOT_RESPOND_TO_SELECTION = common dso_local global i32 0, align 4
@SCSI_ASCQ_LUN_NOT_RESPOND_TO_SELECTION = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_test_unit_ready_translate_response(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @sati_get_ata_status(i32* %11)
  %13 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %20 = load i32, i32* @SCSI_SENSE_NOT_READY, align 4
  %21 = load i32, i32* @SCSI_ASC_LUN_NOT_RESPOND_TO_SELECTION, align 4
  %22 = load i32, i32* @SCSI_ASCQ_LUN_NOT_RESPOND_TO_SELECTION, align 4
  %23 = call i32 @sati_scsi_sense_data_construct(i32* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
