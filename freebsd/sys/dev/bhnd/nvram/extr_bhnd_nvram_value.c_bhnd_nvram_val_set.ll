; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8* }

@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_STATIC_DATA = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_DATA_EXT_STATIC = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_DATA_EXT_WEAK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64, i32, i32)* @bhnd_nvram_val_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_set(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = call i32 @BHND_NVRAM_VAL_ASSERT_EMPTY(%struct.TYPE_7__* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @bhnd_nvram_value_check_aligned(i8* %16, i64 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %72

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @BHND_NVRAM_VAL_STATIC_DATA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @BHND_NVRAM_VAL_STATIC_DATA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @BHND_NVRAM_VAL_DATA_EXT_STATIC, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @BHND_NVRAM_VAL_DATA_EXT_WEAK, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %6, align 4
  br label %72

57:                                               ; preds = %28
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i8* @bhnd_nvram_val_alloc_bytes(%struct.TYPE_7__* %58, i64 %59, i32 %60, i32 %61)
  store i8* %62, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %6, align 4
  br label %72

67:                                               ; preds = %57
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @memcpy(i8* %68, i8* %69, i64 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %65, %46, %21
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @BHND_NVRAM_VAL_ASSERT_EMPTY(%struct.TYPE_7__*) #1

declare dso_local i32 @bhnd_nvram_value_check_aligned(i8*, i64, i32) #1

declare dso_local i8* @bhnd_nvram_val_alloc_bytes(%struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
