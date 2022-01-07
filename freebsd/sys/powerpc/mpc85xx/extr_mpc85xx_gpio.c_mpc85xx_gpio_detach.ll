; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_gpio.c_mpc85xx_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_gpio.c_mpc85xx_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc85xx_gpio_softc = type { i32*, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc85xx_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc85xx_gpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mpc85xx_gpio_softc* @device_get_softc(i32 %4)
  store %struct.mpc85xx_gpio_softc* %5, %struct.mpc85xx_gpio_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @gpiobus_detach_bus(i32 %6)
  %8 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @rman_get_rid(i32* %17)
  %19 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @bus_release_resource(i32 %13, i32 %14, i32 %18, i32* %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @rman_get_rid(i32* %33)
  %35 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %34, i32* %37)
  br label %39

39:                                               ; preds = %28, %23
  %40 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %3, align 8
  %41 = call i32 @GPIO_LOCK_DESTROY(%struct.mpc85xx_gpio_softc* %40)
  ret i32 0
}

declare dso_local %struct.mpc85xx_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @GPIO_LOCK_DESTROY(%struct.mpc85xx_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
