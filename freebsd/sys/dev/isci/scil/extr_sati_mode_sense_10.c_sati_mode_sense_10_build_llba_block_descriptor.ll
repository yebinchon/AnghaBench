; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense_10.c_sati_mode_sense_10_build_llba_block_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense_10.c_sati_mode_sense_10_build_llba_block_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @sati_mode_sense_10_build_llba_block_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_mode_sense_10_build_llba_block_descriptor(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
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
  %13 = call i32 @sati_ata_identify_device_get_sector_info(i32* %12, i32* %9, i32* %10, i32* %11)
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = call i32 @sati_set_data_byte(i32* %14, i8* %15, i32 %16, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = call i32 @sati_set_data_byte(i32* %21, i8* %22, i32 %24, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 2
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = call i32 @sati_set_data_byte(i32* %29, i8* %30, i32 %32, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 3
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 255
  %43 = call i32 @sati_set_data_byte(i32* %37, i8* %38, i32 %40, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 4
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = call i32 @sati_set_data_byte(i32* %44, i8* %45, i32 %47, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 5
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = call i32 @sati_set_data_byte(i32* %52, i8* %53, i32 %55, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 6
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = call i32 @sati_set_data_byte(i32* %60, i8* %61, i32 %63, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 7
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @sati_set_data_byte(i32* %68, i8* %69, i32 %71, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 8
  %79 = call i32 @sati_set_data_byte(i32* %75, i8* %76, i32 %78, i32 0)
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 9
  %84 = call i32 @sati_set_data_byte(i32* %80, i8* %81, i32 %83, i32 0)
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 10
  %89 = call i32 @sati_set_data_byte(i32* %85, i8* %86, i32 %88, i32 0)
  %90 = load i32*, i32** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 11
  %94 = call i32 @sati_set_data_byte(i32* %90, i8* %91, i32 %93, i32 0)
  %95 = load i32*, i32** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 12
  %99 = load i32, i32* %11, align 4
  %100 = ashr i32 %99, 24
  %101 = and i32 %100, 255
  %102 = call i32 @sati_set_data_byte(i32* %95, i8* %96, i32 %98, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 13
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 16
  %109 = and i32 %108, 255
  %110 = call i32 @sati_set_data_byte(i32* %103, i8* %104, i32 %106, i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 14
  %115 = load i32, i32* %11, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = call i32 @sati_set_data_byte(i32* %111, i8* %112, i32 %114, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 15
  %123 = load i32, i32* %11, align 4
  %124 = and i32 %123, 255
  %125 = call i32 @sati_set_data_byte(i32* %119, i8* %120, i32 %122, i32 %124)
  %126 = load i32, i32* @SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH, align 4
  ret i32 %126
}

declare dso_local i32 @sati_ata_identify_device_get_sector_info(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
