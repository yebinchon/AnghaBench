; ModuleID = '/home/carl/AnghaBench/git/compat/extr_qsort_s.c_git_qsort_s.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_qsort_s.c_git_qsort_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_qsort_s(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*, i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*, i8*, i8*)* %3, i32 (i8*, i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @st_mult(i64 %15, i64 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %10, align 8
  %26 = icmp ne i32 (i8*, i8*, i8*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  store i32 -1, i32* %6, align 4
  br label %52

28:                                               ; preds = %24
  %29 = load i64, i64* %12, align 8
  %30 = icmp ult i64 %29, 1024
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %10, align 8
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @msort_with_tmp(i8* %32, i64 %33, i64 %34, i32 (i8*, i8*, i8*)* %35, i8* %36, i8* %37)
  br label %51

39:                                               ; preds = %28
  %40 = load i64, i64* %12, align 8
  %41 = call i8* @xmalloc(i64 %40)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %10, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @msort_with_tmp(i8* %42, i64 %43, i64 %44, i32 (i8*, i8*, i8*)* %45, i8* %46, i8* %47)
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %39, %31
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %27, %20
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i64 @st_mult(i64, i64) #1

declare dso_local i32 @msort_with_tmp(i8*, i64, i64, i32 (i8*, i8*, i8*)*, i8*, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
