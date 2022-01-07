; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/which/extr_which.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/which/extr_which.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"as\00", align 1
@allpaths = common dso_local global i32 0, align 4
@silent = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %21 [
    i32 97, label %19
    i32 115, label %20
  ]

19:                                               ; preds = %17
  store i32 1, i32* @allpaths, align 4
  br label %23

20:                                               ; preds = %17
  store i32 1, i32* @silent, align 4
  br label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %20, %19
  br label %12

24:                                               ; preds = %12
  %25 = load i64, i64* @optind, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 %25
  store i8** %27, i8*** %5, align 8
  %28 = load i64, i64* @optind, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %24
  %38 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i8* @malloc(i64 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @err(i32 %52, i32* null)
  br label %54

54:                                               ; preds = %51, %43
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = load i64, i64* @FILENAME_MAX, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %58
  %69 = load i8*, i8** %7, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @print_matches(i8* %69, i8* %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %58
  %75 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  br label %55

81:                                               ; preds = %55
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @exit(i32 %82) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @print_matches(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
