; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_filter_setvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_filter_setvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bhnd_nvram_val_bcm_string_fmt = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_DYNAMIC = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"non-string value\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid character (%#hhx) in value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, i32*, i32**)* @bhnd_nvram_btxt_filter_setvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_btxt_filter_setvar(%struct.bhnd_nvram_data* %0, i8* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @bhnd_nvram_trim_path_name(i8* %16)
  %18 = call i32 @bhnd_nvram_validate_name(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @BHND_NVRAM_VAL_DYNAMIC, align 4
  %25 = call i32 @bhnd_nvram_val_convert_new(i32** %10, i32* @bhnd_nvram_val_bcm_string_fmt, i32* %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %64

30:                                               ; preds = %22
  %31 = load i32*, i32** %10, align 8
  %32 = call i8* @bhnd_nvram_val_bytes(i32* %31, i64* %13, i64* %12)
  store i8* %32, i8** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @BHND_NVRAM_TYPE_STRING, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BHND_NV_ASSERT(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %15, align 8
  br label %38

38:                                               ; preds = %58, %30
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %57 [
    i32 10, label %48
    i32 35, label %48
  ]

48:                                               ; preds = %42, %42
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 signext %52)
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @bhnd_nvram_val_release(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %15, align 8
  br label %38

61:                                               ; preds = %38
  %62 = load i32*, i32** %10, align 8
  %63 = load i32**, i32*** %9, align 8
  store i32* %62, i32** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %48, %28, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @bhnd_nvram_validate_name(i32) #1

declare dso_local i32 @bhnd_nvram_trim_path_name(i8*) #1

declare dso_local i32 @bhnd_nvram_val_convert_new(i32**, i32*, i32*, i32) #1

declare dso_local i8* @bhnd_nvram_val_bytes(i32*, i64*, i64*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8 signext) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
