; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_mode.c_cmdmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_mode.c_cmdmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@CMDLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@modes = common dso_local global i8** null, align 8
@currentmode = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@display_RATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@display_DELTA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"since\00", align 1
@display_SINCE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@display_ABS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"unknown mode `%s'\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@curcmd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdmode(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @prefix(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load i32, i32* @CMDLINE, align 4
  %17 = call i32 @move(i32 %16, i32 0)
  %18 = call i32 (...) @clrtoeol()
  %19 = load i8**, i8*** @modes, align 8
  %20 = load i64, i64* @currentmode, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @printw(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %55

24:                                               ; preds = %9
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @prefix(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @display_RATE, align 8
  store i64 %29, i64* @currentmode, align 8
  br label %54

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @prefix(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @display_DELTA, align 8
  store i64 %35, i64* @currentmode, align 8
  br label %53

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @prefix(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @display_SINCE, align 8
  store i64 %41, i64* @currentmode, align 8
  br label %52

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @prefix(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @display_ABS, align 8
  store i64 %47, i64* @currentmode, align 8
  br label %51

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @printw(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %46
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %15
  store i32 1, i32* %3, align 4
  br label %66

56:                                               ; preds = %2
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @prefix(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curcmd, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (...)*, i32 (...)** %62, align 8
  %64 = call i32 (...) %63()
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %60, %55
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @prefix(i8*, i8*) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @printw(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
