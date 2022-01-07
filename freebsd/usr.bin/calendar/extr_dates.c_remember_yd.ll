; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_remember_yd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_dates.c_remember_yd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_year = type { i32, %struct.cal_month*, %struct.cal_year* }
%struct.cal_month = type { i32, %struct.cal_month*, %struct.cal_day* }
%struct.cal_day = type { i32, i32, %struct.cal_day* }

@debug_remember = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"remember_yd: %d - %d\0A\00", align 1
@hyear = common dso_local global %struct.cal_year* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remember_yd(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cal_year*, align 8
  %11 = alloca %struct.cal_month*, align 8
  %12 = alloca %struct.cal_day*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @debug_remember, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.cal_year*, %struct.cal_year** @hyear, align 8
  store %struct.cal_year* %20, %struct.cal_year** %10, align 8
  br label %21

21:                                               ; preds = %30, %19
  %22 = load %struct.cal_year*, %struct.cal_year** %10, align 8
  %23 = icmp ne %struct.cal_year* %22, null
  br i1 %23, label %24, label %72

24:                                               ; preds = %21
  %25 = load %struct.cal_year*, %struct.cal_year** %10, align 8
  %26 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.cal_year*, %struct.cal_year** %10, align 8
  %32 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %31, i32 0, i32 2
  %33 = load %struct.cal_year*, %struct.cal_year** %32, align 8
  store %struct.cal_year* %33, %struct.cal_year** %10, align 8
  br label %21

34:                                               ; preds = %24
  %35 = load %struct.cal_year*, %struct.cal_year** %10, align 8
  %36 = getelementptr inbounds %struct.cal_year, %struct.cal_year* %35, i32 0, i32 1
  %37 = load %struct.cal_month*, %struct.cal_month** %36, align 8
  store %struct.cal_month* %37, %struct.cal_month** %11, align 8
  br label %38

38:                                               ; preds = %67, %34
  %39 = load %struct.cal_month*, %struct.cal_month** %11, align 8
  %40 = icmp ne %struct.cal_month* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load %struct.cal_month*, %struct.cal_month** %11, align 8
  %43 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %42, i32 0, i32 2
  %44 = load %struct.cal_day*, %struct.cal_day** %43, align 8
  store %struct.cal_day* %44, %struct.cal_day** %12, align 8
  br label %45

45:                                               ; preds = %63, %41
  %46 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %47 = icmp ne %struct.cal_day* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %50 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.cal_month*, %struct.cal_month** %11, align 8
  %56 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %60 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %5, align 4
  br label %73

63:                                               ; preds = %48
  %64 = load %struct.cal_day*, %struct.cal_day** %12, align 8
  %65 = getelementptr inbounds %struct.cal_day, %struct.cal_day* %64, i32 0, i32 2
  %66 = load %struct.cal_day*, %struct.cal_day** %65, align 8
  store %struct.cal_day* %66, %struct.cal_day** %12, align 8
  br label %45

67:                                               ; preds = %45
  %68 = load %struct.cal_month*, %struct.cal_month** %11, align 8
  %69 = getelementptr inbounds %struct.cal_month, %struct.cal_month* %68, i32 0, i32 1
  %70 = load %struct.cal_month*, %struct.cal_month** %69, align 8
  store %struct.cal_month* %70, %struct.cal_month** %11, align 8
  br label %38

71:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %73

72:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %54
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
