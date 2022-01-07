; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.ds13rtc_softc = type { i64, i32, i64, i64, i32 }

@DS13xx_B_STATUS_OSF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot read RTC time\0A\00", align 1
@DS13xx_M_12HOUR = common dso_local global i32 0, align 4
@DS13xx_M_24HOUR = common dso_local global i32 0, align 4
@DS13xx_B_HOUR_PM = common dso_local global i32 0, align 4
@DS13xx_M_SECOND = common dso_local global i32 0, align 4
@DS13xx_M_MINUTE = common dso_local global i32 0, align 4
@DS13xx_M_DAY = common dso_local global i32 0, align 4
@DS13xx_M_MONTH = common dso_local global i32 0, align 4
@DS13xx_M_YEAR = common dso_local global i32 0, align 4
@DS13xx_B_MONTH_CENTURY = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds13rtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds13rtc_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.bcd_clocktime, align 8
  %7 = alloca %struct.time_regs, align 4
  %8 = alloca %struct.ds13rtc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ds13rtc_softc* @device_get_softc(i32 %12)
  store %struct.ds13rtc_softc* %13, %struct.ds13rtc_softc** %8, align 8
  %14 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %15 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %16 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @read_reg(%struct.ds13rtc_softc* %14, i32 %17, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %122

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @DS13xx_B_STATUS_OSF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %122

29:                                               ; preds = %22
  %30 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %31 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.timespec*, %struct.timespec** %5, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %38 = load %struct.timespec*, %struct.timespec** %5, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 0
  %40 = call i32 @read_timeword(%struct.ds13rtc_softc* %37, i32* %39)
  store i32 %40, i32* %3, align 4
  br label %122

41:                                               ; preds = %29
  %42 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %43 = call i32 @read_timeregs(%struct.ds13rtc_softc* %42, %struct.time_regs* %7)
  store i32 %43, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %122

49:                                               ; preds = %41
  %50 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %51 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @DS13xx_M_12HOUR, align 4
  store i32 %55, i32* %11, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @DS13xx_M_24HOUR, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DS13xx_B_HOUR_PM, align 4
  %63 = and i32 %61, %62
  %64 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DS13xx_M_SECOND, align 4
  %68 = and i32 %66, %67
  %69 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DS13xx_M_MINUTE, align 4
  %73 = and i32 %71, %72
  %74 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %76, %77
  %79 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DS13xx_M_DAY, align 4
  %83 = and i32 %81, %82
  %84 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 4
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DS13xx_M_MONTH, align 4
  %88 = and i32 %86, %87
  %89 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 5
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DS13xx_M_YEAR, align 4
  %93 = and i32 %91, %92
  %94 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 6
  store i32 %93, i32* %94, align 8
  %95 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %96 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %58
  %100 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DS13xx_B_MONTH_CENTURY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 256, i32 0
  %107 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %106
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %99, %58
  %111 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %112 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CLOCK_DBG_READ, align 4
  %115 = call i32 @clock_dbgprint_bcd(i32 %113, i32 %114, %struct.bcd_clocktime* %6)
  %116 = load %struct.timespec*, %struct.timespec** %5, align 8
  %117 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %118 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %6, %struct.timespec* %116, i64 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %110, %45, %34, %27, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.ds13rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @read_reg(%struct.ds13rtc_softc*, i32, i32*) #1

declare dso_local i32 @read_timeword(%struct.ds13rtc_softc*, i32*) #1

declare dso_local i32 @read_timeregs(%struct.ds13rtc_softc*, %struct.time_regs*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
