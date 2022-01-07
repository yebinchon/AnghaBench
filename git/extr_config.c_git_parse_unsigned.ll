; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_parse_unsigned.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_parse_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @git_parse_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_parse_unsigned(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  store i64 0, i64* @errno, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strtoumax(i8* %19, i8** %8, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ERANGE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @get_unit_factor(i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* @EINVAL, align 8
  store i64 %31, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @unsigned_mult_overflows(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %32
  %44 = load i64, i64* @ERANGE, align 8
  store i64 %44, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  store i32 1, i32* %4, align 4
  br label %53

51:                                               ; preds = %13, %3
  %52 = load i64, i64* @EINVAL, align 8
  store i64 %52, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %45, %43, %30, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @get_unit_factor(i8*) #1

declare dso_local i64 @unsigned_mult_overflows(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
