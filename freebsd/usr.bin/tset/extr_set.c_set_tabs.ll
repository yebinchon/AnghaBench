; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_tabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_set_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@stderr = common dso_local global i32 0, align 4
@outc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@Columns = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"OOPS\00", align 1
@Lines = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"        \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_tabs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %10, i8** %3, align 8
  %11 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %3)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3)
  store i8* %15, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @putc(i8 signext 13, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @outc, align 4
  %22 = call i32 @tputs(i8* %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %17, %14, %0
  %24 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %3)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %23
  %29 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %3)
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i8* [ null, %27 ], [ %29, %28 ]
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  store i32 8, i32* %2, align 4
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @Columns, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i8* @tgoto(i8* %43, i32 0, i32 %44)
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 79
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @Lines, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i8* @tgoto(i8* %55, i32 %56, i32 %58)
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %54, %51, %46
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 79
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @outc, align 4
  %68 = call i32 @tputs(i8* %66, i32 1, i32 %67)
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* @outc, align 4
  %75 = call i32 @tputs(i8* %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 8
  store i32 %78, i32* %2, align 4
  br label %35

79:                                               ; preds = %35
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @putc(i8 signext 13, i32 %80)
  store i32 1, i32* %1, align 4
  br label %83

82:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i32, i32* %1, align 4
  ret i32 %84
}

declare dso_local i8* @tgetstr(i8*, i8**) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @tputs(i8*, i32, i32) #1

declare dso_local i8* @tgoto(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
