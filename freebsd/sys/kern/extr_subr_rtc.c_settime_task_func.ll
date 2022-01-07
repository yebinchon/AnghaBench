; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rtc.c_settime_task_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rtc.c_settime_task_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.rtc_instance = type { i32, i32, i32 }

@CLOCKF_SETTIME_NO_TS = common dso_local global i32 0, align 4
@CLOCKF_SETTIME_NO_ADJ = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"CLOCK_SETTIME error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @settime_task_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settime_task_func(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.rtc_instance*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rtc_instance*
  store %struct.rtc_instance* %9, %struct.rtc_instance** %6, align 8
  %10 = load %struct.rtc_instance*, %struct.rtc_instance** %6, align 8
  %11 = getelementptr inbounds %struct.rtc_instance, %struct.rtc_instance* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CLOCKF_SETTIME_NO_TS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %2
  %17 = call i32 @getnanotime(%struct.timespec* %5)
  %18 = load %struct.rtc_instance*, %struct.rtc_instance** %6, align 8
  %19 = getelementptr inbounds %struct.rtc_instance, %struct.rtc_instance* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLOCKF_SETTIME_NO_ADJ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = call i64 (...) @utc_offset()
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = load %struct.rtc_instance*, %struct.rtc_instance** %6, align 8
  %30 = getelementptr inbounds %struct.rtc_instance, %struct.rtc_instance* %29, i32 0, i32 2
  %31 = call i32 @timespecadd(%struct.timespec* %5, i32* %30, %struct.timespec* %5)
  br label %32

32:                                               ; preds = %24, %16
  br label %36

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct.rtc_instance*, %struct.rtc_instance** %6, align 8
  %38 = getelementptr inbounds %struct.rtc_instance, %struct.rtc_instance* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CLOCK_SETTIME(i32 %39, %struct.timespec* %5)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i64, i64* @bootverbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.rtc_instance*, %struct.rtc_instance** %6, align 8
  %48 = getelementptr inbounds %struct.rtc_instance, %struct.rtc_instance* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %43, %36
  ret void
}

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @timespecadd(%struct.timespec*, i32*, %struct.timespec*) #1

declare dso_local i32 @CLOCK_SETTIME(i32, %struct.timespec*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
