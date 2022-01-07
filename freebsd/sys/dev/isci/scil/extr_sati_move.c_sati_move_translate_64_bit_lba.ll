; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_translate_64_bit_lba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_translate_64_bit_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SATI_SUCCESS = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_LBA_OUT_OF_RANGE = common dso_local global i32 0, align 4
@SCSI_ASCQ_LBA_OUT_OF_RANGE = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_move_translate_64_bit_lba(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @sati_cb_get_cdb_address(i8* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @sati_get_cdb_byte(i32* %14, i32 2)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @sati_get_cdb_byte(i32* %18, i32 3)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @sati_get_cdb_byte(i32* %23, i32 9)
  %25 = call i32 @sati_set_ata_lba_low(i32* %22, i64 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @sati_get_cdb_byte(i32* %27, i32 8)
  %29 = call i32 @sati_set_ata_lba_mid(i32* %26, i64 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @sati_get_cdb_byte(i32* %31, i32 7)
  %33 = call i32 @sati_set_ata_lba_high(i32* %30, i64 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @sati_get_cdb_byte(i32* %35, i32 6)
  %37 = call i32 @sati_set_ata_lba_low_exp(i32* %34, i64 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @sati_get_cdb_byte(i32* %39, i32 5)
  %41 = call i32 @sati_set_ata_lba_mid_exp(i32* %38, i64 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @sati_get_cdb_byte(i32* %43, i32 4)
  %45 = call i32 @sati_set_ata_lba_high_exp(i32* %42, i64 %44)
  %46 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %17, %3
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %51 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %52 = load i32, i32* @SCSI_ASC_LBA_OUT_OF_RANGE, align 4
  %53 = load i32, i32* @SCSI_ASCQ_LBA_OUT_OF_RANGE, align 4
  %54 = call i32 @sati_scsi_sense_data_construct(i32* %48, i8* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %47, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i64 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low(i32*, i64) #1

declare dso_local i32 @sati_set_ata_lba_mid(i32*, i64) #1

declare dso_local i32 @sati_set_ata_lba_high(i32*, i64) #1

declare dso_local i32 @sati_set_ata_lba_low_exp(i32*, i64) #1

declare dso_local i32 @sati_set_ata_lba_mid_exp(i32*, i64) #1

declare dso_local i32 @sati_set_ata_lba_high_exp(i32*, i64) #1

declare dso_local i32 @sati_scsi_sense_data_construct(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
