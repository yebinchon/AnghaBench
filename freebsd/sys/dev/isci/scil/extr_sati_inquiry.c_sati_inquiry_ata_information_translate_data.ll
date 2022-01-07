; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_ata_information_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_ata_information_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SCSI_INQUIRY_ATA_INFORMATION_PAGE = common dso_local global i32 0, align 4
@model_number = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_inquiry_ata_information_translate_data(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %7, i8* %8, i32 0, i32 0)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @SCSI_INQUIRY_ATA_INFORMATION_PAGE, align 4
  %13 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %10, i8* %11, i32 1, i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %14, i8* %15, i32 2, i32 2)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %17, i8* %18, i32 3, i32 56)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %20, i8* %21, i32 4, i32 0)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %23, i8* %24, i32 5, i32 0)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %26, i8* %27, i32 6, i32 0)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %29, i8* %30, i32 7, i32 0)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %32, i8* %33, i32 8, i32 65)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %35, i8* %36, i32 9, i32 84)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %38, i8* %39, i32 10, i32 65)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %41, i8* %42, i32 11, i32 32)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %44, i8* %45, i32 12, i32 32)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %47, i8* %48, i32 13, i32 32)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %50, i8* %51, i32 14, i32 32)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %53, i8* %54, i32 15, i32 32)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @model_number, align 4
  %60 = call i32 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @sati_ata_identify_device_copy_data(%struct.TYPE_6__* %56, i8* %57, i32 16, i8* %58, i32 %60, i32 16, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @sati_inquiry_construct_product_revision(%struct.TYPE_6__* %63, i8* %64, i8* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %67, i8* %68, i32 56, i32 236)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %70, i8* %71, i32 57, i32 0)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %73, i8* %74, i32 58, i32 0)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @sati_set_data_byte(%struct.TYPE_6__* %76, i8* %77, i32 59, i32 0)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @sati_ata_identify_device_copy_data(%struct.TYPE_6__* %79, i8* %80, i32 60, i8* %81, i32 0, i32 4, i32 %82)
  %84 = load i32, i32* @SATI_SEQUENCE_STATE_INCOMPLETE, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @SATI_SEQUENCE_INCOMPLETE, align 4
  ret i32 %87
}

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @sati_ata_identify_device_copy_data(%struct.TYPE_6__*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32) #1

declare dso_local i32 @sati_inquiry_construct_product_revision(%struct.TYPE_6__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
