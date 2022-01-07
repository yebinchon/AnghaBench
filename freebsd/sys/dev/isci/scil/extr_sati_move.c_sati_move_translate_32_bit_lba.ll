; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_translate_32_bit_lba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_translate_32_bit_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_move_translate_32_bit_lba(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @sati_get_cdb_byte(i32* %14, i32 5)
  %16 = call i32 @sati_set_ata_lba_low(i32* %13, i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @sati_get_cdb_byte(i32* %18, i32 4)
  %20 = call i32 @sati_set_ata_lba_mid(i32* %17, i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @sati_get_cdb_byte(i32* %22, i32 3)
  %24 = call i32 @sati_set_ata_lba_high(i32* %21, i32 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sati_get_cdb_byte(i32* %26, i32 2)
  %28 = call i32 @sati_set_ata_lba_low_exp(i32* %25, i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @sati_set_ata_lba_mid_exp(i32* %29, i32 0)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @sati_set_ata_lba_high_exp(i32* %31, i32 0)
  ret void
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_ata_lba_low(i32*, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high_exp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
