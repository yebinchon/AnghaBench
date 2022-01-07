; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_qoriq_gpio.c_qoriq_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_qoriq_gpio.c_qoriq_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qoriq_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_GPDIR = common dso_local global i32 0, align 4
@GPIO_GPODR = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @qoriq_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qoriq_gpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qoriq_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.qoriq_gpio_softc* @device_get_softc(i32 %10)
  store %struct.qoriq_gpio_softc* %11, %struct.qoriq_gpio_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @VALID_PIN(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %109

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %20 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %24 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %109

29:                                               ; preds = %17
  %30 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %31 = call i32 @GPIO_LOCK(%struct.qoriq_gpio_softc* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %38 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GPIO_GPDIR, align 4
  %41 = call i32 @bus_read_4(i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 31, %42
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %49 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GPIO_GPDIR, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @bus_write_4(i32 %50, i32 %51, i32 %52)
  br label %106

54:                                               ; preds = %29
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %61 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GPIO_GPDIR, align 4
  %64 = call i32 @bus_read_4(i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 31, %65
  %67 = shl i32 1, %66
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %71 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GPIO_GPDIR, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @bus_write_4(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %77 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @GPIO_GPODR, align 4
  %80 = call i32 @bus_read_4(i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @GPIO_PIN_OPENDRAIN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %59
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 31, %86
  %88 = shl i32 1, %87
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %98

91:                                               ; preds = %59
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 31, %92
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %91, %85
  %99 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %100 = getelementptr inbounds %struct.qoriq_gpio_softc, %struct.qoriq_gpio_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GPIO_GPODR, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @bus_write_4(i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %54
  br label %106

106:                                              ; preds = %105, %36
  %107 = load %struct.qoriq_gpio_softc*, %struct.qoriq_gpio_softc** %8, align 8
  %108 = call i32 @GPIO_UNLOCK(%struct.qoriq_gpio_softc* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %27, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.qoriq_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.qoriq_gpio_softc*) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.qoriq_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
