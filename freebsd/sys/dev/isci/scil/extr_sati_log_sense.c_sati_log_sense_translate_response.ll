; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_log_sense_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_log_sense_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@SATI_FAILURE = common dso_local global i32 0, align 4
@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_log_sense_translate_response(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @sati_get_ata_status(i32* %14)
  %16 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %23 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %24 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %25 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %26 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %27, i32* %9, align 4
  br label %67

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @sati_cb_get_ata_data_address(i8* %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %34, i32* %4, align 4
  br label %69

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %57 [
    i32 130, label %39
    i32 128, label %45
    i32 129, label %51
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @sati_extended_self_test_log_page_construct(%struct.TYPE_7__* %40, i8* %41, i8* %42)
  %44 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %44, i32* %9, align 4
  br label %66

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @sati_self_test_log_page_construct(%struct.TYPE_7__* %46, i8* %47, i8* %48)
  %50 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %50, i32* %9, align 4
  br label %66

51:                                               ; preds = %35
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @sati_information_exception_log_page_contruct(%struct.TYPE_7__* %52, i8* %53, i8* %54)
  %56 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %56, i32* %9, align 4
  br label %66

57:                                               ; preds = %35
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %61 = load i32, i32* @SCSI_SENSE_ABORTED_COMMAND, align 4
  %62 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %63 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %64 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__* %58, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %57, %51, %45, %39
  br label %67

67:                                               ; preds = %66, %19
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %33
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_7__*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @sati_cb_get_ata_data_address(i8*) #1

declare dso_local i32 @sati_extended_self_test_log_page_construct(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @sati_self_test_log_page_construct(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @sati_information_exception_log_page_contruct(%struct.TYPE_7__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
