; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_fetch_stats_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_fetch_stats_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@live = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"sysctl %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32 (i64, i8*, i64)*, i32)* @fetch_stats_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_stats_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32 (i64, i8*, i64)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i64, i8*, i64)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i64, i8*, i64)* %4, i32 (i64, i8*, i64)** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* @live, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %6
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @memset(i8* %18, i32 0, i64 %19)
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @sysctlbyname(i8* %24, i8* null, i64* null, i8* %25, i64 %26)
  store i32 %27, i32* %14, align 4
  br label %32

28:                                               ; preds = %17
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @sysctlbyname(i8* %29, i8* %30, i64* %11, i8* null, i64 0)
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %14, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOENT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @xo_warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %35, %32
  br label %53

43:                                               ; preds = %6
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %55

47:                                               ; preds = %43
  %48 = load i32 (i64, i8*, i64)*, i32 (i64, i8*, i64)** %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 %48(i64 %49, i8* %50, i64 %51)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @xo_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
