; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_gpio.c_mpc85xx_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_mpc85xx_gpio.c_mpc85xx_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc85xx_gpio_softc = type { i32*, i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't allocate memory for device output port\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't allocate memory for device input port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc85xx_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpc85xx_gpio_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mpc85xx_gpio_softc* @device_get_softc(i32 %6)
  store %struct.mpc85xx_gpio_softc* %7, %struct.mpc85xx_gpio_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %12 = call i32 @GPIO_LOCK_INIT(%struct.mpc85xx_gpio_softc* %11)
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %5, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @mpc85xx_gpio_detach(i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %67

30:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @RF_ACTIVE, align 4
  %34 = call i8* @bus_alloc_resource_any(i32 %31, i32 %32, i32* %5, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @mpc85xx_gpio_detach(i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %30
  %49 = load i32, i32* %3, align 4
  %50 = call i32* @gpiobus_attach_bus(i32 %49)
  %51 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.mpc85xx_gpio_softc*, %struct.mpc85xx_gpio_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mpc85xx_gpio_softc, %struct.mpc85xx_gpio_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @mpc85xx_gpio_detach(i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %2, align 4
  br label %67

61:                                               ; preds = %48
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ofw_bus_get_node(i32 %62)
  %64 = call i32 @OF_xref_from_node(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @OF_device_register_xref(i32 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %57, %42, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.mpc85xx_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK_INIT(%struct.mpc85xx_gpio_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mpc85xx_gpio_detach(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
