; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_watchdog_check_dogfunction_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_watchdog_check_dogfunction_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timeval = type { i32, i64 }

@do_timedog = common dso_local global i32 0, align 4
@carp_thresh_seconds = common dso_local global i32 0, align 4
@test_cmd = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Watchdog program\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Watchdog operation\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"stat(\22/etc\22, &sb)\00", align 1
@do_syslog = common dso_local global i64 0, align 8
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"%s: '%s' took too long: %d.%06ld seconds >= %d seconds threshold\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.timespec*, %struct.timespec*)* @watchdog_check_dogfunction_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @watchdog_check_dogfunction_time(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %14 = load i32, i32* @do_timedog, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.timespec*, %struct.timespec** %4, align 8
  %19 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %6, %struct.timespec* %18)
  %20 = load %struct.timespec*, %struct.timespec** %5, align 8
  %21 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %7, %struct.timespec* %20)
  %22 = call i32 @timersub(%struct.timeval* %7, %struct.timeval* %6, %struct.timeval* %9)
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @carp_thresh_seconds, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %3, align 8
  br label %70

31:                                               ; preds = %17
  %32 = load i8*, i8** @test_cmd, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %35 = load i8*, i8** @test_cmd, align 8
  store i8* %35, i8** %11, align 8
  br label %37

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i64, i64* @do_syslog, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* @LOG_CRIT, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @carp_thresh_seconds, align 4
  %48 = call i32 @syslog(i32 %41, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %43, i32 %44, i64 %46, i32 %47)
  br label %57

49:                                               ; preds = %37
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @carp_thresh_seconds, align 4
  %56 = call i32 @warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %50, i8* %51, i32 %52, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %40
  %58 = call i64 @watchdog_getuptime(%struct.timespec* %12)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %3, align 8
  br label %70

63:                                               ; preds = %57
  %64 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %8, %struct.timespec* %12)
  %65 = call i32 @timersub(%struct.timeval* %8, %struct.timeval* %6, %struct.timeval* %9)
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %63, %60, %28, %16
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i8*, i32, i64, i32) #1

declare dso_local i64 @watchdog_getuptime(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
