; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_config_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_config_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }
%struct.chipc_gpio_update = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64*)* @chipc_gpio_pin_config_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_config_32(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.chipc_gpio_softc*, align 8
  %11 = alloca %struct.chipc_gpio_update, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.chipc_gpio_softc* @device_get_softc(i32 %16)
  store %struct.chipc_gpio_softc* %17, %struct.chipc_gpio_softc** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @CC_GPIO_VALID_PINS(i64 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %65

24:                                               ; preds = %4
  %25 = call i32 @memset(%struct.chipc_gpio_update* %11, i32 0, i32 4)
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %54, %24
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %14, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %40 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %41 = or i64 %39, %40
  %42 = and i64 %38, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %54

45:                                               ; preds = %30
  %46 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %10, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @chipc_gpio_pin_update(%struct.chipc_gpio_softc* %46, %struct.chipc_gpio_update* %11, i64 %47, i64 %48)
  store i32 %49, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %65

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %13, align 8
  br label %26

57:                                               ; preds = %26
  %58 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %10, align 8
  %59 = call i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc* %58)
  %60 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %10, align 8
  %61 = call i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc* %60, %struct.chipc_gpio_update* %11)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %10, align 8
  %63 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %51, %22
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @CC_GPIO_VALID_PINS(i64, i64) #1

declare dso_local i32 @memset(%struct.chipc_gpio_update*, i32, i32) #1

declare dso_local i32 @chipc_gpio_pin_update(%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*, i64, i64) #1

declare dso_local i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*) #1

declare dso_local i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
