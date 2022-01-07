; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_parse_signed.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_parse_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @git_parse_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_parse_signed(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %61

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  store i64 0, i64* @errno, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strtoimax(i8* %20, i8** %8, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ERANGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %63

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @get_unit_factor(i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* @EINVAL, align 8
  store i64 %32, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %63

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 0, %37
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @unsigned_mult_overflows(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41
  %54 = load i64, i64* @ERANGE, align 8
  store i64 %54, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %63

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %4, align 4
  br label %63

61:                                               ; preds = %14, %3
  %62 = load i64, i64* @EINVAL, align 8
  store i64 %62, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %55, %53, %31, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @strtoimax(i8*, i8**, i32) #1

declare dso_local i32 @get_unit_factor(i8*) #1

declare dso_local i64 @unsigned_mult_overflows(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
