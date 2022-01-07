; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_doinvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_doinvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_size = common dso_local global i64 0, align 8
@testcalls = common dso_local global i64 0, align 8
@simulatedopcount = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"%lu msync(MS_INVALIDATE)\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"doinvl: mmap\00", align 1
@MS_SYNC = common dso_local global i32 0, align 4
@MS_INVALIDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"doinvl: msync\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"doinvl: munmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doinvl() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @file_size, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %50

5:                                                ; preds = %0
  %6 = load i64, i64* @testcalls, align 8
  %7 = load i64, i64* @simulatedopcount, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %50

10:                                               ; preds = %5
  %11 = load i64, i64* @debug, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @testcalls, align 8
  %15 = call i32 @prt(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* @file_size, align 8
  %18 = load i32, i32* @PROT_READ, align 4
  %19 = load i32, i32* @PROT_WRITE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAP_FILE, align 4
  %22 = load i32, i32* @MAP_SHARED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @fd, align 4
  %25 = call i64 @mmap(i32 0, i64 %17, i32 %20, i32 %23, i32 %24, i32 0)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** @MAP_FAILED, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = call i32 @prterr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @report_failure(i32 205)
  br label %32

32:                                               ; preds = %29, %16
  %33 = load i8*, i8** %1, align 8
  %34 = load i32, i32* @MS_SYNC, align 4
  %35 = load i32, i32* @MS_INVALIDATE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @msync(i8* %33, i32 0, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = call i32 @prterr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @report_failure(i32 206)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i8*, i8** %1, align 8
  %44 = load i64, i64* @file_size, align 8
  %45 = call i64 @munmap(i8* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @prterr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @report_failure(i32 207)
  br label %50

50:                                               ; preds = %4, %9, %47, %42
  ret void
}

declare dso_local i32 @prt(i8*, i64) #1

declare dso_local i64 @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i64 @msync(i8*, i32, i32) #1

declare dso_local i64 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
