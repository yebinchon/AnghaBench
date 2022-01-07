; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_commit_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_gpio.c_chipc_gpio_commit_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_gpio_softc = type { i32 }
%struct.chipc_gpio_update = type { i32, i32, i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CHIPC_GPIOPD = common dso_local global i32 0, align 4
@CHIPC_GPIOPU = common dso_local global i32 0, align 4
@CHIPC_GPIOTIMEROUTMASK = common dso_local global i32 0, align 4
@CHIPC_GPIOOUT = common dso_local global i32 0, align 4
@CHIPC_GPIOOUTEN = common dso_local global i32 0, align 4
@CHIPC_GPIOCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_gpio_softc*, %struct.chipc_gpio_update*)* @chipc_gpio_commit_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_gpio_commit_update(%struct.chipc_gpio_softc* %0, %struct.chipc_gpio_update* %1) #0 {
  %3 = alloca %struct.chipc_gpio_softc*, align 8
  %4 = alloca %struct.chipc_gpio_update*, align 8
  store %struct.chipc_gpio_softc* %0, %struct.chipc_gpio_softc** %3, align 8
  store %struct.chipc_gpio_update* %1, %struct.chipc_gpio_update** %4, align 8
  %5 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @CC_GPIO_LOCK_ASSERT(%struct.chipc_gpio_softc* %5, i32 %6)
  %8 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %9 = load i32, i32* @CHIPC_GPIOPD, align 4
  %10 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %4, align 8
  %11 = getelementptr inbounds %struct.chipc_gpio_update, %struct.chipc_gpio_update* %10, i32 0, i32 5
  %12 = call i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc* %8, i32 %9, i32* %11)
  %13 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %14 = load i32, i32* @CHIPC_GPIOPU, align 4
  %15 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %4, align 8
  %16 = getelementptr inbounds %struct.chipc_gpio_update, %struct.chipc_gpio_update* %15, i32 0, i32 4
  %17 = call i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc* %13, i32 %14, i32* %16)
  %18 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %19 = load i32, i32* @CHIPC_GPIOTIMEROUTMASK, align 4
  %20 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %4, align 8
  %21 = getelementptr inbounds %struct.chipc_gpio_update, %struct.chipc_gpio_update* %20, i32 0, i32 3
  %22 = call i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc* %18, i32 %19, i32* %21)
  %23 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %24 = load i32, i32* @CHIPC_GPIOOUT, align 4
  %25 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %4, align 8
  %26 = getelementptr inbounds %struct.chipc_gpio_update, %struct.chipc_gpio_update* %25, i32 0, i32 2
  %27 = call i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc* %23, i32 %24, i32* %26)
  %28 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %29 = load i32, i32* @CHIPC_GPIOOUTEN, align 4
  %30 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %4, align 8
  %31 = getelementptr inbounds %struct.chipc_gpio_update, %struct.chipc_gpio_update* %30, i32 0, i32 1
  %32 = call i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc* %28, i32 %29, i32* %31)
  %33 = load %struct.chipc_gpio_softc*, %struct.chipc_gpio_softc** %3, align 8
  %34 = load i32, i32* @CHIPC_GPIOCTRL, align 4
  %35 = load %struct.chipc_gpio_update*, %struct.chipc_gpio_update** %4, align 8
  %36 = getelementptr inbounds %struct.chipc_gpio_update, %struct.chipc_gpio_update* %35, i32 0, i32 0
  %37 = call i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc* %33, i32 %34, i32* %36)
  ret i32 0
}

declare dso_local i32 @CC_GPIO_LOCK_ASSERT(%struct.chipc_gpio_softc*, i32) #1

declare dso_local i32 @chipc_gpio_commit_reg(%struct.chipc_gpio_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
