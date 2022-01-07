; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_vprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_NVRAM_VAL_BORROW_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_value_vprintf(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @BHND_NVRAM_VAL_BORROW_DATA, align 4
  %22 = call i32 @bhnd_nvram_val_init(i32* %16, i32* null, i8* %18, i64 %19, i32 %20, i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %8, align 4
  br label %35

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @bhnd_nvram_val_vprintf(i32* %16, i8* %28, i8* %29, i64* %30, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = call i32 @bhnd_nvram_val_release(i32* %16)
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %27, %25
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @bhnd_nvram_val_init(i32*, i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @bhnd_nvram_val_vprintf(i32*, i8*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
