; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_first_dayofweek_of_month.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_first_dayofweek_of_month.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_year = type { i32, %struct.cal_month*, %struct.cal_year* }
%struct.cal_month = type { i32, i32, %struct.cal_month* }

@hyear = common dso_local global %struct.cal_year* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first_dayofweek_of_month(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cal_year*, align 8
  %7 = alloca %struct.cal_month*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cal_year*, %struct.cal_year** @hyear, align 8
  store %struct.cal_year* %8, %struct.cal_year** %6, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.cal_year*, %struct.cal_year** %6, align 8
  %11 = icmp ne %struct.cal_year* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load %struct.cal_year*, %struct.cal_year** %6, align 8
  %14 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.cal_year*, %struct.cal_year** %6, align 8
  %20 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %19, i32 0, i32 2
  %21 = load %struct.cal_year*, %struct.cal_year** %20, align 8
  store %struct.cal_year* %21, %struct.cal_year** %6, align 8
  br label %9

22:                                               ; preds = %12
  %23 = load %struct.cal_year*, %struct.cal_year** %6, align 8
  %24 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %23, i32 0, i32 1
  %25 = load %struct.cal_month*, %struct.cal_month** %24, align 8
  store %struct.cal_month* %25, %struct.cal_month** %7, align 8
  br label %26

26:                                               ; preds = %39, %22
  %27 = load %struct.cal_month*, %struct.cal_month** %7, align 8
  %28 = icmp ne %struct.cal_month* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.cal_month*, %struct.cal_month** %7, align 8
  %31 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.cal_month*, %struct.cal_month** %7, align 8
  %37 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.cal_month*, %struct.cal_month** %7, align 8
  %41 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %40, i32 0, i32 2
  %42 = load %struct.cal_month*, %struct.cal_month** %41, align 8
  store %struct.cal_month* %42, %struct.cal_month** %7, align 8
  br label %26

43:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %45

44:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %35
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
