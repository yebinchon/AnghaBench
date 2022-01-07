; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_translate_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_translate_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ATA_STATUS_REG_ERROR_BIT = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i32 0, align 4
@PASSTHROUGH_RETURN_RESPONSE = common dso_local global i64 0, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_RECOVERED_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_ATA_PASS_THROUGH_INFORMATION_AVAILABLE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_passthrough_translate_response(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @sati_cb_get_cdb_address(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @sati_get_ata_status(i32* %14)
  %16 = load i32, i32* @ATA_STATUS_REG_ERROR_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @sati_get_ata_error(i32* %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @sati_translate_error(%struct.TYPE_5__* %20, i8* %21, i32 %24)
  %26 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %3
  %28 = load i32, i32* @SATI_SEQUENCE_STATE_FINAL, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @PASSTHROUGH_CDB_CK_COND(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @PASSTHROUGH_CDB_PROTOCOL(i32* %35)
  %37 = load i64, i64* @PASSTHROUGH_RETURN_RESPONSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34, %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %44 = load i32, i32* @SCSI_SENSE_RECOVERED_ERROR, align 4
  %45 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %46 = load i32, i32* @SCSI_ASCQ_ATA_PASS_THROUGH_INFORMATION_AVAILABLE, align 4
  %47 = call i32 @sati_passthrough_construct_sense(%struct.TYPE_5__* %40, i32* %41, i8* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %39, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_ata_status(i32*) #1

declare dso_local i32 @sati_translate_error(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i64 @sati_get_ata_error(i32*) #1

declare dso_local i64 @PASSTHROUGH_CDB_CK_COND(i32*) #1

declare dso_local i64 @PASSTHROUGH_CDB_PROTOCOL(i32*) #1

declare dso_local i32 @sati_passthrough_construct_sense(%struct.TYPE_5__*, i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
