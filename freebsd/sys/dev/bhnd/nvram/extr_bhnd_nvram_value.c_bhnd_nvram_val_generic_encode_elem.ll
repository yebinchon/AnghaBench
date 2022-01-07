; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_generic_encode_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_generic_encode_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"missing encode_elem() implementation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_val_generic_encode_elem(i32* %0, i8* %1, i64 %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @bhnd_nvram_val_elem_type(i32* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  switch i32 %17, label %58 [
    i32 133, label %18
    i32 138, label %26
    i32 132, label %34
    i32 139, label %34
    i32 140, label %42
    i32 128, label %50
    i32 131, label %50
    i32 130, label %50
    i32 129, label %50
    i32 134, label %50
    i32 137, label %50
    i32 136, label %50
    i32 135, label %50
  ]

18:                                               ; preds = %6
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @bhnd_nvram_val_encode_null(i8* %19, i64 %20, i32 %21, i8* %22, i64* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %60

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @bhnd_nvram_val_encode_data(i8* %27, i64 %28, i32 %29, i8* %30, i64* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %60

34:                                               ; preds = %6, %6
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @bhnd_nvram_val_encode_string(i8* %35, i64 %36, i32 %37, i8* %38, i64* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %60

42:                                               ; preds = %6
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @bhnd_nvram_val_encode_bool(i8* %43, i64 %44, i32 %45, i8* %46, i64* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %60

50:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @bhnd_nvram_val_encode_int(i8* %51, i64 %52, i32 %53, i8* %54, i64* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %60

58:                                               ; preds = %6
  %59 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %18, %26, %34, %42, %50, %58
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @bhnd_nvram_val_elem_type(i32*) #1

declare dso_local i32 @bhnd_nvram_val_encode_null(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode_data(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode_string(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode_bool(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode_int(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @BHND_NV_PANIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
