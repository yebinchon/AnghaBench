; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_docloseopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_docloseopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testcalls = common dso_local global i64 0, align 8
@simulatedopcount = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"%lu close/open\0A\00", align 1
@fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"docloseopen: close\00", align 1
@fname = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"docloseopen: open\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @docloseopen() #0 {
  %1 = load i64, i64* @testcalls, align 8
  %2 = load i64, i64* @simulatedopcount, align 8
  %3 = icmp sle i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %27

5:                                                ; preds = %0
  %6 = load i64, i64* @debug, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, i64* @testcalls, align 8
  %10 = call i32 @prt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %9)
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i64, i64* @fd, align 8
  %13 = call i64 @close(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 @prterr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @report_failure(i32 180)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, i32* @fname, align 4
  %20 = load i32, i32* @O_RDWR, align 4
  %21 = call i64 @open(i32 %19, i32 %20, i32 0)
  store i64 %21, i64* @fd, align 8
  %22 = load i64, i64* @fd, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i32 @prterr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @report_failure(i32 181)
  br label %27

27:                                               ; preds = %4, %24, %18
  ret void
}

declare dso_local i32 @prt(i8*, i64) #1

declare dso_local i64 @close(i64) #1

declare dso_local i32 @prterr(i8*) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i64 @open(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
