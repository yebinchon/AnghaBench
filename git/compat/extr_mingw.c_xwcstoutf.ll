; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_xwcstoutf.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_xwcstoutf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xwcstoutf(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %10, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %32

18:                                               ; preds = %13
  %19 = load i32, i32* @CP_UTF8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @WideCharToMultiByte(i32 %19, i32 0, i32* %20, i32 -1, i8* %21, i64 %22, i32* null, i32* null)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @ERANGE, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %26, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
