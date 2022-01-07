; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_gpio_softc = type { i32, i64, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"gpio mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar71xx_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar71xx_gpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ar71xx_gpio_softc* @device_get_softc(i32 %4)
  store %struct.ar71xx_gpio_softc* %5, %struct.ar71xx_gpio_softc** %3, align 8
  %6 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %6, i32 0, i32 0
  %8 = call i32 @mtx_initialized(i32* %7)
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @gpiobus_detach_bus(i32 %10)
  %12 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bus_teardown_intr(i32 %17, i64 %20, i64 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %30, %25
  %41 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %45, %40
  %56 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = call i32 @free(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %67, i32 0, i32 0
  %69 = call i32 @mtx_destroy(i32* %68)
  ret i32 0
}

declare dso_local %struct.ar71xx_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
