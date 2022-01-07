; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_seconds.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_seconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%02ldd%02ldh\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%02ldh%02ldm\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%02ldm%02lds\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"   %02lds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @stat_seconds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_seconds(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 86400
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sdiv i64 %12, 86400
  %14 = load i64, i64* %6, align 8
  %15 = srem i64 %14, 86400
  %16 = sdiv i64 %15, 3600
  %17 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %10, i64 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %16)
  br label %48

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %19, 3600
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sdiv i64 %24, 3600
  %26 = load i64, i64* %6, align 8
  %27 = srem i64 %26, 3600
  %28 = sdiv i64 %27, 60
  %29 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %28)
  br label %47

30:                                               ; preds = %18
  %31 = load i64, i64* %6, align 8
  %32 = icmp sgt i64 %31, 60
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sdiv i64 %36, 60
  %38 = load i64, i64* %6, align 8
  %39 = srem i64 %38, 60
  %40 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %37, i64 %39)
  br label %46

41:                                               ; preds = %30
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %42, i64 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %33
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
