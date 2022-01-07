; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_build_std_block_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_build_std_block_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_mode_sense_build_std_block_descriptor(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @sati_ata_identify_device_get_sector_info(i32* %12, i32* %10, i32* %9, i32* %11)
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = call i32 @sati_set_data_byte(i32* %14, i8* %15, i32 %16, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = call i32 @sati_set_data_byte(i32* %21, i8* %22, i32 %24, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 2
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = call i32 @sati_set_data_byte(i32* %29, i8* %30, i32 %32, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 3
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 255
  %43 = call i32 @sati_set_data_byte(i32* %37, i8* %38, i32 %40, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 4
  %48 = call i32 @sati_set_data_byte(i32* %44, i8* %45, i32 %47, i32 0)
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 5
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = call i32 @sati_set_data_byte(i32* %49, i8* %50, i32 %52, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 6
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = call i32 @sati_set_data_byte(i32* %57, i8* %58, i32 %60, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 7
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 255
  %71 = call i32 @sati_set_data_byte(i32* %65, i8* %66, i32 %68, i32 %70)
  %72 = load i32, i32* @SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH, align 4
  ret i32 %72
}

declare dso_local i32 @sati_ata_identify_device_get_sector_info(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
