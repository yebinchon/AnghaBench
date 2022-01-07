; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_run_cmd_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_run_cmd_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @run_cmd_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd_loop(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [8 x i8*], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 0
  store i8* %16, i8** %17, align 16
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 1
  store i8* %20, i8** %21, align 8
  br label %22

22:                                               ; preds = %96, %41, %3
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fflush(i32 %25)
  %27 = load i32, i32* @STDIN_FILENO, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %29 = call i32 @read(i32 %27, i8* %28, i32 63)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %101

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %22

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %47, i8** %12, align 8
  store i32 2, i32* %9, align 4
  br label %48

48:                                               ; preds = %81, %46
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %50, 7
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 9
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ true, %56 ], [ %65, %61 ]
  br label %68

68:                                               ; preds = %66, %53
  %69 = phi i1 [ false, %53 ], [ %67, %66 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  br label %53

73:                                               ; preds = %68
  %74 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 %76
  store i8* %74, i8** %77, align 8
  %78 = icmp eq i8* %74, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %84

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %48

84:                                               ; preds = %79, %48
  %85 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 7
  store i8* null, i8** %85, align 8
  %86 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 2
  %87 = load i8*, i8** %86, align 16
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 2
  %92 = load i8*, i8** %91, align 16
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90, %84
  store i32 0, i32* %4, align 4
  br label %101

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 0
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @run_cmd(i32 %97, i8** %98, i8* %99)
  br label %22

101:                                              ; preds = %95, %32
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @run_cmd(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
