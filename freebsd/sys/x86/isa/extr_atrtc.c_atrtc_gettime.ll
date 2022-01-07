; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_atrtc_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_atrtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@RTC_STATUSD = common dso_local global i32 0, align 4
@RTCSD_PWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WARNING: Battery failure indication\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@atrtc_time_lock = common dso_local global i32 0, align 4
@RTC_STATUSA = common dso_local global i32 0, align 4
@RTCSA_TUP = common dso_local global i32 0, align 4
@atrtc_lock = common dso_local global i32 0, align 4
@RTC_SEC = common dso_local global i32 0, align 4
@RTC_MIN = common dso_local global i32 0, align 4
@RTC_HRS = common dso_local global i32 0, align 4
@RTC_DAY = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@RTC_CENTURY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @atrtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atrtc_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.bcd_clocktime, align 8
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %7 = load i32, i32* @RTC_STATUSD, align 4
  %8 = call i32 @rtcin(i32 %7)
  %9 = load i32, i32* @RTCSD_PWR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = call i32 @mtx_lock(i32* @atrtc_time_lock)
  br label %18

18:                                               ; preds = %24, %16
  %19 = load i32, i32* @RTC_STATUSA, align 4
  %20 = call i32 @rtcin(i32 %19)
  %21 = load i32, i32* @RTCSA_TUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %18

25:                                               ; preds = %18
  %26 = call i32 @mtx_lock_spin(i32* @atrtc_lock)
  %27 = load i32, i32* @RTC_SEC, align 4
  %28 = call i32 @rtcin_locked(i32 %27)
  %29 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @RTC_MIN, align 4
  %31 = call i32 @rtcin_locked(i32 %30)
  %32 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @RTC_HRS, align 4
  %34 = call i32 @rtcin_locked(i32 %33)
  %35 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @RTC_DAY, align 4
  %37 = call i32 @rtcin_locked(i32 %36)
  %38 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @RTC_MONTH, align 4
  %40 = call i32 @rtcin_locked(i32 %39)
  %41 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* @RTC_YEAR, align 4
  %43 = call i32 @rtcin_locked(i32 %42)
  %44 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = call i32 @mtx_unlock_spin(i32* @atrtc_lock)
  %46 = call i32 @mtx_unlock(i32* @atrtc_time_lock)
  %47 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @CLOCK_DBG_READ, align 4
  %51 = call i32 @clock_dbgprint_bcd(i32 %49, i32 %50, %struct.bcd_clocktime* %6)
  %52 = load %struct.timespec*, %struct.timespec** %5, align 8
  %53 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %6, %struct.timespec* %52, i32 0)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %25, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @rtcin(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @rtcin_locked(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
