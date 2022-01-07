; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/renice/extr_renice.c_getnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/renice/extr_renice.c_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s argument %s is out of range.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad %s argument: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @getnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnum(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strtol(i8* %10, i8** %9, i32 10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @INT_MIN, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @INT_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ERANGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %15, %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  store i32 1, i32* %4, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %31, %27
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  store i32 1, i32* %4, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %39, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
