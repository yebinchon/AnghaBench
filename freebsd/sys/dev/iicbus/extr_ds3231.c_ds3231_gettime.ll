; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ds3231_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"cannot read from RTC.\0A\00", align 1
@DS3231_STATUS_OSF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DS3231_SECS = common dso_local global i64 0, align 8
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@DS3231_HOUR = common dso_local global i64 0, align 8
@DS3231_HOUR_USE_AMPM = common dso_local global i32 0, align 4
@DS3231_HOUR_MASK_12HR = common dso_local global i32 0, align 4
@DS3231_HOUR_MASK_24HR = common dso_local global i32 0, align 4
@DS3231_SECS_MASK = common dso_local global i32 0, align 4
@DS3231_MINS = common dso_local global i64 0, align 8
@DS3231_MINS_MASK = common dso_local global i32 0, align 4
@DS3231_DATE = common dso_local global i64 0, align 8
@DS3231_DATE_MASK = common dso_local global i32 0, align 4
@DS3231_MONTH = common dso_local global i64 0, align 8
@DS3231_MONTH_MASK = common dso_local global i32 0, align 4
@DS3231_YEAR = common dso_local global i64 0, align 8
@DS3231_YEAR_MASK = common dso_local global i32 0, align 4
@DS3231_HOUR_IS_PM = common dso_local global i32 0, align 4
@DS3231_C_MASK = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds3231_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3231_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcd_clocktime, align 8
  %9 = alloca %struct.ds3231_softc*, align 8
  %10 = alloca [7 x i32], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ds3231_softc* @device_get_softc(i32 %12)
  store %struct.ds3231_softc* %13, %struct.ds3231_softc** %9, align 8
  %14 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %15 = call i32 @ds3231_status_read(%struct.ds3231_softc* %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %23 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DS3231_STATUS_OSF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %149

30:                                               ; preds = %21
  %31 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %32 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @DS3231_SECS, align 8
  %35 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %36 = load i32, i32* @IIC_INTRWAIT, align 4
  %37 = call i32 @iicdev_readfrom(i32 %33, i64 %34, i32* %35, i32 28, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %149

44:                                               ; preds = %30
  %45 = load i64, i64* @DS3231_HOUR, align 8
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DS3231_HOUR_USE_AMPM, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %53 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @DS3231_HOUR_MASK_12HR, align 4
  store i32 %54, i32* %11, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @DS3231_HOUR_MASK_24HR, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @DS3231_SECS, align 8
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DS3231_SECS_MASK, align 4
  %63 = and i32 %61, %62
  %64 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i64, i64* @DS3231_MINS, align 8
  %66 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DS3231_MINS_MASK, align 4
  %69 = and i32 %67, %68
  %70 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i64, i64* @DS3231_HOUR, align 8
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %73, %74
  %76 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load i64, i64* @DS3231_DATE, align 8
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DS3231_DATE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* @DS3231_MONTH, align 8
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DS3231_MONTH_MASK, align 4
  %87 = and i32 %85, %86
  %88 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load i64, i64* @DS3231_YEAR, align 8
  %90 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DS3231_YEAR_MASK, align 4
  %93 = and i32 %91, %92
  %94 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 5
  store i32 %93, i32* %94, align 4
  %95 = load i64, i64* @DS3231_HOUR, align 8
  %96 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DS3231_HOUR_IS_PM, align 4
  %99 = and i32 %97, %98
  %100 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 6
  store i32 %99, i32* %100, align 8
  %101 = load i64, i64* @DS3231_MONTH, align 8
  %102 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DS3231_C_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  store i32 %108, i32* %6, align 4
  %109 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %110 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %117

113:                                              ; preds = %57
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %116 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %132

117:                                              ; preds = %57
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %120 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %125 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 256
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %130 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %123, %117
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %134 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %8, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  %139 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %140 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CLOCK_DBG_READ, align 4
  %143 = call i32 @clock_dbgprint_bcd(i32 %141, i32 %142, %struct.bcd_clocktime* %8)
  %144 = load %struct.timespec*, %struct.timespec** %5, align 8
  %145 = load %struct.ds3231_softc*, %struct.ds3231_softc** %9, align 8
  %146 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %8, %struct.timespec* %144, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %132, %40, %28, %17
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.ds3231_softc* @device_get_softc(i32) #1

declare dso_local i32 @ds3231_status_read(%struct.ds3231_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iicdev_readfrom(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
