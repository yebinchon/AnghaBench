; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_val_bcm_macaddr_string_encode_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_val_bcm_macaddr_string_encode_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64*, i32)* @bhnd_nvram_val_bcm_macaddr_string_encode_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_bcm_macaddr_string_encode_elem(i32* %0, i8* %1, i64 %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call i64 @bhnd_nvram_is_int_type(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %6
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @bhnd_nvram_parse_int(i8* %20, i64 %21, i32 16, i64* %14, i8* %22, i64* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %7, align 4
  br label %46

30:                                               ; preds = %19
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @EFTYPE, align 4
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %46

37:                                               ; preds = %6
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @bhnd_nvram_val_elem_type(i32* %40)
  %42 = load i8*, i8** %11, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @bhnd_nvram_value_coerce(i8* %38, i64 %39, i32 %41, i8* %42, i64* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %37, %36, %34, %28
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i64 @bhnd_nvram_is_int_type(i32) #1

declare dso_local i32 @bhnd_nvram_parse_int(i8*, i64, i32, i64*, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_value_coerce(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_val_elem_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
