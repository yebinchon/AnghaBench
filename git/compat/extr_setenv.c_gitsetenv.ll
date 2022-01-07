; ModuleID = '/home/carl/AnghaBench/git/compat/extr_setenv.c_gitsetenv.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_setenv.c_gitsetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gitsetenv(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strchr(i8* %16, i8 signext 61)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %15, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %71

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  store i8* null, i8** %12, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @getenv(i8* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %71

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @st_add3(i64 %39, i64 %40, i32 2)
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %71

47:                                               ; preds = %34
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 61, i8* %54, align 1
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %63, %64
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @putenv(i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %47, %45, %32, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @st_add3(i64, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @putenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
