; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/extr_const-gnuism.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/extr_const-gnuism.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"FOOBAR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8** %6, i8*** %8, align 8
  %11 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %4, align 8
  store i64 %11, i64* %3, align 8
  %12 = call i32 @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @err(i32 1, i32* null)
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i64, i64* %3, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %10, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @err(i32 1, i32* null)
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %2, align 4
  %24 = load i8**, i8*** %8, align 8
  %25 = call i32 @iconv(i32 %23, i8** %24, i64* %3, i8** %10, i64* %4)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @err(i32 1, i32* null)
  br label %29

29:                                               ; preds = %27, %22
  store i8** %5, i8*** %7, align 8
  %30 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %30, i64* %4, align 8
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @err(i32 1, i32* null)
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %2, align 4
  %38 = load i8**, i8*** %7, align 8
  %39 = call i32 @iconv(i32 %37, i8** %38, i64* %3, i8** %9, i64* %4)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @err(i32 1, i32* null)
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %44
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @iconv_open(i8*, i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @iconv(i32, i8**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
