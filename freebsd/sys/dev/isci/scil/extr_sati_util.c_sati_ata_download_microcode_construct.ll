; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_ata_download_microcode_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_ata_download_microcode_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ATA_DOWNLOAD_MICROCODE = common dso_local global i32 0, align 4
@ATA_MICROCODE_DOWNLOAD_SAVE = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_OUT = common dso_local global i32 0, align 4
@SAT_PROTOCOL_PIO_DATA_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_ata_download_microcode_construct(i8* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %14)
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = ashr i32 %16, 9
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = ashr i32 %18, 9
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* @ATA_DOWNLOAD_MICROCODE, align 4
  %22 = call i32 @sati_set_ata_command(i32* %20, i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @sati_set_ata_features(i32* %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ATA_MICROCODE_DOWNLOAD_SAVE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 9
  %33 = call i32 @sati_set_ata_sector_count(i32* %30, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 17
  %37 = call i32 @sati_set_ata_lba_low(i32* %34, i32 %36)
  br label %57

38:                                               ; preds = %5
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @sati_set_ata_sector_count(i32* %39, i32 %41)
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = call i32 @sati_set_ata_lba_low(i32* %43, i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @sati_set_ata_lba_mid(i32* %48, i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %13, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = call i32 @sati_set_ata_lba_high(i32* %52, i32 %55)
  br label %57

57:                                               ; preds = %38, %29
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = call i32 @sati_ata_non_data_command(i8* %64, %struct.TYPE_4__* %65)
  br label %77

67:                                               ; preds = %60, %57
  %68 = load i32, i32* @SATI_DATA_DIRECTION_OUT, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @SAT_PROTOCOL_PIO_DATA_OUT, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %63
  ret void
}

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

declare dso_local i32 @sati_set_ata_features(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high(i32*, i32) #1

declare dso_local i32 @sati_ata_non_data_command(i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
