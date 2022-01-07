; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_isl12xx.c_isl12xx_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_isl12xx.c_isl12xx_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.isl12xx_softc = type { i32, i32, i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32 }

@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@ISL12XX_24HR_FLAG = common dso_local global i32 0, align 4
@ISL12XX_PM_FLAG = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@ISL12XX_SR_REG = common dso_local global i32 0, align 4
@ISL12XX_SR_WRTC = common dso_local global i32 0, align 4
@ISL12XX_SR_W0C_BITS = common dso_local global i32 0, align 4
@ISL12XX_SC_REG = common dso_local global i32 0, align 4
@WAITFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @isl12xx_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12xx_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.isl12xx_softc*, align 8
  %7 = alloca %struct.bcd_clocktime, align 8
  %8 = alloca %struct.time_regs, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.isl12xx_softc* @device_get_softc(i32 %12)
  store %struct.isl12xx_softc* %13, %struct.isl12xx_softc** %6, align 8
  %14 = call i64 (...) @utc_offset()
  %15 = load %struct.timespec*, %struct.timespec** %5, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 8
  %21 = load %struct.timespec*, %struct.timespec** %5, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.timespec*, %struct.timespec** %5, align 8
  %24 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %25 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clock_ts_to_bcd(%struct.timespec* %23, %struct.bcd_clocktime* %7, i32 %26)
  %28 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %29 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %32 = call i32 @clock_dbgprint_bcd(i32 %30, i32 %31, %struct.bcd_clocktime* %7)
  %33 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %34 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ISL12XX_24HR_FLAG, align 4
  store i32 %38, i32* %10, align 4
  br label %48

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ISL12XX_PM_FLAG, align 4
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %67, 100
  %69 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %71 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %74 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IIC_WAIT, align 4
  %77 = call i32 @iicbus_request_bus(i32 %72, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %48
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %122

81:                                               ; preds = %48
  %82 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %83 = load i32, i32* @ISL12XX_SR_REG, align 4
  %84 = call i32 @isl12xx_read1(%struct.isl12xx_softc* %82, i32 %83, i32* %11)
  store i32 %84, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %81
  %87 = load i32, i32* @ISL12XX_SR_WRTC, align 4
  %88 = load i32, i32* @ISL12XX_SR_W0C_BITS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %93 = load i32, i32* @ISL12XX_SR_REG, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @isl12xx_write1(%struct.isl12xx_softc* %92, i32 %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %86
  %98 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %99 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ISL12XX_SC_REG, align 4
  %102 = load i32, i32* @WAITFLAGS, align 4
  %103 = call i32 @iicdev_writeto(i32 %100, i32 %101, %struct.time_regs* %8, i32 24, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @ISL12XX_SR_WRTC, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %109 = load i32, i32* @ISL12XX_SR_REG, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @isl12xx_write1(%struct.isl12xx_softc* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %97, %86
  br label %113

113:                                              ; preds = %112, %81
  %114 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %115 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %118 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @iicbus_release_bus(i32 %116, i32 %119)
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %113, %79
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.isl12xx_softc* @device_get_softc(i32) #1

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @clock_ts_to_bcd(%struct.timespec*, %struct.bcd_clocktime*, i32) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @isl12xx_read1(%struct.isl12xx_softc*, i32, i32*) #1

declare dso_local i32 @isl12xx_write1(%struct.isl12xx_softc*, i32, i32) #1

declare dso_local i32 @iicdev_writeto(i32, i32, %struct.time_regs*, i32, i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
