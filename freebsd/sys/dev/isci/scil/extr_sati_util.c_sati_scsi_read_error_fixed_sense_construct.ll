; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_read_error_fixed_sense_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_scsi_read_error_fixed_sense_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SCSI_FIXED_CURRENT_RESPONSE_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i32, i32, i32, i32)* @sati_scsi_read_error_fixed_sense_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_scsi_read_error_fixed_sense_construct(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %22)
  store i32* %23, i32** %20, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @sati_scsi_get_sense_data_buffer(i32* %24, i8* %25, i32 %26, i32** %17, i32* %18)
  %28 = load i32*, i32** %20, align 8
  %29 = call i64 @sati_get_ata_lba_mid_ext(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %19, align 4
  br label %33

33:                                               ; preds = %31, %8
  %34 = load i32*, i32** %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @sati_get_ata_lba_low_ext(i32* %36)
  %38 = call i32 @sati_set_sense_data_byte(i32* %34, i32 %35, i32 3, i32 %37)
  %39 = load i32*, i32** %17, align 8
  %40 = load i32, i32* %18, align 4
  %41 = load i32*, i32** %20, align 8
  %42 = call i32 @sati_get_ata_lba_high(i32* %41)
  %43 = call i32 @sati_set_sense_data_byte(i32* %39, i32 %40, i32 4, i32 %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 @sati_get_ata_lba_mid(i32* %46)
  %48 = call i32 @sati_set_sense_data_byte(i32* %44, i32 %45, i32 5, i32 %47)
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32*, i32** %20, align 8
  %52 = call i32 @sati_get_ata_lba_low(i32* %51)
  %53 = call i32 @sati_set_sense_data_byte(i32* %49, i32 %50, i32 6, i32 %52)
  %54 = load i32*, i32** %17, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = shl i32 %56, 7
  %58 = load i32, i32* @SCSI_FIXED_CURRENT_RESPONSE_CODE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @sati_set_sense_data_byte(i32* %54, i32 %55, i32 0, i32 %59)
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @sati_scsi_common_fixed_sense_construct(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_scsi_get_sense_data_buffer(i32*, i8*, i32, i32**, i32*) #1

declare dso_local i64 @sati_get_ata_lba_mid_ext(i32*) #1

declare dso_local i32 @sati_set_sense_data_byte(i32*, i32, i32, i32) #1

declare dso_local i32 @sati_get_ata_lba_low_ext(i32*) #1

declare dso_local i32 @sati_get_ata_lba_high(i32*) #1

declare dso_local i32 @sati_get_ata_lba_mid(i32*) #1

declare dso_local i32 @sati_get_ata_lba_low(i32*) #1

declare dso_local i32 @sati_scsi_common_fixed_sense_construct(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
