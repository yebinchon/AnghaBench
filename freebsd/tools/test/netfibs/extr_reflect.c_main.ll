; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/netfibs/extr_reflect.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/netfibs/extr_reflect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"A:dF:f:Np:t:T:\00", align 1
@optarg = common dso_local global i8* null, align 8
@addr = common dso_local global i8* null, align 8
@debug = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid FIB number\00", align 1
@fib = common dso_local global i8* null, align 8
@reflectfib = common dso_local global i8* null, align 8
@nostart = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid port number\00", align 1
@port = common dso_local global i32 0, align 4
@testcase = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown command line option at '%c'\00", align 1
@optopt = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Mandatory option -t <testcase> not given\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Mandatory option -T <afname> not given\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TCP6\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"UDP6\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Mandatory option -T %s not a valid option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  br label %11

11:                                               ; preds = %82, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %83

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %78 [
    i32 65, label %18
    i32 100, label %20
    i32 70, label %23
    i32 102, label %39
    i32 78, label %55
    i32 112, label %56
    i32 116, label %72
    i32 84, label %75
    i32 63, label %77
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** @addr, align 8
  br label %82

20:                                               ; preds = %16
  %21 = load i32, i32* @debug, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @debug, align 4
  br label %82

23:                                               ; preds = %16
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i64 @strtoll(i8* %24, i8** %7, i32 10)
  store i64 %25, i64* %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @EX_USAGE, align 4
  %35 = call i32 (i32, i8*, ...) @errx(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* %6, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** @fib, align 8
  br label %82

39:                                               ; preds = %16
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i64 @strtoll(i8* %40, i8** %7, i32 10)
  store i64 %41, i64* %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %39
  %50 = load i32, i32* @EX_USAGE, align 4
  %51 = call i32 (i32, i8*, ...) @errx(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* %6, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** @reflectfib, align 8
  br label %82

55:                                               ; preds = %16
  store i32 1, i32* @nostart, align 4
  br label %82

56:                                               ; preds = %16
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i64 @strtoll(i8* %57, i8** %7, i32 10)
  store i64 %58, i64* %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %6, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %56
  %67 = load i32, i32* @EX_USAGE, align 4
  %68 = call i32 (i32, i8*, ...) @errx(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* %6, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* @port, align 4
  br label %82

72:                                               ; preds = %16
  %73 = load i8*, i8** @optarg, align 8
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** @testcase, align 8
  br label %82

75:                                               ; preds = %16
  %76 = load i8*, i8** @optarg, align 8
  store i8* %76, i8** %8, align 8
  br label %82

77:                                               ; preds = %16
  br label %78

78:                                               ; preds = %16, %77
  %79 = load i32, i32* @EX_USAGE, align 4
  %80 = load i8*, i8** @optopt, align 8
  %81 = call i32 (i32, i8*, ...) @errx(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %75, %72, %69, %55, %52, %36, %20, %18
  br label %11

83:                                               ; preds = %11
  %84 = load i32*, i32** @testcase, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EX_USAGE, align 4
  %88 = call i32 (i32, i8*, ...) @errx(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %8, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EX_USAGE, align 4
  %94 = call i32 (i32, i8*, ...) @errx(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (...) @reflect_tcp6()
  store i32 %100, i32* %10, align 4
  br label %112

101:                                              ; preds = %95
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 (...) @reflect_udp6()
  store i32 %106, i32* %10, align 4
  br label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @EX_USAGE, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 (i32, i8*, ...) @errx(i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %107, %105
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @reflect_tcp6(...) #1

declare dso_local i32 @reflect_udp6(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
