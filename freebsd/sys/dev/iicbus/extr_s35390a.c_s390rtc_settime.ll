; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_s35390a.c_s390rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_s35390a.c_s390rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32 }

@S390_RT1_NBYTES = common dso_local global i32 0, align 4
@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@S390_RT1_SECOND = common dso_local global i64 0, align 8
@S390_RT1_MINUTE = common dso_local global i64 0, align 8
@S390_RT1_HOUR = common dso_local global i64 0, align 8
@S390_RT1_DAY = common dso_local global i64 0, align 8
@S390_RT1_WDAY = common dso_local global i64 0, align 8
@S390_RT1_MONTH = common dso_local global i64 0, align 8
@S390_RT1_YEAR = common dso_local global i64 0, align 8
@S390_REALTIME1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @s390rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcd_clocktime, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load i32, i32* @S390_RT1_NBYTES, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.timespec*, %struct.timespec** %4, align 8
  %13 = call i32 @clock_ts_to_bcd(%struct.timespec* %12, %struct.bcd_clocktime* %7, i32 0)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %16 = call i32 @clock_dbgprint_bcd(i32 %14, i32 %15, %struct.bcd_clocktime* %7)
  %17 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @S390_RT1_SECOND, align 8
  %20 = getelementptr inbounds i32, i32* %11, i64 %19
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @S390_RT1_MINUTE, align 8
  %24 = getelementptr inbounds i32, i32* %11, i64 %23
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @S390_RT1_HOUR, align 8
  %28 = getelementptr inbounds i32, i32* %11, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @S390_RT1_DAY, align 8
  %32 = getelementptr inbounds i32, i32* %11, i64 %31
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @S390_RT1_WDAY, align 8
  %36 = getelementptr inbounds i32, i32* %11, i64 %35
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @S390_RT1_MONTH, align 8
  %40 = getelementptr inbounds i32, i32* %11, i64 %39
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = load i64, i64* @S390_RT1_YEAR, align 8
  %45 = getelementptr inbounds i32, i32* %11, i64 %44
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @S390_REALTIME1, align 4
  %48 = load i32, i32* @S390_RT1_NBYTES, align 4
  %49 = call i32 @s390rtc_write(i32 %46, i32 %47, i32* %11, i32 %48)
  %50 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clock_ts_to_bcd(%struct.timespec*, %struct.bcd_clocktime*, i32) #2

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #2

declare dso_local i32 @s390rtc_write(i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
