; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @octeon_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.octeon_gpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.octeon_gpio_softc* @device_get_softc(i32 %11)
  store %struct.octeon_gpio_softc* %12, %struct.octeon_gpio_softc** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %16 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %21 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %38 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %57

43:                                               ; preds = %35
  %44 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %45 = call i32 @GPIO_LOCK(%struct.octeon_gpio_softc* %44)
  %46 = call i32 (...) @cvmx_gpio_read()
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %56 = call i32 @GPIO_UNLOCK(%struct.octeon_gpio_softc* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %43, %41
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.octeon_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.octeon_gpio_softc*) #1

declare dso_local i32 @cvmx_gpio_read(...) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.octeon_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
