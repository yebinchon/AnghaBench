; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Usage: ministat [-C column] [-c confidence] [-d delimiter(s)] [-Ans] [-w width] [file [file ...]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09confidence = {\00", align 1
@NCONF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%g%%\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@studentpct = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\09-A : print statistics only. suppress the graph.\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"\09-C : column number to extract (starts and defaults to 1)\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\09-d : delimiter(s) string, default to \22 \\t\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"\09-n : print summary statistics only, no graph/test\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\09-s : print avg/median/stddev bars on separate lines\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"\09-w : width of graph/test output (default 74 or terminal width)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NCONF, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %21 = load i32*, i32** @studentpct, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %20, i32 %25)
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %45 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
