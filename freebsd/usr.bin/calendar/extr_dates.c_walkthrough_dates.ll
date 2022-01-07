; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_walkthrough_dates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_walkthrough_dates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_year = type { %struct.cal_month*, %struct.cal_year* }
%struct.cal_month = type { %struct.cal_day*, %struct.cal_month* }
%struct.cal_day = type { %struct.event*, %struct.cal_day* }
%struct.event = type { i32 }

@walkthrough_dates.y = internal global %struct.cal_year* null, align 8
@walkthrough_dates.m = internal global %struct.cal_month* null, align 8
@walkthrough_dates.d = internal global %struct.cal_day* null, align 8
@hyear = common dso_local global %struct.cal_year* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walkthrough_dates(%struct.event** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event**, align 8
  store %struct.event** %0, %struct.event*** %3, align 8
  %4 = load %struct.cal_year*, %struct.cal_year** @walkthrough_dates.y, align 8
  %5 = icmp eq %struct.cal_year* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.cal_year*, %struct.cal_year** @hyear, align 8
  store %struct.cal_year* %7, %struct.cal_year** @walkthrough_dates.y, align 8
  %8 = load %struct.cal_year*, %struct.cal_year** @walkthrough_dates.y, align 8
  %9 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %8, i32 0, i32 0
  %10 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  store %struct.cal_month* %10, %struct.cal_month** @walkthrough_dates.m, align 8
  %11 = load %struct.cal_month*, %struct.cal_month** @walkthrough_dates.m, align 8
  %12 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %11, i32 0, i32 0
  %13 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  store %struct.cal_day* %13, %struct.cal_day** @walkthrough_dates.d, align 8
  %14 = load %struct.cal_day*, %struct.cal_day** @walkthrough_dates.d, align 8
  %15 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %14, i32 0, i32 0
  %16 = load %struct.event*, %struct.event** %15, align 8
  %17 = load %struct.event**, %struct.event*** %3, align 8
  store %struct.event* %16, %struct.event** %17, align 8
  store i32 1, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.cal_day*, %struct.cal_day** @walkthrough_dates.d, align 8
  %20 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %19, i32 0, i32 1
  %21 = load %struct.cal_day*, %struct.cal_day** %20, align 8
  %22 = icmp ne %struct.cal_day* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.cal_day*, %struct.cal_day** @walkthrough_dates.d, align 8
  %25 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %24, i32 0, i32 1
  %26 = load %struct.cal_day*, %struct.cal_day** %25, align 8
  store %struct.cal_day* %26, %struct.cal_day** @walkthrough_dates.d, align 8
  %27 = load %struct.cal_day*, %struct.cal_day** @walkthrough_dates.d, align 8
  %28 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %27, i32 0, i32 0
  %29 = load %struct.event*, %struct.event** %28, align 8
  %30 = load %struct.event**, %struct.event*** %3, align 8
  store %struct.event* %29, %struct.event** %30, align 8
  store i32 1, i32* %2, align 4
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.cal_month*, %struct.cal_month** @walkthrough_dates.m, align 8
  %33 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %32, i32 0, i32 1
  %34 = load %struct.cal_month*, %struct.cal_month** %33, align 8
  %35 = icmp ne %struct.cal_month* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.cal_month*, %struct.cal_month** @walkthrough_dates.m, align 8
  %38 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %37, i32 0, i32 1
  %39 = load %struct.cal_month*, %struct.cal_month** %38, align 8
  store %struct.cal_month* %39, %struct.cal_month** @walkthrough_dates.m, align 8
  %40 = load %struct.cal_month*, %struct.cal_month** @walkthrough_dates.m, align 8
  %41 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %40, i32 0, i32 0
  %42 = load %struct.cal_day*, %struct.cal_day** %41, align 8
  store %struct.cal_day* %42, %struct.cal_day** @walkthrough_dates.d, align 8
  %43 = load %struct.cal_day*, %struct.cal_day** @walkthrough_dates.d, align 8
  %44 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %43, i32 0, i32 0
  %45 = load %struct.event*, %struct.event** %44, align 8
  %46 = load %struct.event**, %struct.event*** %3, align 8
  store %struct.event* %45, %struct.event** %46, align 8
  store i32 1, i32* %2, align 4
  br label %67

47:                                               ; preds = %31
  %48 = load %struct.cal_year*, %struct.cal_year** @walkthrough_dates.y, align 8
  %49 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %48, i32 0, i32 1
  %50 = load %struct.cal_year*, %struct.cal_year** %49, align 8
  %51 = icmp ne %struct.cal_year* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.cal_year*, %struct.cal_year** @walkthrough_dates.y, align 8
  %54 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %53, i32 0, i32 1
  %55 = load %struct.cal_year*, %struct.cal_year** %54, align 8
  store %struct.cal_year* %55, %struct.cal_year** @walkthrough_dates.y, align 8
  %56 = load %struct.cal_year*, %struct.cal_year** @walkthrough_dates.y, align 8
  %57 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %56, i32 0, i32 0
  %58 = load %struct.cal_month*, %struct.cal_month** %57, align 8
  store %struct.cal_month* %58, %struct.cal_month** @walkthrough_dates.m, align 8
  %59 = load %struct.cal_month*, %struct.cal_month** @walkthrough_dates.m, align 8
  %60 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %59, i32 0, i32 0
  %61 = load %struct.cal_day*, %struct.cal_day** %60, align 8
  store %struct.cal_day* %61, %struct.cal_day** @walkthrough_dates.d, align 8
  %62 = load %struct.cal_day*, %struct.cal_day** @walkthrough_dates.d, align 8
  %63 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %62, i32 0, i32 0
  %64 = load %struct.event*, %struct.event** %63, align 8
  %65 = load %struct.event**, %struct.event*** %3, align 8
  store %struct.event* %64, %struct.event** %65, align 8
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %52, %36, %23, %6
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
