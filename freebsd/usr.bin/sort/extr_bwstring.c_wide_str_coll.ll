; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_wide_str_coll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_wide_str_coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @wide_str_coll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wide_str_coll(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* @errno, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @wcscoll(i32* %10, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EILSEQ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @wcscmp(i32* %17, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* @errno, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 -1
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %23
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %58

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %23

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %48, %42, %34
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @wcscoll(i32*, i32*) #1

declare dso_local i32 @wcscmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
