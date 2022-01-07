; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_isl12xx.c_isl12xx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_isl12xx.c_isl12xx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl12xx_softc = type { i32, i32 }

@ISL12XX_SR_REG = common dso_local global i32 0, align 4
@ISL12XX_SR_RTCF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RTC clock stopped; check battery\0A\00", align 1
@CLOCKF_SETTIME_NO_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @isl12xx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isl12xx_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.isl12xx_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.isl12xx_softc*
  store %struct.isl12xx_softc* %6, %struct.isl12xx_softc** %3, align 8
  %7 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %3, align 8
  %8 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %7, i32 0, i32 1
  %9 = call i32 @config_intrhook_disestablish(i32* %8)
  %10 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %3, align 8
  %11 = load i32, i32* @ISL12XX_SR_REG, align 4
  %12 = call i32 @isl12xx_read1(%struct.isl12xx_softc* %10, i32 %11, i32* %4)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ISL12XX_SR_RTCF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %3, align 8
  %19 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %3, align 8
  %24 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CLOCKF_SETTIME_NO_ADJ, align 4
  %27 = call i32 @clock_register_flags(i32 %25, i32 1000000, i32 %26)
  %28 = load %struct.isl12xx_softc*, %struct.isl12xx_softc** %3, align 8
  %29 = getelementptr inbounds %struct.isl12xx_softc, %struct.isl12xx_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clock_schedule(i32 %30, i32 1)
  ret void
}

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @isl12xx_read1(%struct.isl12xx_softc*, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clock_register_flags(i32, i32, i32) #1

declare dso_local i32 @clock_schedule(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
