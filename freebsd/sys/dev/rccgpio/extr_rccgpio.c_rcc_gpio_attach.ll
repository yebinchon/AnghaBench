; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rccgpio/extr_rccgpio.c_rcc_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.rcc_gpio_softc = type { i32, i32, i32*, i64, i32*, i32, i32, i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rcc-gpio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@rcc_pins = common dso_local global %struct.TYPE_3__* null, align 8
@RCC_GPIO_USE_SEL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@RCC_GPIO_IO_SEL = common dso_local global i32 0, align 4
@RCC_GPIO_GP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rcc_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcc_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcc_gpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rcc_gpio_softc* @device_get_softc(i32 %6)
  store %struct.rcc_gpio_softc* %7, %struct.rcc_gpio_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %10 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_IOPORT, align 4
  %15 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %16 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %15, i32 0, i32 3
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i64* %16, i32 %17)
  %19 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %20 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %22 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %129

29:                                               ; preds = %1
  %30 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %31 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rman_get_bustag(i32* %32)
  %34 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %35 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %37 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @rman_get_bushandle(i32* %38)
  %40 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %41 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %43 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %42, i32 0, i32 1
  %44 = load i32, i32* @MTX_DEF, align 4
  %45 = call i32 @mtx_init(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rcc_pins, align 8
  %47 = call i32 @nitems(%struct.TYPE_3__* %46)
  %48 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %49 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %96, %29
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %53 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %50
  %57 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %58 = load i32, i32* @RCC_GPIO_USE_SEL, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rcc_pins, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rcc_gpio_modify_bits(%struct.rcc_gpio_softc* %57, i32 %58, i32 0, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rcc_pins, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %56
  %76 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %77 = load i32, i32* @RCC_GPIO_IO_SEL, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rcc_pins, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rcc_gpio_modify_bits(%struct.rcc_gpio_softc* %76, i32 %77, i32 %83, i32 0)
  br label %95

85:                                               ; preds = %56
  %86 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %87 = load i32, i32* @RCC_GPIO_IO_SEL, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rcc_pins, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rcc_gpio_modify_bits(%struct.rcc_gpio_softc* %86, i32 %87, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %85, %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %50

99:                                               ; preds = %50
  %100 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %101 = load i32, i32* @RCC_GPIO_GP_LVL, align 4
  %102 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %103 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @RCC_WRITE(%struct.rcc_gpio_softc* %100, i32 %101, i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32* @gpiobus_attach_bus(i32 %106)
  %108 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %109 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %108, i32 0, i32 4
  store i32* %107, i32** %109, align 8
  %110 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %111 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %99
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @SYS_RES_IOPORT, align 4
  %117 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %118 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %121 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @bus_release_resource(i32 %115, i32 %116, i64 %119, i32* %122)
  %124 = load %struct.rcc_gpio_softc*, %struct.rcc_gpio_softc** %5, align 8
  %125 = getelementptr inbounds %struct.rcc_gpio_softc, %struct.rcc_gpio_softc* %124, i32 0, i32 1
  %126 = call i32 @mtx_destroy(i32* %125)
  %127 = load i32, i32* @ENXIO, align 4
  store i32 %127, i32* %2, align 4
  br label %129

128:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %114, %25
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.rcc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @rcc_gpio_modify_bits(%struct.rcc_gpio_softc*, i32, i32, i32) #1

declare dso_local i32 @RCC_WRITE(%struct.rcc_gpio_softc*, i32, i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
