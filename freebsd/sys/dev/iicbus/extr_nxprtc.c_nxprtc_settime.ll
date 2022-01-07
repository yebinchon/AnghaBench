; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nxprtc_softc = type { i64, i32, i32, i32, i32, i32 }

@IIC_WAIT = common dso_local global i32 0, align 4
@PCF85xx_R_CS1 = common dso_local global i32 0, align 4
@PCF85xx_B_CS1_STOP = common dso_local global i32 0, align 4
@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@TYPE_PCF8563 = common dso_local global i64 0, align 8
@SC_F_CPOL = common dso_local global i32 0, align 4
@PCF8563_B_MONTH_C = common dso_local global i32 0, align 4
@PCF8523_B_HOUR_PM = common dso_local global i32 0, align 4
@TMR_TICKS_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot write RTC time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @nxprtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxprtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.bcd_clocktime, align 8
  %7 = alloca %struct.time_regs, align 4
  %8 = alloca %struct.nxprtc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.nxprtc_softc* @device_get_softc(i32 %12)
  store %struct.nxprtc_softc* %13, %struct.nxprtc_softc** %8, align 8
  %14 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %15 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %18 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IIC_WAIT, align 4
  %21 = call i32 @iicbus_request_bus(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %164

25:                                               ; preds = %2
  %26 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %27 = load i32, i32* @PCF85xx_R_CS1, align 4
  %28 = call i32 @read_reg(%struct.nxprtc_softc* %26, i32 %27, i32* %11)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %149

31:                                               ; preds = %25
  %32 = load i32, i32* @PCF85xx_B_CS1_STOP, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %36 = load i32, i32* @PCF85xx_R_CS1, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @write_reg(%struct.nxprtc_softc* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %149

41:                                               ; preds = %31
  %42 = load %struct.timespec*, %struct.timespec** %5, align 8
  %43 = call i32 @getnanotime(%struct.timespec* %42)
  %44 = call i64 (...) @utc_offset()
  %45 = load %struct.timespec*, %struct.timespec** %5, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.timespec*, %struct.timespec** %5, align 8
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.timespec*, %struct.timespec** %5, align 8
  %54 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %55 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clock_ts_to_bcd(%struct.timespec* %53, %struct.bcd_clocktime* %6, i32 %56)
  %58 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %59 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %62 = call i32 @clock_dbgprint_bcd(i32 %60, i32 %61, %struct.bcd_clocktime* %6)
  store i32 0, i32* %10, align 4
  %63 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %64 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TYPE_PCF8563, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %41
  %69 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %70 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SC_F_CPOL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 8192
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @PCF8563_B_MONTH_C, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %75
  br label %89

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 8192
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @PCF8563_B_MONTH_C, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89, %41
  %91 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 6
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 5
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* @PCF8523_B_HOUR_PM, align 4
  br label %105

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = or i32 %98, %106
  %108 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 4
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 3
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 255
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %117, %118
  %120 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %6, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %7, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %125 = call i32 @write_timeregs(%struct.nxprtc_softc* %124, %struct.time_regs* %7)
  store i32 %125, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %105
  br label %149

128:                                              ; preds = %105
  %129 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %130 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %131 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TMR_TICKS_SEC, align 4
  %134 = call i32 @write_reg(%struct.nxprtc_softc* %129, i32 %132, i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %164

138:                                              ; preds = %128
  %139 = load i32, i32* @PCF85xx_B_CS1_STOP, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %11, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %11, align 4
  %143 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %144 = load i32, i32* @PCF85xx_R_CS1, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @write_reg(%struct.nxprtc_softc* %143, i32 %144, i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %148 = call i32 @pcf8523_battery_check(%struct.nxprtc_softc* %147)
  br label %149

149:                                              ; preds = %138, %127, %40, %30
  %150 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %151 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %8, align 8
  %154 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @iicbus_release_bus(i32 %152, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %149
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %136, %23
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.nxprtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i32*) #1

declare dso_local i32 @write_reg(%struct.nxprtc_softc*, i32, i32) #1

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @clock_ts_to_bcd(%struct.timespec*, %struct.bcd_clocktime*, i32) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @write_timeregs(%struct.nxprtc_softc*, %struct.time_regs*) #1

declare dso_local i32 @pcf8523_battery_check(%struct.nxprtc_softc*) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
