; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_wdog.c_ar71xx_wdog_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_wdog.c_ar71xx_wdog_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_wdog_softc = type { i32, i32, i64, i64 }

@AR71XX_RST_WDOG_CONTROL = common dso_local global i32 0, align 4
@RST_WDOG_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Previous reset was due to watchdog timeout\0A\00", align 1
@RST_WDOG_ACTION_NOACTION = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@ar71xx_wdog_watchdog_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar71xx_wdog_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_wdog_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar71xx_wdog_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ar71xx_wdog_softc* @device_get_softc(i32 %4)
  store %struct.ar71xx_wdog_softc* %5, %struct.ar71xx_wdog_softc** %3, align 8
  %6 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @AR71XX_RST_WDOG_CONTROL, align 4
  %13 = call i32 @ATH_READ_REG(i32 %12)
  %14 = load i32, i32* @RST_WDOG_LAST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @AR71XX_RST_WDOG_CONTROL, align 4
  %24 = load i32, i32* @RST_WDOG_ACTION_NOACTION, align 4
  %25 = call i32 @ATH_WRITE_REG(i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ar71xx_wdog_softc, %struct.ar71xx_wdog_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @watchdog_list, align 4
  %30 = load i32, i32* @ar71xx_wdog_watchdog_fn, align 4
  %31 = load %struct.ar71xx_wdog_softc*, %struct.ar71xx_wdog_softc** %3, align 8
  %32 = call i32 @EVENTHANDLER_REGISTER(i32 %29, i32 %30, %struct.ar71xx_wdog_softc* %31, i32 0)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @ar71xx_wdog_sysctl(i32 %33)
  ret i32 0
}

declare dso_local %struct.ar71xx_wdog_softc* @device_get_softc(i32) #1

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.ar71xx_wdog_softc*, i32) #1

declare dso_local i32 @ar71xx_wdog_sysctl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
