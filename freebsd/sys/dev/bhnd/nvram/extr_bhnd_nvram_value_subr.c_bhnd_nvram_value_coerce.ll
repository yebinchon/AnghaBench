; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_coerce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_coerce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_value_coerce(i8* %0, i64 %1, i32 %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %20 = load i32, i32* @BHND_NVRAM_VAL_FIXED, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @bhnd_nvram_val_init(i32* %14, i32* null, i8* %16, i64 %17, i32 %18, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %34

27:                                               ; preds = %6
  %28 = load i8*, i8** %11, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @bhnd_nvram_val_encode(i32* %14, i8* %28, i64* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = call i32 @bhnd_nvram_val_release(i32* %14)
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @bhnd_nvram_val_init(i32*, i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @bhnd_nvram_val_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
