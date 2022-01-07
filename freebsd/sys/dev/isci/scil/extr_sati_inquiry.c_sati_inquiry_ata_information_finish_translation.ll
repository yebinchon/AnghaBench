; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_ata_information_finish_translation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_ata_information_finish_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SATI_SEQUENCE_STATE_FINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_inquiry_ata_information_finish_translation(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32* @sati_cb_get_d2h_register_fis_address(i8* %9)
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %11, i8* %12, i32 36, i32 52)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %14, i8* %15, i32 37, i32 0)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @sati_get_ata_status(i32* %19)
  %21 = trunc i64 %20 to i32
  %22 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %17, i8* %18, i32 38, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @sati_get_ata_error(i32* %25)
  %27 = trunc i64 %26 to i32
  %28 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %23, i8* %24, i32 39, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @sati_get_ata_lba_low(i32* %31)
  %33 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %29, i8* %30, i32 40, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sati_get_ata_lba_mid(i32* %36)
  %38 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %34, i8* %35, i32 41, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @sati_get_ata_lba_high(i32* %41)
  %43 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %39, i8* %40, i32 42, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @sati_get_ata_device(i32* %46)
  %48 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %44, i8* %45, i32 43, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @sati_get_ata_lba_low_ext(i32* %51)
  %53 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %49, i8* %50, i32 44, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @sati_get_ata_lba_mid_ext(i32* %56)
  %58 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %54, i8* %55, i32 45, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @sati_get_ata_lba_high_ext(i32* %61)
  %63 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %59, i8* %60, i32 46, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %64, i8* %65, i32 47, i32 0)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @sati_get_ata_sector_count(i32* %69)
  %71 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %67, i8* %68, i32 48, i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @sati_get_ata_sector_count_exp(i32* %74)
  %76 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %72, i8* %73, i32 49, i32 %75)
  store i32 50, i32* %8, align 4
  br label %77

77:                                               ; preds = %85, %3
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 56
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %81, i8* %82, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %77

88:                                               ; preds = %77
  %89 = load i32, i32* @SATI_SEQUENCE_STATE_FINAL, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  ret void
}

declare dso_local i32* @sati_cb_get_d2h_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i64 @sati_get_ata_status(i32*) #1

declare dso_local i64 @sati_get_ata_error(i32*) #1

declare dso_local i32 @sati_get_ata_lba_low(i32*) #1

declare dso_local i32 @sati_get_ata_lba_mid(i32*) #1

declare dso_local i32 @sati_get_ata_lba_high(i32*) #1

declare dso_local i32 @sati_get_ata_device(i32*) #1

declare dso_local i32 @sati_get_ata_lba_low_ext(i32*) #1

declare dso_local i32 @sati_get_ata_lba_mid_ext(i32*) #1

declare dso_local i32 @sati_get_ata_lba_high_ext(i32*) #1

declare dso_local i32 @sati_get_ata_sector_count(i32*) #1

declare dso_local i32 @sati_get_ata_sector_count_exp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
