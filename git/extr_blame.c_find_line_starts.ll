; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_line_starts.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_line_starts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i64)* @find_line_starts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_line_starts(i32** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %22, %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @get_next_line(i8* %23, i8* %24)
  store i8* %25, i8** %8, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load i32**, i32*** %4, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @ALLOC_ARRAY(i32* %28, i32 %30)
  %32 = load i32**, i32*** %4, align 8
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %48, %26
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @get_next_line(i8* %49, i8* %50)
  store i8* %51, i8** %8, align 8
  br label %35

52:                                               ; preds = %35
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i8* @get_next_line(i8*, i8*) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
