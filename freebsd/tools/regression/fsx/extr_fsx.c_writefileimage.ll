; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_writefileimage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_writefileimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"writefileimage: lseek\00", align 1
@good_buf = common dso_local global i32 0, align 4
@file_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"writefileimage: write\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"short write: 0x%x bytes instead of 0x%llx\0A\00", align 1
@lite = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"ftruncate2: %llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"writefileimage: ftruncate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writefileimage() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @fd, align 4
  %3 = load i32, i32* @SEEK_SET, align 4
  %4 = call i64 @lseek(i32 %2, i64 0, i32 %3)
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @prterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @report_failure(i32 171)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @fd, align 4
  %11 = load i32, i32* @good_buf, align 4
  %12 = load i64, i64* @file_size, align 8
  %13 = call i32 @write(i32 %10, i32 %11, i64 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @file_size, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %9
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @prterr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @file_size, align 8
  %27 = call i32 (i8*, i64, ...) @prt(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %25, i64 %26)
  br label %28

28:                                               ; preds = %23, %21
  %29 = call i32 @report_failure(i32 172)
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i64, i64* @lite, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br i1 false, label %39, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* @fd, align 4
  %36 = load i64, i64* @file_size, align 8
  %37 = call i32 @ftruncate(i32 %35, i64 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %33
  %40 = load i64, i64* @file_size, align 8
  %41 = call i32 (i8*, i64, ...) @prt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = call i32 @prterr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @report_failure(i32 173)
  br label %44

44:                                               ; preds = %39, %34, %33
  ret void
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i32 @write(i32, i32, i64) #1

declare dso_local i32 @prt(i8*, i64, ...) #1

declare dso_local i32 @ftruncate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
