; ModuleID = '/home/carl/AnghaBench/git/compat/extr_sha1-chunked.c_git_SHA1_Update_Chunked.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_sha1-chunked.c_git_SHA1_Update_Chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAX_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_SHA1_Update_Chunked(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  br label %11

11:                                               ; preds = %21, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @SHA1_MAX_BLOCK_SIZE, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @SHA1_MAX_BLOCK_SIZE, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @platform_SHA1_Update(i32* %22, i8* %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 %29
  store i8* %31, i8** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local i32 @platform_SHA1_Update(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
