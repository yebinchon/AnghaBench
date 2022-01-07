; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_capacity.c_sati_read_capacity_10_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_capacity.c_sati_read_capacity_10_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_read_capacity_10_translate_data(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = call i32 @sati_ata_identify_device_get_sector_info(i32* %11, i64* %8, i64* %7, i64* %9)
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @sati_set_data_byte(i32* %27, i8* %28, i32 0, i32 255)
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @sati_set_data_byte(i32* %30, i8* %31, i32 1, i32 255)
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @sati_set_data_byte(i32* %33, i8* %34, i32 2, i32 255)
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @sati_set_data_byte(i32* %36, i8* %37, i32 3, i32 255)
  br label %67

39:                                               ; preds = %21
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = ashr i64 %42, 24
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sati_set_data_byte(i32* %40, i8* %41, i32 0, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = ashr i64 %49, 16
  %51 = and i64 %50, 255
  %52 = trunc i64 %51 to i32
  %53 = call i32 @sati_set_data_byte(i32* %47, i8* %48, i32 1, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = ashr i64 %56, 8
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i32
  %60 = call i32 @sati_set_data_byte(i32* %54, i8* %55, i32 2, i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, 255
  %65 = trunc i64 %64 to i32
  %66 = call i32 @sati_set_data_byte(i32* %61, i8* %62, i32 3, i32 %65)
  br label %67

67:                                               ; preds = %39, %26
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = ashr i64 %70, 24
  %72 = and i64 %71, 255
  %73 = trunc i64 %72 to i32
  %74 = call i32 @sati_set_data_byte(i32* %68, i8* %69, i32 4, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = ashr i64 %77, 16
  %79 = and i64 %78, 255
  %80 = trunc i64 %79 to i32
  %81 = call i32 @sati_set_data_byte(i32* %75, i8* %76, i32 5, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = ashr i64 %84, 8
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i32
  %88 = call i32 @sati_set_data_byte(i32* %82, i8* %83, i32 6, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i32
  %94 = call i32 @sati_set_data_byte(i32* %89, i8* %90, i32 7, i32 %93)
  ret void
}

declare dso_local i32 @sati_ata_identify_device_get_sector_info(i32*, i64*, i64*, i64*) #1

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
