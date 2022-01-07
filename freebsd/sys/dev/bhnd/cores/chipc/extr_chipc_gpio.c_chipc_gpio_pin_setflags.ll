; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }
%struct.chipc_gpio_update = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @chipc_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.chipc_gpio_softc*, align 8
  %9 = alloca %struct.chipc_gpio_update, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.chipc_gpio_softc* @device_get_softc(i32 %11)
  store %struct.chipc_gpio_softc* %12, %struct.chipc_gpio_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CC_GPIO_VALID_PIN(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = call i32 @memset(%struct.chipc_gpio_update* %9, i32 0, i32 4)
  %20 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @chipc_gpio_pin_update(%struct.chipc_gpio_softc* %20, %struct.chipc_gpio_update* %9, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %18
  %28 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %29 = call i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc* %28)
  %30 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %31 = call i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc* %30, %struct.chipc_gpio_update* %9)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %8, align 8
  %33 = call i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %25, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.chipc_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @CC_GPIO_VALID_PIN(i32) #1

declare dso_local i32 @memset(%struct.chipc_gpio_update*, i32, i32) #1

declare dso_local i32 @chipc_gpio_pin_update(%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*, i32, i32) #1

declare dso_local i32 @CC_GPIO_LOCK(%struct.chipc_gpio_softc*) #1

declare dso_local i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*) #1

declare dso_local i32 @CC_GPIO_UNLOCK(%struct.chipc_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
