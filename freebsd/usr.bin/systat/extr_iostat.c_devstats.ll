; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_devstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_devstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { x86_fp80, %struct.TYPE_6__*, [8 x i8] }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { x86_fp80, %struct.TYPE_7__*, [8 x i8] }
%struct.TYPE_7__ = type { i32* }

@dev_select = common dso_local global %struct.TYPE_9__* null, align 8
@cur_dev = common dso_local global %struct.TYPE_10__ zeroinitializer, align 16
@last_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 16
@DSM_KB_PER_TRANSFER = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND = common dso_local global i32 0, align 4
@DSM_MB_PER_SECOND = common dso_local global i32 0, align 4
@DSM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@numbers = common dso_local global i64 0, align 8
@wnd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" %5.2Lf %3.0Lf %5.2Lf \00", align 1
@kbpt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @devstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devstats(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dev_select, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_dev, i32 0, i32 0), align 16
  %20 = load x86_fp80, x86_fp80* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last_dev, i32 0, i32 0), align 16
  %21 = fsub x86_fp80 %19, %20
  store x86_fp80 %21, x86_fp80* %11, align 16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cur_dev, i32 0, i32 1), align 16
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @last_dev, i32 0, i32 1), align 16
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load x86_fp80, x86_fp80* %11, align 16
  %35 = load i32, i32* @DSM_KB_PER_TRANSFER, align 4
  %36 = load i32, i32* @DSM_TRANSFERS_PER_SECOND, align 4
  %37 = load i32, i32* @DSM_MB_PER_SECOND, align 4
  %38 = load i32, i32* @DSM_NONE, align 4
  %39 = call i64 @devstat_compute_statistics(i32* %27, i32* %33, x86_fp80 %34, i32 %35, x86_fp80* %9, i32 %36, x86_fp80* %8, i32 %37, x86_fp80* %10, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @devstat_errbuf, align 4
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %3
  %45 = load i64, i64* @numbers, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* @wnd, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load x86_fp80, x86_fp80* %9, align 16
  %52 = load x86_fp80, x86_fp80* %8, align 16
  %53 = load x86_fp80, x86_fp80* %10, align 16
  %54 = call i32 @mvwprintw(i32 %48, i32 %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), x86_fp80 %51, x86_fp80 %52, x86_fp80 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %4, align 4
  br label %83

56:                                               ; preds = %44
  %57 = load i32, i32* @wnd, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @wmove(i32 %57, i32 %58, i32 %60)
  %62 = load x86_fp80, x86_fp80* %10, align 16
  %63 = call i32 @histogram(x86_fp80 %62, i32 50, double 5.000000e-01)
  %64 = load i32, i32* @wnd, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @wmove(i32 %64, i32 %65, i32 %67)
  %69 = load x86_fp80, x86_fp80* %8, align 16
  %70 = call i32 @histogram(x86_fp80 %69, i32 50, double 5.000000e-01)
  %71 = load i64, i64* @kbpt, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %56
  %74 = load i32, i32* @wnd, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @wmove(i32 %74, i32 %75, i32 %77)
  %79 = load x86_fp80, x86_fp80* %9, align 16
  %80 = call i32 @histogram(x86_fp80 %79, i32 50, double 5.000000e-01)
  br label %81

81:                                               ; preds = %73, %56
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %47
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @devstat_compute_statistics(i32*, i32*, x86_fp80, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @mvwprintw(i32, i32, i32, i8*, x86_fp80, x86_fp80, x86_fp80) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @histogram(x86_fp80, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
