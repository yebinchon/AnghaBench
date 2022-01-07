; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INVIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_gpio_softc*, %struct.gpio_pin*, i32)* @octeon_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_gpio_pin_configure(%struct.octeon_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.octeon_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store %struct.octeon_gpio_softc* %0, %struct.octeon_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %10 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %14 = call i32 @GPIO_LOCK(%struct.octeon_gpio_softc* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %17 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %3
  %22 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %23 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CVMX_GPIO_BIT_CFGX(i32 %24)
  %26 = call i32 @cvmx_read_csr(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %29 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %33 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %21
  %41 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %42 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %56

48:                                               ; preds = %21
  %49 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %50 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %51 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %40
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %67

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %69 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CVMX_GPIO_BIT_CFGX(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cvmx_write_csr(i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %67, %3
  %76 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %77 = call i32 @GPIO_UNLOCK(%struct.octeon_gpio_softc* %76)
  ret void
}

declare dso_local i32 @GPIO_LOCK(%struct.octeon_gpio_softc*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GPIO_BIT_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.octeon_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
