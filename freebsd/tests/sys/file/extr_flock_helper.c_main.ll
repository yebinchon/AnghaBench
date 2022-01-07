; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_flock_helper.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_flock_helper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i32, i8**)*, i64 }
%struct.sigaction = type { i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"usage: flock <directory> [test number] ...\00", align 1
@ignore_alarm = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @make_file(i8* %20, i32 1024)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strtol(i8* %27, i32* null, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  store i8** %32, i8*** %12, align 8
  br label %34

33:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i8** null, i8*** %12, align 8
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* @ignore_alarm, align 4
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 1
  %38 = call i32 @sigemptyset(i32* %37)
  %39 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @SIGALRM, align 4
  %41 = call i32 @sigaction(i32 %40, %struct.sigaction* %10, i32 0)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %83, %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %45 = call i32 @nitems(%struct.TYPE_3__* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %83

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %62, %59
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i8**, i8*** %12, align 8
  %81 = call i32 %77(i32 %78, i32 %79, i8** %80)
  br label %82

82:                                               ; preds = %71, %62
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %42

86:                                               ; preds = %42
  ret i32 0
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @make_file(i8*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
