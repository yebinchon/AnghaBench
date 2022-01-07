; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_standard_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_inquiry.c_sati_inquiry_standard_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ATA_IDENTIFY_REMOVABLE_MEDIA_ENABLE = common dso_local global i32 0, align 4
@model_number = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_inquiry_standard_translate_data(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sati_set_data_byte(i32* %11, i8* %12, i32 0, i32 0)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_IDENTIFY_REMOVABLE_MEDIA_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @sati_set_data_byte(i32* %21, i8* %22, i32 1, i32 128)
  br label %28

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @sati_set_data_byte(i32* %25, i8* %26, i32 1, i32 0)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @sati_set_data_byte(i32* %29, i8* %30, i32 2, i32 5)
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @sati_set_data_byte(i32* %32, i8* %33, i32 3, i32 2)
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @sati_set_data_byte(i32* %35, i8* %36, i32 4, i32 62)
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sati_set_data_byte(i32* %38, i8* %39, i32 5, i32 0)
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @sati_set_data_byte(i32* %41, i8* %42, i32 6, i32 0)
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @sati_set_data_byte(i32* %44, i8* %45, i32 7, i32 2)
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sati_set_data_byte(i32* %47, i8* %48, i32 8, i32 65)
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @sati_set_data_byte(i32* %50, i8* %51, i32 9, i32 84)
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sati_set_data_byte(i32* %53, i8* %54, i32 10, i32 65)
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @sati_set_data_byte(i32* %56, i8* %57, i32 11, i32 32)
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @sati_set_data_byte(i32* %59, i8* %60, i32 12, i32 32)
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @sati_set_data_byte(i32* %62, i8* %63, i32 13, i32 32)
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @sati_set_data_byte(i32* %65, i8* %66, i32 14, i32 32)
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @sati_set_data_byte(i32* %68, i8* %69, i32 15, i32 32)
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @model_number, align 4
  %75 = call i32 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32 %74)
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i32 @sati_ata_identify_device_copy_data(i32* %71, i8* %72, i32 16, i8* %73, i32 %75, i32 16, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @sati_inquiry_construct_product_revision(i32* %78, i8* %79, i8* %80)
  store i32 36, i32* %8, align 4
  br label %82

82:                                               ; preds = %90, %28
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 58
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @sati_set_data_byte(i32* %86, i8* %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %82

93:                                               ; preds = %82
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @sati_set_data_byte(i32* %94, i8* %95, i32 58, i32 0)
  %97 = load i32*, i32** %4, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @sati_set_data_byte(i32* %97, i8* %98, i32 59, i32 128)
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @sati_set_data_byte(i32* %100, i8* %101, i32 60, i32 12)
  %103 = load i32*, i32** %4, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @sati_set_data_byte(i32* %103, i8* %104, i32 61, i32 32)
  %106 = load i32*, i32** %4, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @sati_set_data_byte(i32* %106, i8* %107, i32 62, i32 4)
  %109 = load i32*, i32** %4, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @sati_set_data_byte(i32* %109, i8* %110, i32 63, i32 96)
  %112 = load i32*, i32** %4, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @sati_set_data_byte(i32* %112, i8* %113, i32 64, i32 4)
  %115 = load i32*, i32** %4, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @sati_set_data_byte(i32* %115, i8* %116, i32 65, i32 192)
  %118 = load i32*, i32** %4, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @sati_set_data_byte(i32* %118, i8* %119, i32 66, i32 22)
  %121 = load i32*, i32** %4, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @sati_set_data_byte(i32* %121, i8* %122, i32 67, i32 35)
  ret void
}

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

declare dso_local i32 @sati_ata_identify_device_copy_data(i32*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ATA_IDENTIFY_DEVICE_GET_OFFSET(i32) #1

declare dso_local i32 @sati_inquiry_construct_product_revision(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
