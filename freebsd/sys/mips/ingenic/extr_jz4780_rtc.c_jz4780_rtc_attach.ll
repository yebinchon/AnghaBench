; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_rtc.c_jz4780_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_rtc_softc = type { i32, i32 }

@jz4780_rtc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@JZ_HSPR = common dso_local global i32 0, align 4
@JZ_RTSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to write RTC registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_rtc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.jz4780_rtc_softc* @device_get_softc(i32 %7)
  store %struct.jz4780_rtc_softc* %8, %struct.jz4780_rtc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.jz4780_rtc_softc, %struct.jz4780_rtc_softc* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @jz4780_rtc_spec, align 4
  %14 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.jz4780_rtc_softc, %struct.jz4780_rtc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @bus_alloc_resources(i32 %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %4, align 8
  %25 = load i32, i32* @JZ_HSPR, align 4
  %26 = call i32 @CSR_READ(%struct.jz4780_rtc_softc* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 305419896
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %4, align 8
  %31 = load i32, i32* @JZ_HSPR, align 4
  %32 = call i32 @jz4780_rtc_write(%struct.jz4780_rtc_softc* %30, i32 %31, i32 305419896)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.jz4780_rtc_softc*, %struct.jz4780_rtc_softc** %4, align 8
  %37 = load i32, i32* @JZ_RTSR, align 4
  %38 = call i32 @jz4780_rtc_write(%struct.jz4780_rtc_softc* %36, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @jz4780_rtc_detach(i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %23
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @clock_register(i32 %50, i32 1000000)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %42, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.jz4780_rtc_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_READ(%struct.jz4780_rtc_softc*, i32) #1

declare dso_local i32 @jz4780_rtc_write(%struct.jz4780_rtc_softc*, i32, i32) #1

declare dso_local i32 @jz4780_rtc_detach(i32) #1

declare dso_local i32 @clock_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
