; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_showswap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_showswap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@kvnsw = common dso_local global i32 0, align 4
@okvnsw = common dso_local global i32 0, align 4
@dlen = common dso_local global i64 0, align 8
@odlen = common dso_local global i64 0, align 8
@ulen = common dso_local global i64 0, align 8
@oulen = common dso_local global i64 0, align 8
@kvmsw = common dso_local global %struct.TYPE_2__* null, align 8
@wnd = common dso_local global i32 0, align 4
@hlen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"(swap not configured)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%*d\00", align 1
@cur_dev = common dso_local global i32 0, align 4
@last_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showswap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @kvnsw, align 4
  %4 = load i32, i32* @okvnsw, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @dlen, align 8
  %8 = load i64, i64* @odlen, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* @ulen, align 8
  %12 = load i64, i64* @oulen, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %6, %0
  %15 = call i32 (...) @labelswap()
  br label %16

16:                                               ; preds = %14, %10
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %103, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @kvnsw, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %106

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @kvnsw, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @kvnsw, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %106

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fcmp oeq double %36, 0.000000e+00
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load i32, i32* @wnd, align 4
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i64, i64* @dlen, align 8
  %43 = load i64, i64* @hlen, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @ulen, align 8
  %46 = add nsw i64 %44, %45
  %47 = add nsw i64 %46, 1
  %48 = call i32 @mvwprintw(i32 %39, i32 %41, i64 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %103

49:                                               ; preds = %30
  %50 = load i32, i32* @wnd, align 4
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i64, i64* @dlen, align 8
  %54 = call i32 @wmove(i32 %50, i32 %52, i64 %53)
  %55 = load i32, i32* @wnd, align 4
  %56 = load i64, i64* @hlen, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = call i32 @CONVERT(double %62)
  %64 = call i32 @wprintw(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %63)
  %65 = load i32, i32* @wnd, align 4
  %66 = load i64, i64* @ulen, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = call i32 @CONVERT(double %72)
  %74 = call i32 @wprintw(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load double, double* %79, align 8
  %81 = fmul double 5.000000e+01, %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = fdiv double %81, %87
  %89 = fadd double %88, 1.000000e+00
  %90 = fptosi double %89 to i32
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* @wnd, align 4
  %92 = call i32 @waddch(i32 %91, i8 signext 32)
  br label %93

93:                                               ; preds = %97, %49
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %1, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @wnd, align 4
  %99 = call i32 @waddch(i32 %98, i8 signext 88)
  br label %93

100:                                              ; preds = %93
  %101 = load i32, i32* @wnd, align 4
  %102 = call i32 @wclrtoeol(i32 %101)
  br label %103

103:                                              ; preds = %100, %38
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %2, align 4
  br label %17

106:                                              ; preds = %28, %17
  %107 = call i32 @dsshow(i32 12, i32 0, i32 18, i32* @cur_dev, i32* @last_dev)
  ret void
}

declare dso_local i32 @labelswap(...) #1

declare dso_local i32 @mvwprintw(i32, i32, i64, i8*) #1

declare dso_local i32 @wmove(i32, i32, i64) #1

declare dso_local i32 @wprintw(i32, i8*, i64, i32) #1

declare dso_local i32 @CONVERT(double) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @dsshow(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
