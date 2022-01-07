; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_epic.c_epic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_epic.c_epic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epic_softc = type { i8*, i8*, i32 }

@epic_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"version 0x%x\0A\00", align 1
@EPIC_FW_VERSION = common dso_local global i32 0, align 4
@epic_led_alert = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"alert\00", align 1
@epic_led_power = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @epic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.epic_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.epic_softc* @device_get_softc(i32 %5)
  store %struct.epic_softc* %6, %struct.epic_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @epic_res_spec, align 4
  %9 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %10 = getelementptr inbounds %struct.epic_softc, %struct.epic_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @bus_alloc_resources(i32 %7, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @epic_res_spec, align 4
  %19 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.epic_softc, %struct.epic_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bus_release_resources(i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %26 = call i32 @EPIC_LOCK_INIT(%struct.epic_softc* %25)
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %32 = load i32, i32* @EPIC_FW_VERSION, align 4
  %33 = call i32 @EPIC_FW_LED_READ(%struct.epic_softc* %31, i32 %32)
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* @epic_led_alert, align 4
  %37 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %38 = call i8* @led_create(i32 %36, %struct.epic_softc* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %40 = getelementptr inbounds %struct.epic_softc, %struct.epic_softc* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @epic_led_power, align 4
  %42 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %43 = call i8* @led_create(i32 %41, %struct.epic_softc* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.epic_softc*, %struct.epic_softc** %4, align 8
  %45 = getelementptr inbounds %struct.epic_softc, %struct.epic_softc* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.epic_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @EPIC_LOCK_INIT(%struct.epic_softc*) #1

declare dso_local i32 @EPIC_FW_LED_READ(%struct.epic_softc*, i32) #1

declare dso_local i8* @led_create(i32, %struct.epic_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
