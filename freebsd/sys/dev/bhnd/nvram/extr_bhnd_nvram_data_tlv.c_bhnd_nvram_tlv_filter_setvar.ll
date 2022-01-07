; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_filter_setvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_tlv.c_bhnd_nvram_tlv_filter_setvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }

@NVRAM_TLV_ENVP_DATA_MAX_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"'%s=' exceeds maximum TLV_ENV record length\0A\00", align 1
@bhnd_nvram_val_bcm_string_fmt = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"'%.*s\\0' exceeds maximum TLV_ENV record length\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_data*, i8*, i32*, i32**)* @bhnd_nvram_tlv_filter_setvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_tlv_filter_setvar(%struct.bhnd_nvram_data* %0, i8* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %17 = load i64, i64* @NVRAM_TLV_ENVP_DATA_MAX_LEN, align 8
  store i64 %17, i64* %15, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @bhnd_nvram_trim_path_name(i8* %18)
  %20 = call i32 @bhnd_nvram_validate_name(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (i8*, i8*, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %69

36:                                               ; preds = %24
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %15, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @BHND_NVRAM_VAL_DYNAMIC, align 4
  %42 = call i32 @bhnd_nvram_val_convert_new(i32** %10, i32* @bhnd_nvram_val_bcm_string_fmt, i32* %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %5, align 4
  br label %69

47:                                               ; preds = %36
  %48 = load i32*, i32** %10, align 8
  %49 = call i8* @bhnd_nvram_val_bytes(i32* %48, i64* %13, i32* %12)
  store i8* %49, i8** %11, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @BHND_NV_PRINT_WIDTH(i64 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 (i8*, i8*, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @bhnd_nvram_val_release(i32* %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %47
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %15, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32**, i32*** %9, align 8
  store i32* %67, i32** %68, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %53, %45, %32, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @bhnd_nvram_validate_name(i32) #1

declare dso_local i32 @bhnd_nvram_trim_path_name(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8*, ...) #1

declare dso_local i32 @bhnd_nvram_val_convert_new(i32**, i32*, i32*, i32) #1

declare dso_local i8* @bhnd_nvram_val_bytes(i32*, i64*, i32*) #1

declare dso_local i32 @BHND_NV_PRINT_WIDTH(i64) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
