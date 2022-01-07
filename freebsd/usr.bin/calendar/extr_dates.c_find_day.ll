; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_find_day.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_find_day.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_year = type { i32, %struct.cal_month*, %struct.cal_year* }
%struct.cal_month = type { i32, %struct.cal_day*, %struct.cal_month* }
%struct.cal_day = type { i32, %struct.cal_day* }

@debug_remember = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"remember_ymd: %d - %d - %d\0A\00", align 1
@hyear = common dso_local global %struct.cal_year* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cal_day* (i32, i32, i32)* @find_day to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cal_day* @find_day(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cal_day*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cal_year*, align 8
  %9 = alloca %struct.cal_month*, align 8
  %10 = alloca %struct.cal_day*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @debug_remember, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.cal_year*, %struct.cal_year** @hyear, align 8
  store %struct.cal_year* %19, %struct.cal_year** %8, align 8
  br label %20

20:                                               ; preds = %29, %18
  %21 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %22 = icmp ne %struct.cal_year* %21, null
  br i1 %22, label %23, label %71

23:                                               ; preds = %20
  %24 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %25 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %31 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %30, i32 0, i32 2
  %32 = load %struct.cal_year*, %struct.cal_year** %31, align 8
  store %struct.cal_year* %32, %struct.cal_year** %8, align 8
  br label %20

33:                                               ; preds = %23
  %34 = load %struct.cal_year*, %struct.cal_year** %8, align 8
  %35 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %34, i32 0, i32 1
  %36 = load %struct.cal_month*, %struct.cal_month** %35, align 8
  store %struct.cal_month* %36, %struct.cal_month** %9, align 8
  br label %37

37:                                               ; preds = %46, %33
  %38 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %39 = icmp ne %struct.cal_month* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %37
  %41 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %42 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %48 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %47, i32 0, i32 2
  %49 = load %struct.cal_month*, %struct.cal_month** %48, align 8
  store %struct.cal_month* %49, %struct.cal_month** %9, align 8
  br label %37

50:                                               ; preds = %40
  %51 = load %struct.cal_month*, %struct.cal_month** %9, align 8
  %52 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %51, i32 0, i32 1
  %53 = load %struct.cal_day*, %struct.cal_day** %52, align 8
  store %struct.cal_day* %53, %struct.cal_day** %10, align 8
  br label %54

54:                                               ; preds = %65, %50
  %55 = load %struct.cal_day*, %struct.cal_day** %10, align 8
  %56 = icmp ne %struct.cal_day* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.cal_day*, %struct.cal_day** %10, align 8
  %59 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load %struct.cal_day*, %struct.cal_day** %10, align 8
  store %struct.cal_day* %64, %struct.cal_day** %4, align 8
  br label %72

65:                                               ; preds = %57
  %66 = load %struct.cal_day*, %struct.cal_day** %10, align 8
  %67 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %66, i32 0, i32 1
  %68 = load %struct.cal_day*, %struct.cal_day** %67, align 8
  store %struct.cal_day* %68, %struct.cal_day** %10, align 8
  br label %54

69:                                               ; preds = %54
  store %struct.cal_day* null, %struct.cal_day** %4, align 8
  br label %72

70:                                               ; preds = %37
  store %struct.cal_day* null, %struct.cal_day** %4, align 8
  br label %72

71:                                               ; preds = %20
  store %struct.cal_day* null, %struct.cal_day** %4, align 8
  br label %72

72:                                               ; preds = %71, %70, %69, %63
  %73 = load %struct.cal_day*, %struct.cal_day** %4, align 8
  ret %struct.cal_day* %73
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
