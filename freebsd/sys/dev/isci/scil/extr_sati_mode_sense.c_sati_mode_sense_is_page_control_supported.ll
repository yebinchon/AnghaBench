; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_is_page_control_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_is_page_control_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_MODE_SENSE_PC_SHIFT = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_SAVING_PARMS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SCSI_ASCQ_SAVING_PARMS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sati_mode_sense_is_page_control_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_mode_sense_is_page_control_supported(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32* @sati_cb_get_cdb_address(i8* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @sati_get_cdb_byte(i32* %9, i32 2)
  %11 = load i32, i32* @SCSI_MODE_SENSE_PC_SHIFT, align 4
  %12 = ashr i32 %10, %11
  switch i32 %12, label %15 [
    i32 130, label %13
    i32 129, label %13
    i32 131, label %13
    i32 128, label %16
  ]

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %20 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %21 = load i32, i32* @SCSI_ASC_SAVING_PARMS_NOT_SUPPORTED, align 4
  %22 = load i32, i32* @SCSI_ASCQ_SAVING_PARMS_NOT_SUPPORTED, align 4
  %23 = call i32 @sati_scsi_sense_data_construct(i32* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_scsi_sense_data_construct(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
