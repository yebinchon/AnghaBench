; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_timeprt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_timeprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timeprt.now = internal global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"strdup() failed in timeprt()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%lddays\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"asprintf() failed in timeprt(1)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%2ld:%ld\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"asprintf() failed in timeprt(2)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%2ld\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"asprintf() failed in timeprt(3)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @timeprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @timeprt(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* @timeprt.now, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @time(i64* @timeprt.now)
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i64, i64* @timeprt.now, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %2, align 8
  br label %66

22:                                               ; preds = %11
  %23 = load i64, i64* @timeprt.now, align 8
  %24 = load i64, i64* %3, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, 30
  %28 = sdiv i64 %27, 60
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 30
  %31 = sdiv i64 %30, 60
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp sge i64 %32, 36
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 12
  %37 = sdiv i64 %36, 24
  %38 = call i64 (i8**, i8*, i64, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %2, align 8
  br label %66

44:                                               ; preds = %22
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %45, 60
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = sdiv i64 %48, 60
  %50 = load i64, i64* %5, align 8
  %51 = srem i64 %50, 60
  %52 = call i64 (i8**, i8*, i64, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %49, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %2, align 8
  br label %66

58:                                               ; preds = %44
  %59 = load i64, i64* %5, align 8
  %60 = call i64 (i8**, i8*, i64, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %64, %56, %42, %20
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i32 @time(i64*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @asprintf(i8**, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
