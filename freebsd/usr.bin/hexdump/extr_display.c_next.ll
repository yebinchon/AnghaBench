; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next.done = internal global i32 0, align 4
@_argv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exitval = common dso_local global i32 0, align 4
@CAPH_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to restrict %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@skip = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8**, i8*** %3, align 8
  store i8** %8, i8*** @_argv, align 8
  store i32 1, i32* %2, align 4
  br label %89

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %88, %20, %9
  %11 = load i8**, i8*** @_argv, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  store i32 1, i32* @next.done, align 4
  %15 = load i8**, i8*** @_argv, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @stdin, align 4
  %18 = call i32 @freopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** @_argv, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 1, i32* @exitval, align 4
  %24 = load i8**, i8*** @_argv, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** @_argv, align 8
  br label %10

26:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %33

27:                                               ; preds = %10
  %28 = load i32, i32* @next.done, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @next.done, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %89

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* @stdin, align 4
  %35 = call i32 @fileno(i32 %34)
  %36 = load i32, i32* @CAPH_READ, align 4
  %37 = call i64 @caph_limit_stream(i32 %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i8**, i8*** @_argv, align 8
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i8* [ %44, %42 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %45 ]
  %48 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i8**, i8*** @_argv, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %49
  %58 = call i64 (...) @caph_enter()
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i64, i64* @skip, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8**, i8*** @_argv, align 8
  %71 = load i8*, i8** %70, align 8
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i8* [ %71, %69 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %72 ]
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @doskip(i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %63
  %78 = load i8**, i8*** @_argv, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8**, i8*** @_argv, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** @_argv, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i64, i64* @skip, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 1, i32* %2, align 4
  br label %89

88:                                               ; preds = %84
  br label %10

89:                                               ; preds = %87, %31, %7
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @caph_limit_stream(i32, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @doskip(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
