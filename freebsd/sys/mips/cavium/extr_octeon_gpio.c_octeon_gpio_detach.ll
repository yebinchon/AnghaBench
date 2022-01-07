; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_gpio_softc = type { i32, i64*, i32*, i64* }

@.str = private unnamed_addr constant [27 x i8] c"gpio mutex not initialized\00", align 1
@OCTEON_GPIO_IRQS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octeon_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_gpio_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.octeon_gpio_softc* @device_get_softc(i32 %5)
  store %struct.octeon_gpio_softc* %6, %struct.octeon_gpio_softc** %3, align 8
  %7 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %69, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @OCTEON_GPIO_IRQS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %16, i32 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bus_teardown_intr(i32 %25, i64 %32, i64 %39)
  br label %41

41:                                               ; preds = %24, %15
  %42 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %43 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %41
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SYS_RES_IRQ, align 4
  %53 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %54 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %61 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 %59, i64 %66)
  br label %68

68:                                               ; preds = %50, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %11

72:                                               ; preds = %11
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @gpiobus_detach_bus(i32 %73)
  %75 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %3, align 8
  %76 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %75, i32 0, i32 0
  %77 = call i32 @mtx_destroy(i32* %76)
  ret i32 0
}

declare dso_local %struct.octeon_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
