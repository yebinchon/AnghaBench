; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_generic_rp_getvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_generic_rp_getvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }

@BHND_NVRAM_DATA_CAP_READ_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"instance does not advertise READ_PTR support\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_data_generic_rp_getvar(%struct.bhnd_nvram_data* %0, i8* %1, i8* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %19 = call i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data* %18)
  %20 = load i32, i32* @BHND_NVRAM_DATA_CAP_READ_PTR, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @BHND_NV_ASSERT(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @bhnd_nvram_data_getvar_ptr_info(%struct.bhnd_nvram_data* %23, i8* %24, i64* %16, i32* %15, i32** %13)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %48

30:                                               ; preds = %5
  %31 = load i32*, i32** %13, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %36 = call i32 @bhnd_nvram_val_init(i32* %12, i32* %31, i8* %32, i64 %33, i32 %34, i32 %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %30
  %42 = load i8*, i8** %9, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @bhnd_nvram_val_encode(i32* %12, i8* %42, i64* %43, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = call i32 @bhnd_nvram_val_release(i32* %12)
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %39, %28
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data*) #1

declare dso_local i8* @bhnd_nvram_data_getvar_ptr_info(%struct.bhnd_nvram_data*, i8*, i64*, i32*, i32**) #1

declare dso_local i32 @bhnd_nvram_val_init(i32*, i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
