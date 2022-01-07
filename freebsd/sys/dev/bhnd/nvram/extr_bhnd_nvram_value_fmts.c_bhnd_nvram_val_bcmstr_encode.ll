; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_val_bcmstr_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_val_bcmstr_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_NVRAM_TYPE_CHAR_ARRAY = common dso_local global i32 0, align 4
@bhnd_nvram_val_bcm_macaddr_string_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_bcm_string_csv_fmt = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error initializing array representation: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error encoding array representation: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*, i32)* @bhnd_nvram_val_bcmstr_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_bcmstr_encode(i32* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @bhnd_nvram_val_bytes(i32* %16, i64* %14, i32* %13)
  store i8* %17, i8** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @bhnd_nvram_is_array_type(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @BHND_NVRAM_TYPE_CHAR_ARRAY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %4
  %26 = load i8*, i8** %12, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @bhnd_nvram_value_coerce(i8* %26, i64 %27, i32 %28, i8* %29, i64* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %68

33:                                               ; preds = %21
  %34 = load i32*, i32** %6, align 8
  %35 = call i8* @bhnd_nvram_val_bytes(i32* %34, i64* %14, i32* %13)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i64 @bhnd_nvram_ident_octet_string(i8* %36, i64 %37, i32* null, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32* @bhnd_nvram_val_bcm_macaddr_string_fmt, i32** %11, align 8
  br label %42

41:                                               ; preds = %33
  store i32* @bhnd_nvram_val_bcm_string_csv_fmt, i32** %11, align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32*, i32** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %48 = call i32 @bhnd_nvram_val_init(i32* %10, i32* %43, i8* %44, i64 %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %5, align 4
  br label %68

55:                                               ; preds = %42
  %56 = load i8*, i8** %7, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @bhnd_nvram_val_encode(i32* %10, i8* %56, i64* %57, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %55
  %66 = call i32 @bhnd_nvram_val_release(i32* %10)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %51, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @bhnd_nvram_val_bytes(i32*, i64*, i32*) #1

declare dso_local i32 @bhnd_nvram_is_array_type(i32) #1

declare dso_local i32 @bhnd_nvram_value_coerce(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i64 @bhnd_nvram_ident_octet_string(i8*, i64, i32*, i32*) #1

declare dso_local i32 @bhnd_nvram_val_init(i32*, i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
