; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_pigs.c_showpigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_pigs.c_showpigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@pt = common dso_local global %struct.TYPE_5__* null, align 8
@nproc = common dso_local global i32 0, align 4
@compar = common dso_local global i32 0, align 4
@wnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%10.10s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showpigs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [30 x i8], align 16
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pt, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %109

11:                                               ; preds = %0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pt, align 8
  %13 = load i32, i32* @nproc, align 4
  %14 = load i32, i32* @compar, align 4
  %15 = call i32 @qsort(%struct.TYPE_5__* %12, i32 %13, i32 4, i32 %14)
  store i32 1, i32* %3, align 4
  %16 = load i32, i32* @nproc, align 4
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @wnd, align 4
  %19 = call i32 @getmaxy(i32 %18)
  %20 = sub nsw i32 %19, 2
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load i32, i32* @wnd, align 4
  %24 = call i32 @getmaxy(i32 %23)
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %22, %11
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %96, %26
  %28 = load i32, i32* %1, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pt, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fcmp ogt double %36, 1.000000e-02
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i1 [ false, %27 ], [ %37, %30 ]
  br i1 %39, label %40, label %103

40:                                               ; preds = %38
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pt, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @user_from_uid(i32 %48, i32 0)
  store i8* %49, i8** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pt, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %6, align 8
  %58 = load i32, i32* @wnd, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @wmove(i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @wnd, align 4
  %62 = call i32 @wclrtoeol(i32 %61)
  %63 = load i32, i32* @wnd, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @mvwaddstr(i32 %63, i32 %64, i32 0, i8* %65)
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @snprintf(i8* %67, i32 30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @wnd, align 4
  %71 = load i32, i32* %3, align 4
  %72 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %73 = call i32 @mvwaddstr(i32 %70, i32 %71, i32 9, i8* %72)
  %74 = load i32, i32* @wnd, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @wmove(i32 %74, i32 %75, i32 20)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pt, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = fmul double %82, 5.000000e+01
  %84 = fadd double %83, 5.000000e-01
  %85 = fptosi double %84 to i32
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %92, %40
  %87 = load i32, i32* %2, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @wnd, align 4
  %91 = call i32 @waddch(i32 %90, i8 signext 88)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %2, align 4
  br label %86

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %27

103:                                              ; preds = %38
  %104 = load i32, i32* @wnd, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @wmove(i32 %104, i32 %105, i32 0)
  %107 = load i32, i32* @wnd, align 4
  %108 = call i32 @wclrtobot(i32 %107)
  br label %109

109:                                              ; preds = %103, %10
  ret void
}

declare dso_local i32 @qsort(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @getmaxy(i32) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

declare dso_local i32 @wclrtobot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
