; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_getvar_ptr_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_getvar_ptr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_vardefn = type { i32* }

@BHND_NVRAM_DATA_CAP_READ_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"instance does not advertise READ_PTR support\00", align 1
@BHND_NVRAM_DATA_CAP_DEVPATHS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"NULL format for %s\00", align 1
@BHND_NVRAM_TYPE_STRING = common dso_local global i64 0, align 8
@bhnd_nvram_val_bcm_string_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bhnd_nvram_data*, i8*, i64*, i64*, i32**)* @bhnd_nvram_data_getvar_ptr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bhnd_nvram_data_getvar_ptr_info(%struct.bhnd_nvram_data* %0, i8* %1, i64* %2, i64* %3, i32** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bhnd_nvram_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.bhnd_nvram_vardefn*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32** %4, i32*** %11, align 8
  %15 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %16 = call i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data* %15)
  %17 = load i32, i32* @BHND_NVRAM_DATA_CAP_READ_PTR, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @BHND_NV_ASSERT(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = call i8* @bhnd_nvram_data_getvar_ptr(%struct.bhnd_nvram_data* %20, i8* %21, i64* %22, i64* %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %72

28:                                               ; preds = %5
  %29 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @bhnd_nvram_data_getvar_name(%struct.bhnd_nvram_data* %29, i8* %30)
  store i8* %31, i8** %13, align 8
  %32 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %33 = call i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data* %32)
  %34 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i8*, i8** %13, align 8
  %39 = call i8* @bhnd_nvram_trim_path_name(i8* %38)
  store i8* %39, i8** %13, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i8*, i8** %13, align 8
  %42 = call %struct.bhnd_nvram_vardefn* @bhnd_nvram_find_vardefn(i8* %41)
  store %struct.bhnd_nvram_vardefn* %42, %struct.bhnd_nvram_vardefn** %12, align 8
  %43 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %12, align 8
  %44 = icmp ne %struct.bhnd_nvram_vardefn* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %12, align 8
  %47 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @BHND_NV_ASSERT(i32 %50, i8* %51)
  %53 = load %struct.bhnd_nvram_vardefn*, %struct.bhnd_nvram_vardefn** %12, align 8
  %54 = getelementptr inbounds %struct.bhnd_nvram_vardefn, %struct.bhnd_nvram_vardefn* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %11, align 8
  store i32* %55, i32** %56, align 8
  br label %70

57:                                               ; preds = %40
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BHND_NVRAM_TYPE_STRING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32**, i32*** %11, align 8
  store i32* @bhnd_nvram_val_bcm_string_fmt, i32** %63, align 8
  br label %69

64:                                               ; preds = %57
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32* @bhnd_nvram_val_default_fmt(i64 %66)
  %68 = load i32**, i32*** %11, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %64, %62
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i8*, i8** %14, align 8
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %70, %27
  %73 = load i8*, i8** %6, align 8
  ret i8* %73
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data*) #1

declare dso_local i8* @bhnd_nvram_data_getvar_ptr(%struct.bhnd_nvram_data*, i8*, i64*, i64*) #1

declare dso_local i8* @bhnd_nvram_data_getvar_name(%struct.bhnd_nvram_data*, i8*) #1

declare dso_local i8* @bhnd_nvram_trim_path_name(i8*) #1

declare dso_local %struct.bhnd_nvram_vardefn* @bhnd_nvram_find_vardefn(i8*) #1

declare dso_local i32* @bhnd_nvram_val_default_fmt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
