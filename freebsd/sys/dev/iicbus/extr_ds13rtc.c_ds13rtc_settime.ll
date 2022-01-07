; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ds13rtc_softc = type { i64, i64, i64, i64, i32, i64 }

@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@DS13xx_B_HOUR_AMPM = common dso_local global i32 0, align 4
@DS13xx_B_HOUR_PM = common dso_local global i32 0, align 4
@DS13xx_B_MONTH_CENTURY = common dso_local global i32 0, align 4
@DS13xx_B_STATUS_OSF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot update RTC time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds13rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds13rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.bcd_clocktime, align 8
  %7 = alloca %struct.time_regs, align 4
  %8 = alloca %struct.ds13rtc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ds13rtc_softc* @device_get_softc(i32 %13)
  store %struct.ds13rtc_softc* %14, %struct.ds13rtc_softc** %8, align 8
  %15 = call i64 (...) @utc_offset()
  %16 = load %struct.timespec*, %struct.timespec** %5, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %23 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %28 = load %struct.timespec*, %struct.timespec** %5, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write_timeword(%struct.ds13rtc_softc* %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %144

32:                                               ; preds = %2
  %33 = load %struct.timespec*, %struct.timespec** %5, align 8
  %34 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %35 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @clock_ts_to_bcd(%struct.timespec* %33, %struct.bcd_clocktime* %6, i64 %36)
  %38 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %39 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %42 = call i32 @clock_dbgprint_bcd(i32 %40, i32 %41, %struct.bcd_clocktime* %6)
  store i32 0, i32* %12, align 4
  %43 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %44 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %32
  %48 = load i32, i32* @DS13xx_B_HOUR_AMPM, align 4
  store i32 %48, i32* %12, align 4
  %49 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @DS13xx_B_HOUR_PM, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %32
  store i32 0, i32* %10, align 4
  %58 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %59 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 2000
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @DS13xx_B_MONTH_CENTURY, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %57
  %72 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 6
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 5
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 4
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %87, %88
  %90 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 255
  %94 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 3
  store i32 %96, i32* %97, align 4
  %98 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %99 = call i32 @write_timeregs(%struct.ds13rtc_softc* %98, %struct.time_regs* %7)
  store i32 %99, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %71
  br label %136

102:                                              ; preds = %71
  %103 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %104 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %107 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %102
  %111 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %112 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %113 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @read_reg(%struct.ds13rtc_softc* %111, i64 %114, i32* %11)
  store i32 %115, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %136

118:                                              ; preds = %110
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @DS13xx_B_STATUS_OSF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load i32, i32* @DS13xx_B_STATUS_OSF, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %129 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %8, align 8
  %130 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @write_reg(%struct.ds13rtc_softc* %128, i64 %131, i32 %132)
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %123, %118
  br label %135

135:                                              ; preds = %134, %102
  br label %136

136:                                              ; preds = %135, %117, %101
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %26
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.ds13rtc_softc* @device_get_softc(i32) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @write_timeword(%struct.ds13rtc_softc*, i32) #1

declare dso_local i32 @clock_ts_to_bcd(%struct.timespec*, %struct.bcd_clocktime*, i64) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @write_timeregs(%struct.ds13rtc_softc*, %struct.time_regs*) #1

declare dso_local i32 @read_reg(%struct.ds13rtc_softc*, i64, i32*) #1

declare dso_local i32 @write_reg(%struct.ds13rtc_softc*, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
