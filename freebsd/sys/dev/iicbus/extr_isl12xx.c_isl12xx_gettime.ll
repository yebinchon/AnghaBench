; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_isl12xx.c_isl12xx_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_isl12xx.c_isl12xx_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.isl12xx_softc = type { i32, i32, i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32 }

@IIC_WAIT = common dso_local global i32 0, align 4
@ISL12XX_SR_REG = common dso_local global i32 0, align 4
@ISL12XX_SC_REG = common dso_local global i32 0, align 4
@WAITFLAGS = common dso_local global i32 0, align 4
@ISL12XX_SR_RTCF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISL12XX_24HR_FLAG = common dso_local global i32 0, align 4
@ISL12xx_24HR_MASK = common dso_local global i32 0, align 4
@ISL12xx_12HR_MASK = common dso_local global i32 0, align 4
@ISL12XX_PM_FLAG = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @isl12xx_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12xx_gettime(i32 %0, %struct.timespec* %1) #0 {
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
  %14 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %15 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %18 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IIC_WAIT, align 4
  %21 = call i32 @iicbus_request_bus(i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %2
  %24 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %25 = load i32, i32* @ISL12XX_SR_REG, align 4
  %26 = call i32 @isl12xx_read1(%struct.isl12xx_softc* %24, i32 %25, i32* %11)
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %30 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ISL12XX_SC_REG, align 4
  %33 = load i32, i32* @WAITFLAGS, align 4
  %34 = call i32 @iicdev_readfrom(i32 %31, i32 %32, %struct.time_regs* %8, i32 24, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %37 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %40 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iicbus_release_bus(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %35, %2
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %104

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ISL12XX_SR_RTCF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %104

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ISL12XX_24HR_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @ISL12xx_24HR_MASK, align 4
  store i32 %62, i32* %10, align 4
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %65 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* @ISL12xx_12HR_MASK, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 6
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 5
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %76, %77
  %79 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 4
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ISL12XX_PM_FLAG, align 4
  %92 = and i32 %90, %91
  %93 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %95 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CLOCK_DBG_READ, align 4
  %98 = call i32 @clock_dbgprint_bcd(i32 %96, i32 %97, %struct.bcd_clocktime* %7)
  %99 = load %struct.timespec*, %struct.timespec** %5, align 8
  %100 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %6, align 8
  %101 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %7, %struct.timespec* %99, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %67, %53, %46
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.isl12xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @isl12xx_read1(%struct.isl12xx_softc*, i32, i32*) #1

declare dso_local i32 @iicdev_readfrom(i32, i32, %struct.time_regs*, i32, i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
