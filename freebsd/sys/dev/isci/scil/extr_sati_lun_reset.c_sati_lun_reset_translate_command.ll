; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_lun_reset.c_sati_lun_reset_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_lun_reset.c_sati_lun_reset_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@ATA_NOP = common dso_local global i32 0, align 4
@ATA_CONTROL_REG_SOFT_RESET_BIT = common dso_local global i32 0, align 4
@SATI_SEQUENCE_LUN_RESET = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_NONE = common dso_local global i32 0, align 4
@SAT_PROTOCOL_SOFT_RESET = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_lun_reset_translate_command(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* @ATA_NOP, align 4
  %12 = call i32 @sati_set_ata_command(i32* %10, i32 %11)
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @ATA_CONTROL_REG_SOFT_RESET_BIT, align 4
  %15 = call i32 @sati_set_ata_control(i32* %13, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @sati_clear_sata_command_flag(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @sati_set_ata_features(i32* %18, i32 0)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @sati_set_ata_features_exp(i32* %20, i32 0)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @sati_set_ata_sector_count(i32* %22, i32 0)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @sati_set_ata_sector_count_exp(i32* %24, i32 0)
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sati_set_ata_lba_low(i32* %26, i32 0)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @sati_set_ata_lba_mid(i32* %28, i32 0)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @sati_set_ata_lba_high(i32* %30, i32 0)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sati_set_ata_lba_low_exp(i32* %32, i32 0)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @sati_set_ata_lba_mid_exp(i32* %34, i32 0)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sati_set_ata_lba_high_exp(i32* %36, i32 0)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @sati_set_ata_device_head(i32* %38, i32 0)
  %40 = load i32, i32* @SATI_SEQUENCE_LUN_RESET, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @SATI_DATA_DIRECTION_NONE, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @SAT_PROTOCOL_SOFT_RESET, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @SATI_SUCCESS, align 4
  ret i32 %51
}

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

declare dso_local i32 @sati_set_ata_control(i32*, i32) #1

declare dso_local i32 @sati_clear_sata_command_flag(i32*) #1

declare dso_local i32 @sati_set_ata_features(i32*, i32) #1

declare dso_local i32 @sati_set_ata_features_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high_exp(i32*, i32) #1

declare dso_local i32 @sati_set_ata_device_head(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
