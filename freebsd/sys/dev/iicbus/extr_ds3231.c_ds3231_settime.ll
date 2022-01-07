; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ds3231_softc = type { i32, i64, i64, i32 }

@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@DS3231_HOUR_USE_AMPM = common dso_local global i32 0, align 4
@DS3231_HOUR_IS_PM = common dso_local global i32 0, align 4
@DS3231_SECS = common dso_local global i64 0, align 8
@DS3231_MINS = common dso_local global i64 0, align 8
@DS3231_HOUR = common dso_local global i64 0, align 8
@DS3231_DATE = common dso_local global i64 0, align 8
@DS3231_WEEKDAY = common dso_local global i64 0, align 8
@DS3231_MONTH = common dso_local global i64 0, align 8
@DS3231_YEAR = common dso_local global i64 0, align 8
@DS3231_C_MASK = common dso_local global i32 0, align 4
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot write to RTC.\0A\00", align 1
@DS3231_STATUS_OSF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot read from RTC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds3231_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3231_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcd_clocktime, align 8
  %8 = alloca %struct.ds3231_softc*, align 8
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ds3231_softc* @device_get_softc(i32 %11)
  store %struct.ds3231_softc* %12, %struct.ds3231_softc** %8, align 8
  %13 = call i64 (...) @utc_offset()
  %14 = load %struct.timespec*, %struct.timespec** %5, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.timespec*, %struct.timespec** %5, align 8
  %21 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %22 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @clock_ts_to_bcd(%struct.timespec* %20, %struct.bcd_clocktime* %7, i64 %23)
  %25 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %26 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %29 = call i32 @clock_dbgprint_bcd(i32 %27, i32 %28, %struct.bcd_clocktime* %7)
  %30 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %31 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* @DS3231_HOUR_USE_AMPM, align 4
  store i32 %35, i32* %10, align 4
  %36 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @DS3231_HOUR_IS_PM, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @DS3231_SECS, align 8
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %48
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @DS3231_MINS, align 8
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %52
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %55, %56
  %58 = load i64, i64* @DS3231_HOUR, align 8
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %58
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @DS3231_DATE, align 8
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %62
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  %67 = load i64, i64* @DS3231_WEEKDAY, align 8
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %67
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* @DS3231_MONTH, align 8
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %71
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 255
  %76 = load i64, i64* @DS3231_YEAR, align 8
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %76
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %79 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %45
  %83 = load i32, i32* @DS3231_C_MASK, align 4
  %84 = load i64, i64* @DS3231_MONTH, align 8
  %85 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %45
  %89 = load i32, i32* %4, align 4
  %90 = load i64, i64* @DS3231_SECS, align 8
  %91 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %92 = load i32, i32* @IIC_INTRWAIT, align 4
  %93 = call i32 @iicdev_writeto(i32 %89, i64 %90, i32* %91, i32 28, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %132

100:                                              ; preds = %88
  %101 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %102 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DS3231_STATUS_OSF, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %100
  %108 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %109 = call i32 @ds3231_status_read(%struct.ds3231_softc* %108)
  store i32 %109, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %132

115:                                              ; preds = %107
  %116 = load i32, i32* @DS3231_STATUS_OSF, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %119 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ds3231_softc*, %struct.ds3231_softc** %8, align 8
  %123 = call i32 @ds3231_status_write(%struct.ds3231_softc* %122, i32 0, i32 0)
  store i32 %123, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %132

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %100
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %125, %111, %96
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.ds3231_softc* @device_get_softc(i32) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @clock_ts_to_bcd(%struct.timespec*, %struct.bcd_clocktime*, i64) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @iicdev_writeto(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ds3231_status_read(%struct.ds3231_softc*) #1

declare dso_local i32 @ds3231_status_write(%struct.ds3231_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
