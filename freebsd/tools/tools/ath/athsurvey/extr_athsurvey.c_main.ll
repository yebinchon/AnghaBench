; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athsurvey/extr_athsurvey.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athsurvey/extr_athsurvey.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"         min                   avg                   max\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"  tx%%  rx%%  bc%%  ec%%  \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  tx%%  rx%%  bc%%  ec%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @AF_INET, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** @progname, align 8
  br label %29

29:                                               ; preds = %40, %25
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %38 [
    i32 105, label %36
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %7, align 8
  br label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %36
  br label %29

41:                                               ; preds = %29
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  br label %50

50:                                               ; preds = %41, %66
  %51 = call i32 @memset(i32* %11, i8 signext 0, i32 4)
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @get_survey_stats(i32 %52, i8* %53, i32* %11)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %71

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = srem i32 %58, 23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %64 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %57
  %67 = call i32 @process_survey_stats(i32* %11)
  %68 = call i32 @sleep(i32 1)
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %50

71:                                               ; preds = %56
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i64 @get_survey_stats(i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @process_survey_stats(i32*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
