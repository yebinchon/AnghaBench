; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_envctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_envctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.emptyEnv = internal global [1 x i8*] zeroinitializer, align 8
@main.staticEnv = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"FOO=bar\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"DGS:Ub:c:g:hp:rs:tu:\00", align 1
@optarg = common dso_local global i8* null, align 8
@environ = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"*NULL*\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @usage(i8* %14)
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  %17 = call i32 @exit(i32 %16) #3
  unreachable

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %119, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call signext i8 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i8 %22, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %120

25:                                               ; preds = %19
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %112 [
    i32 98, label %28
    i32 99, label %31
    i32 68, label %42
    i32 71, label %44
    i32 103, label %44
    i32 112, label %63
    i32 114, label %68
    i32 83, label %69
    i32 115, label %81
    i32 116, label %98
    i32 85, label %99
    i32 117, label %99
    i32 104, label %111
  ]

28:                                               ; preds = %25
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 @blank_env(i8* %29)
  br label %119

31:                                               ; preds = %25
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @atoi(i8* %32)
  switch i32 %33, label %41 [
    i32 1, label %34
    i32 2, label %35
    i32 3, label %38
    i32 4, label %40
  ]

34:                                               ; preds = %31
  store i8** null, i8*** @environ, align 8
  br label %41

35:                                               ; preds = %31
  %36 = load i8**, i8*** @environ, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* null, i8** %37, align 8
  br label %41

38:                                               ; preds = %31
  %39 = call i8** @calloc(i32 1, i32 8)
  store i8** %39, i8*** @environ, align 8
  br label %41

40:                                               ; preds = %31
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.emptyEnv, i64 0, i64 0), i8*** @environ, align 8
  br label %41

41:                                               ; preds = %31, %40, %38, %35, %34
  br label %119

42:                                               ; preds = %25
  %43 = call i32 (...) @dump_environ()
  br label %119

44:                                               ; preds = %25, %25
  %45 = load i8, i8* %6, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 103
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** @optarg, align 8
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ null, %50 ]
  %53 = call i8* @getenv(i8* %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %59

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %56 ], [ %58, %57 ]
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %61)
  br label %119

63:                                               ; preds = %25
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 @putenv(i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @print_rtrn_errno(i32 %65, i8* %66)
  br label %119

68:                                               ; preds = %25
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.staticEnv, i64 0, i64 0), i8*** @environ, align 8
  br label %119

69:                                               ; preds = %25
  %70 = load i8*, i8** @optarg, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i64, i64* @optind, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* %74)
  %76 = call i32 @setenv(i8* null, i8* %70, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @print_rtrn_errno(i32 %76, i8* %77)
  %79 = load i64, i64* @optind, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* @optind, align 8
  br label %119

81:                                               ; preds = %25
  %82 = load i8*, i8** @optarg, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = load i64, i64* @optind, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = load i64, i64* @optind, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* %91)
  %93 = call i32 @setenv(i8* %82, i8* %86, i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @print_rtrn_errno(i32 %93, i8* %94)
  %96 = load i64, i64* @optind, align 8
  %97 = add i64 %96, 2
  store i64 %97, i64* @optind, align 8
  br label %119

98:                                               ; preds = %25
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %119

99:                                               ; preds = %25, %25
  %100 = load i8, i8* %6, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 117
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i8*, i8** @optarg, align 8
  br label %106

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i8* [ %104, %103 ], [ null, %105 ]
  %108 = call i32 @unsetenv(i8* %107)
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @print_rtrn_errno(i32 %108, i8* %109)
  br label %119

111:                                              ; preds = %25
  br label %112

112:                                              ; preds = %25, %111
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @usage(i8* %115)
  %117 = load i32, i32* @EXIT_FAILURE, align 4
  %118 = call i32 @exit(i32 %117) #3
  unreachable

119:                                              ; preds = %106, %98, %81, %69, %68, %63, %59, %42, %41, %28
  br label %19

120:                                              ; preds = %19
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %120
  %129 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %129
}

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @blank_env(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @dump_environ(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_rtrn_errno(i32, i8*) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @unsetenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
