; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_mkpath.c_mkpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_mkpath.c_mkpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkpath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %59, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcspn(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @stat(i8* %29, %struct.stat* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %12
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @mkdir(i8* %37, i32 511)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EEXIST, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %32
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %2, align 4
  br label %62

47:                                               ; preds = %40, %36
  br label %59

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S_ISDIR(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @ENOTDIR, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %56)
  store i32 -1, i32* %2, align 4
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i8*, i8** %5, align 8
  store i8 47, i8* %60, align 1
  br label %8

61:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %53, %44
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
