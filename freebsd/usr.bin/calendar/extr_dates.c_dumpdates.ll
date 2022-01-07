; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_dumpdates.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_dumpdates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_year = type { i32, i32, %struct.cal_year*, %struct.cal_month* }
%struct.cal_month = type { i32, i32, i32, %struct.cal_month*, %struct.cal_day* }
%struct.cal_day = type { i32, i32, i32, %struct.cal_day* }

@hyear = common dso_local global %struct.cal_year* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%-5d (wday:%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"-- %-5d (julian:%d, dow:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"  -- %-5d (julian:%d, dow:%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpdates() #0 {
  %1 = alloca %struct.cal_year*, align 8
  %2 = alloca %struct.cal_month*, align 8
  %3 = alloca %struct.cal_day*, align 8
  %4 = load %struct.cal_year*, %struct.cal_year** @hyear, align 8
  store %struct.cal_year* %4, %struct.cal_year** %1, align 8
  br label %5

5:                                                ; preds = %57, %0
  %6 = load %struct.cal_year*, %struct.cal_year** %1, align 8
  %7 = icmp ne %struct.cal_year* %6, null
  br i1 %7, label %8, label %61

8:                                                ; preds = %5
  %9 = load %struct.cal_year*, %struct.cal_year** %1, align 8
  %10 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.cal_year*, %struct.cal_year** %1, align 8
  %13 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.cal_year*, %struct.cal_year** %1, align 8
  %17 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %16, i32 0, i32 3
  %18 = load %struct.cal_month*, %struct.cal_month** %17, align 8
  store %struct.cal_month* %18, %struct.cal_month** %2, align 8
  br label %19

19:                                               ; preds = %53, %8
  %20 = load %struct.cal_month*, %struct.cal_month** %2, align 8
  %21 = icmp ne %struct.cal_month* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load %struct.cal_month*, %struct.cal_month** %2, align 8
  %24 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cal_month*, %struct.cal_month** %2, align 8
  %27 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cal_month*, %struct.cal_month** %2, align 8
  %30 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.cal_month*, %struct.cal_month** %2, align 8
  %34 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %33, i32 0, i32 4
  %35 = load %struct.cal_day*, %struct.cal_day** %34, align 8
  store %struct.cal_day* %35, %struct.cal_day** %3, align 8
  br label %36

36:                                               ; preds = %39, %22
  %37 = load %struct.cal_day*, %struct.cal_day** %3, align 8
  %38 = icmp ne %struct.cal_day* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.cal_day*, %struct.cal_day** %3, align 8
  %41 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cal_day*, %struct.cal_day** %3, align 8
  %44 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cal_day*, %struct.cal_day** %3, align 8
  %47 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load %struct.cal_day*, %struct.cal_day** %3, align 8
  %51 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %50, i32 0, i32 3
  %52 = load %struct.cal_day*, %struct.cal_day** %51, align 8
  store %struct.cal_day* %52, %struct.cal_day** %3, align 8
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.cal_month*, %struct.cal_month** %2, align 8
  %55 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %54, i32 0, i32 3
  %56 = load %struct.cal_month*, %struct.cal_month** %55, align 8
  store %struct.cal_month* %56, %struct.cal_month** %2, align 8
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.cal_year*, %struct.cal_year** %1, align 8
  %59 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %58, i32 0, i32 2
  %60 = load %struct.cal_year*, %struct.cal_year** %59, align 8
  store %struct.cal_year* %60, %struct.cal_year** %1, align 8
  br label %5

61:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
