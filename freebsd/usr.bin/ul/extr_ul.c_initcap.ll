; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_initcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_initcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initcap.tcapbuf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"up\00", align 1
@CURS_UP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ri\00", align 1
@CURS_RIGHT = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@CURS_LEFT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@ENTER_STANDOUT = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@EXIT_STANDOUT = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@ENTER_UNDERLINE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@EXIT_UNDERLINE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"mh\00", align 1
@ENTER_DIM = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@ENTER_BOLD = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"mr\00", align 1
@ENTER_REVERSE = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@EXIT_ATTRIBUTES = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@UNDER_CHAR = common dso_local global i8* null, align 8
@must_use_uc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initcap() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @initcap.tcapbuf, i64 0, i64 0), i8** %1, align 8
  %2 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %1)
  store i8* %2, i8** @CURS_UP, align 8
  %3 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** @CURS_RIGHT, align 8
  %5 = load i32*, i32** @CURS_RIGHT, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %1)
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** @CURS_RIGHT, align 8
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %1)
  store i8* %11, i8** @CURS_LEFT, align 8
  %12 = load i8*, i8** @CURS_LEFT, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %1)
  store i8* %15, i8** @CURS_LEFT, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i8*, i8** @CURS_LEFT, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i64 @tgetflag(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** @CURS_LEFT, align 8
  br label %23

23:                                               ; preds = %22, %19, %16
  %24 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %1)
  store i8* %24, i8** @ENTER_STANDOUT, align 8
  %25 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %1)
  store i8* %25, i8** @EXIT_STANDOUT, align 8
  %26 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %1)
  store i8* %26, i8** @ENTER_UNDERLINE, align 8
  %27 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %1)
  store i8* %27, i8** @EXIT_UNDERLINE, align 8
  %28 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %1)
  store i8* %28, i8** @ENTER_DIM, align 8
  %29 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %1)
  store i8* %29, i8** @ENTER_BOLD, align 8
  %30 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %1)
  store i8* %30, i8** @ENTER_REVERSE, align 8
  %31 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %1)
  store i8* %31, i8** @EXIT_ATTRIBUTES, align 8
  %32 = load i8*, i8** @ENTER_BOLD, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load i8*, i8** @ENTER_REVERSE, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** @ENTER_REVERSE, align 8
  store i8* %38, i8** @ENTER_BOLD, align 8
  br label %39

39:                                               ; preds = %37, %34, %23
  %40 = load i8*, i8** @ENTER_BOLD, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** @ENTER_STANDOUT, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i8*, i8** @ENTER_STANDOUT, align 8
  store i8* %46, i8** @ENTER_BOLD, align 8
  br label %47

47:                                               ; preds = %45, %42, %39
  %48 = load i8*, i8** @ENTER_UNDERLINE, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** @ENTER_STANDOUT, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** @ENTER_STANDOUT, align 8
  store i8* %54, i8** @ENTER_UNDERLINE, align 8
  %55 = load i8*, i8** @EXIT_STANDOUT, align 8
  store i8* %55, i8** @EXIT_UNDERLINE, align 8
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = load i8*, i8** @ENTER_DIM, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @ENTER_STANDOUT, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i8*, i8** @ENTER_STANDOUT, align 8
  store i8* %63, i8** @ENTER_DIM, align 8
  br label %64

64:                                               ; preds = %62, %59, %56
  %65 = load i8*, i8** @ENTER_REVERSE, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** @ENTER_STANDOUT, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i8*, i8** @ENTER_STANDOUT, align 8
  store i8* %71, i8** @ENTER_REVERSE, align 8
  br label %72

72:                                               ; preds = %70, %67, %64
  %73 = load i8*, i8** @EXIT_ATTRIBUTES, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** @EXIT_STANDOUT, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i8*, i8** @EXIT_STANDOUT, align 8
  store i8* %79, i8** @EXIT_ATTRIBUTES, align 8
  br label %80

80:                                               ; preds = %78, %75, %72
  %81 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %1)
  store i8* %81, i8** @UNDER_CHAR, align 8
  %82 = load i8*, i8** @UNDER_CHAR, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i8*, i8** @ENTER_UNDERLINE, align 8
  %86 = icmp ne i8* %85, null
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* @must_use_uc, align 4
  ret void
}

declare dso_local i8* @tgetstr(i8*, i8**) #1

declare dso_local i64 @tgetflag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
