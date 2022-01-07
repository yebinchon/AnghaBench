; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ds1307_softc = type { i32, i64, i64 }

@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@DS1307_HOUR_USE_AMPM = common dso_local global i32 0, align 4
@DS1307_HOUR_IS_PM = common dso_local global i32 0, align 4
@DS1307_SECS = common dso_local global i64 0, align 8
@DS1307_MINS = common dso_local global i64 0, align 8
@DS1307_HOUR = common dso_local global i64 0, align 8
@DS1307_DATE = common dso_local global i64 0, align 8
@DS1307_WEEKDAY = common dso_local global i64 0, align 8
@DS1307_MONTH = common dso_local global i64 0, align 8
@DS1307_YEAR = common dso_local global i64 0, align 8
@MCP7941X_SECS_ST = common dso_local global i32 0, align 4
@MCP7941X_WEEKDAY_VBATEN = common dso_local global i32 0, align 4
@MCP7941X_MONTH_LPYR = common dso_local global i32 0, align 4
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot write to RTC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds1307_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.bcd_clocktime, align 8
  %6 = alloca %struct.ds1307_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ds1307_softc* @device_get_softc(i32 %11)
  store %struct.ds1307_softc* %12, %struct.ds1307_softc** %6, align 8
  %13 = call i64 (...) @utc_offset()
  %14 = load %struct.timespec*, %struct.timespec** %4, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.timespec*, %struct.timespec** %4, align 8
  %21 = load %struct.ds1307_softc*, %struct.ds1307_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @clock_ts_to_bcd(%struct.timespec* %20, %struct.bcd_clocktime* %5, i64 %23)
  %25 = load %struct.ds1307_softc*, %struct.ds1307_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %29 = call i32 @clock_dbgprint_bcd(i32 %27, i32 %28, %struct.bcd_clocktime* %5)
  %30 = load %struct.ds1307_softc*, %struct.ds1307_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* @DS1307_HOUR_USE_AMPM, align 4
  store i32 %35, i32* %10, align 4
  %36 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @DS1307_HOUR_IS_PM, align 4
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
  %46 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @DS1307_SECS, align 8
  %49 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %48
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @DS1307_MINS, align 8
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %52
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %55, %56
  %58 = load i64, i64* @DS1307_HOUR, align 8
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %58
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @DS1307_DATE, align 8
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %62
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @DS1307_WEEKDAY, align 8
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %66
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @DS1307_MONTH, align 8
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %70
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 255
  %75 = load i64, i64* @DS1307_YEAR, align 8
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %75
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ds1307_softc*, %struct.ds1307_softc** %6, align 8
  %78 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %45
  %82 = load i32, i32* @MCP7941X_SECS_ST, align 4
  %83 = load i64, i64* @DS1307_SECS, align 8
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @MCP7941X_WEEKDAY_VBATEN, align 4
  %88 = load i64, i64* @DS1307_WEEKDAY, align 8
  %89 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 8
  %95 = call i32 @bcd2bin(i32 %94)
  %96 = mul nsw i32 %95, 100
  %97 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %5, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 255
  %100 = call i32 @bcd2bin(i32 %99)
  %101 = add nsw i32 %96, %100
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = srem i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %81
  %106 = load i32, i32* %8, align 4
  %107 = srem i32 %106, 100
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105, %81
  %110 = load i32, i32* %8, align 4
  %111 = srem i32 %110, 400
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109, %105
  %114 = load i32, i32* @MCP7941X_MONTH_LPYR, align 4
  %115 = load i64, i64* @DS1307_MONTH, align 8
  %116 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %109
  br label %120

120:                                              ; preds = %119, %45
  %121 = load %struct.ds1307_softc*, %struct.ds1307_softc** %6, align 8
  %122 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* @DS1307_SECS, align 8
  %125 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %126 = load i32, i32* @IIC_INTRWAIT, align 4
  %127 = call i32 @iicdev_writeto(i32 %123, i64 %124, i32* %125, i32 28, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %120
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %120
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.ds1307_softc* @device_get_softc(i32) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @clock_ts_to_bcd(%struct.timespec*, %struct.bcd_clocktime*, i64) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @iicdev_writeto(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
