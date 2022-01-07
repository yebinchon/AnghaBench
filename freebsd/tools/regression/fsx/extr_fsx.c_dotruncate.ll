; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_dotruncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_dotruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_size = common dso_local global i32 0, align 4
@truncbdy = common dso_local global i32 0, align 4
@biggest = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@testcalls = common dso_local global i32 0, align 4
@simulatedopcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"truncating to largest ever: 0x%x\0A\00", align 1
@OP_TRUNCATE = common dso_local global i32 0, align 4
@good_buf = common dso_local global i64 0, align 8
@progressinterval = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@monitorstart = common dso_local global i32 0, align 4
@monitorend = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%lu trunc\09from 0x%x to 0x%x\0A\00", align 1
@fd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ftruncate1: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dotruncate: ftruncate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dotruncate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @file_size, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @truncbdy, align 4
  %7 = urem i32 %5, %6
  %8 = load i32, i32* %2, align 4
  %9 = sub i32 %8, %7
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @biggest, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* @biggest, align 4
  %15 = load i32, i32* @quiet, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @testcalls, align 4
  %19 = load i32, i32* @simulatedopcount, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i8*, i32, ...) @prt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %17, %13
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* @OP_TRUNCATE, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @file_size, align 4
  %29 = call i32 @log4(i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @file_size, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i64, i64* @good_buf, align 8
  %35 = load i32, i32* @file_size, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @file_size, align 4
  %40 = sub i32 %38, %39
  %41 = call i32 @memset(i64 %37, i8 signext 0, i32 %40)
  br label %42

42:                                               ; preds = %33, %25
  %43 = load i32, i32* %2, align 4
  store i32 %43, i32* @file_size, align 4
  %44 = load i32, i32* @testcalls, align 4
  %45 = load i32, i32* @simulatedopcount, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %84

48:                                               ; preds = %42
  %49 = load i32, i32* @progressinterval, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* @testcalls, align 4
  %53 = load i32, i32* @progressinterval, align 4
  %54 = srem i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51, %48
  %57 = load i64, i64* @debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, i32* @monitorstart, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @monitorend, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @monitorend, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %62, %59, %51
  %70 = load i32, i32* @testcalls, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 (i8*, i32, ...) @prt(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %65, %56
  %75 = load i32, i32* @fd, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @ftruncate(i32 %75, i32 %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %2, align 4
  %81 = call i32 (i8*, i32, ...) @prt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = call i32 @prterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 @report_failure(i32 160)
  br label %84

84:                                               ; preds = %47, %79, %74
  ret void
}

declare dso_local i32 @prt(i8*, i32, ...) #1

declare dso_local i32 @log4(i32, i32, i32, i32) #1

declare dso_local i32 @memset(i64, i8 signext, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @report_failure(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
