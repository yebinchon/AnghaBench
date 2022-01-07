; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @octeon_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.octeon_gpio_softc* @device_get_softc(i32 %9)
  store %struct.octeon_gpio_softc* %10, %struct.octeon_gpio_softc** %8, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %14 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %19 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %36 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %61

41:                                               ; preds = %33
  %42 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %43 = call i32 @GPIO_LOCK(%struct.octeon_gpio_softc* %42)
  %44 = call i32 (...) @cvmx_gpio_read()
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 1, %51
  %53 = call i32 @cvmx_gpio_clear(i32 %52)
  br label %58

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = shl i32 1, %55
  %57 = call i32 @cvmx_gpio_set(i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %8, align 8
  %60 = call i32 @GPIO_UNLOCK(%struct.octeon_gpio_softc* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.octeon_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.octeon_gpio_softc*) #1

declare dso_local i32 @cvmx_gpio_read(...) #1

declare dso_local i32 @cvmx_gpio_clear(i32) #1

declare dso_local i32 @cvmx_gpio_set(i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.octeon_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
