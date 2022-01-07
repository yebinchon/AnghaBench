; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_calloc.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_mspace_calloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE_T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mspace_calloc(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @ok_magic(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @USAGE_ERROR_ACTION(i32 %16, i32 %17)
  store i8* null, i8** %4, align 8
  br label %57

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %28, -65536
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = udiv i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @MAX_SIZE_T, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %31, %22
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i8* @internal_malloc(i32 %41, i64 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @mem2chunk(i8* %47)
  %49 = call i64 @calloc_must_clear(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @memset(i8* %52, i32 0, i64 %53)
  br label %55

55:                                               ; preds = %51, %46, %40
  %56 = load i8*, i8** %8, align 8
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

declare dso_local i32 @ok_magic(i32) #1

declare dso_local i32 @USAGE_ERROR_ACTION(i32, i32) #1

declare dso_local i8* @internal_malloc(i32, i64) #1

declare dso_local i64 @calloc_must_clear(i32) #1

declare dso_local i32 @mem2chunk(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
