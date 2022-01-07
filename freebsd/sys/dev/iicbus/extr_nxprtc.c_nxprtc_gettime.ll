; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.nxprtc_softc = type { i64, i64, i32, i32, i32 }

@IIC_WAIT = common dso_local global i32 0, align 4
@PCF85xx_R_CS1 = common dso_local global i32 0, align 4
@PCF85xx_B_SECOND_OS = common dso_local global i32 0, align 4
@PCF85xx_B_CS1_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RTC clock not running\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCF85xx_M_12HOUR = common dso_local global i32 0, align 4
@PCF85xx_M_24HOUR = common dso_local global i32 0, align 4
@TMR_TICKS_SEC = common dso_local global i32 0, align 4
@PCF8523_B_HOUR_PM = common dso_local global i32 0, align 4
@PCF85xx_M_SECOND = common dso_local global i32 0, align 4
@PCF85xx_M_MINUTE = common dso_local global i32 0, align 4
@PCF85xx_M_DAY = common dso_local global i32 0, align 4
@PCF85xx_M_MONTH = common dso_local global i32 0, align 4
@PCF85xx_M_YEAR = common dso_local global i32 0, align 4
@TYPE_PCF8563 = common dso_local global i64 0, align 8
@PCF8563_B_MONTH_C = common dso_local global i32 0, align 4
@SC_F_CPOL = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @nxprtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxprtc_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.bcd_clocktime, align 4
  %7 = alloca %struct.time_regs, align 4
  %8 = alloca %struct.nxprtc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.nxprtc_softc* @device_get_softc(i32 %13)
  store %struct.nxprtc_softc* %14, %struct.nxprtc_softc** %8, align 8
  %15 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %16 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %19 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IIC_WAIT, align 4
  %22 = call i32 @iicbus_request_bus(i32 %17, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %26 = call i32 @read_timeregs(%struct.nxprtc_softc* %25, %struct.time_regs* %7, i32* %12)
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %30 = load i32, i32* @PCF85xx_R_CS1, align 4
  %31 = call i32 @read_reg(%struct.nxprtc_softc* %29, i32 %30, i32* %10)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %34 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %37 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @iicbus_release_bus(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %165

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCF85xx_B_SECOND_OS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PCF85xx_B_CS1_STOP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %165

60:                                               ; preds = %51
  %61 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %62 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @PCF85xx_M_12HOUR, align 4
  store i32 %66, i32* %11, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @PCF85xx_M_24HOUR, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 1000000000
  %72 = load i32, i32* @TMR_TICKS_SEC, align 4
  %73 = sdiv i32 %71, %72
  %74 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCF8523_B_HOUR_PM, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PCF85xx_M_SECOND, align 4
  %85 = and i32 %83, %84
  %86 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PCF85xx_M_MINUTE, align 4
  %90 = and i32 %88, %89
  %91 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %93, %94
  %96 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 4
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PCF85xx_M_DAY, align 4
  %100 = and i32 %98, %99
  %101 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 5
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PCF85xx_M_MONTH, align 4
  %105 = and i32 %103, %104
  %106 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 6
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PCF85xx_M_YEAR, align 4
  %110 = and i32 %108, %109
  %111 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  store i32 %110, i32* %111, align 4
  %112 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %113 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TYPE_PCF8563, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %69
  %118 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PCF8563_B_MONTH_C, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 112
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, i32* @SC_F_CPOL, align 4
  %129 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %130 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %123
  br label %145

134:                                              ; preds = %117
  %135 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %136, 112
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* @SC_F_CPOL, align 4
  %140 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %141 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %134
  br label %145

145:                                              ; preds = %144, %133
  br label %146

146:                                              ; preds = %145, %69
  %147 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %148 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @CLOCK_DBG_READ, align 4
  %151 = call i32 @clock_dbgprint_bcd(i32 %149, i32 %150, %struct.bcd_clocktime* %6)
  %152 = load %struct.timespec*, %struct.timespec** %5, align 8
  %153 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %154 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %6, %struct.timespec* %152, i64 %155)
  store i32 %156, i32* %9, align 4
  %157 = call i64 (...) @utc_offset()
  %158 = load %struct.timespec*, %struct.timespec** %5, align 8
  %159 = getelementptr inbounds %struct.timespec, %struct.timespec* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %146, %56, %43
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.nxprtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @read_timeregs(%struct.nxprtc_softc*, %struct.time_regs*, i32*) #1

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i32*) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i64) #1

declare dso_local i64 @utc_offset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
