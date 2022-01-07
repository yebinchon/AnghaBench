; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_rtc8583.c_rtc8583_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_rtc8583.c_rtc8583_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.rtc8583_softc = type { i32, i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.time_regs = type { i32, i32, i32, i32, i32, i32 }

@RTC8583_SC_REG = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@RTC8583_USERSRAM_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @rtc8583_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc8583_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.rtc8583_softc*, align 8
  %7 = alloca %struct.bcd_clocktime, align 4
  %8 = alloca %struct.time_regs, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.rtc8583_softc* @device_get_softc(i32 %13)
  store %struct.rtc8583_softc* %14, %struct.rtc8583_softc** %6, align 8
  %15 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %16 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTC8583_SC_REG, align 4
  %19 = load i32, i32* @IIC_WAIT, align 4
  %20 = call i32 @iicdev_readfrom(i32 %17, i32 %18, %struct.time_regs* %8, i32 24, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %3, align 4
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %9, align 4
  %28 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %29 = load i32, i32* @RTC8583_USERSRAM_REG, align 4
  %30 = call i32 @rtc8583_read1(%struct.rtc8583_softc* %28, i32 %29, i32* %11)
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 3
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %50 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %53 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IIC_WAIT, align 4
  %56 = call i32 @iicbus_request_bus(i32 %51, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %3, align 4
  br label %116

60:                                               ; preds = %48
  %61 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %62 = load i32, i32* @RTC8583_USERSRAM_REG, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @rtc8583_write1(%struct.rtc8583_softc* %61, i32 %62, i32 %63)
  %65 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %66 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %69 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iicbus_release_bus(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %60, %24
  %73 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @validbcd(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %3, align 4
  br label %116

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bcd2bin(i32 %81)
  %83 = mul nsw i32 %82, 10
  %84 = mul nsw i32 %83, 1000
  %85 = mul nsw i32 %84, 1000
  %86 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 6
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 5
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 63
  %96 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 63
  %100 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.time_regs, %struct.time_regs* %8, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 31
  %104 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 3
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = srem i32 %105, 100
  %107 = call i32 @bin2bcd(i32 %106)
  %108 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %6, align 8
  %110 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CLOCK_DBG_READ, align 4
  %113 = call i32 @clock_dbgprint_bcd(i32 %111, i32 %112, %struct.bcd_clocktime* %7)
  %114 = load %struct.timespec*, %struct.timespec** %5, align 8
  %115 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %7, %struct.timespec* %114, i32 0)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %79, %77, %58, %22
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.rtc8583_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicdev_readfrom(i32, i32, %struct.time_regs*, i32, i32) #1

declare dso_local i32 @rtc8583_read1(%struct.rtc8583_softc*, i32, i32*) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @rtc8583_write1(%struct.rtc8583_softc*, i32, i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @validbcd(i32) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
