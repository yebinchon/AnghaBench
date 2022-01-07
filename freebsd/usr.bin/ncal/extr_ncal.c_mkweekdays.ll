; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_mkweekdays.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_mkweekdays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.weekdays = type { i32** }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 97, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 32, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.weekdays*)* @mkweekdays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkweekdays(%struct.weekdays* %0) #0 {
  %2 = alloca %struct.weekdays*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm, align 4
  %7 = alloca [20 x i8], align 16
  store %struct.weekdays* %0, %struct.weekdays** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 @memset(%struct.tm* %6, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 7
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = srem i32 %14, 7
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %18 = call i32 @wcsftime(i8* %17, i32 20, i8* bitcast ([3 x i32]* @.str to i8*), %struct.tm* %6)
  store i32 2, i32* %4, align 4
  br label %19

19:                                               ; preds = %29, %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @wcswidth(i8* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = icmp sle i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %19

32:                                               ; preds = %27, %19
  %33 = load %struct.weekdays*, %struct.weekdays** %2, align 8
  %34 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @wmemset(i32* %39, i32 0, i32 4)
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load %struct.weekdays*, %struct.weekdays** %2, align 8
  %45 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 32, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %32
  %53 = load %struct.weekdays*, %struct.weekdays** %2, align 8
  %54 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wcsncat(i32* %59, i8* %60, i32 %61)
  %63 = load %struct.weekdays*, %struct.weekdays** %2, align 8
  %64 = getelementptr inbounds %struct.weekdays, %struct.weekdays* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @wcsncat(i32* %69, i8* bitcast ([2 x i32]* @.str.1 to i8*), i32 1)
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %9

74:                                               ; preds = %9
  ret void
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @wcsftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @wcswidth(i8*, i32) #1

declare dso_local i32 @wmemset(i32*, i32, i32) #1

declare dso_local i32 @wcsncat(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
