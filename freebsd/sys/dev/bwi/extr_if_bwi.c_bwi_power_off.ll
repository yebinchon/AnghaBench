; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_power_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_PCIR_GPIO_IN = common dso_local global i32 0, align 4
@BWI_PCIR_GPIO_OUT = common dso_local global i32 0, align 4
@BWI_PCIR_GPIO_ENABLE = common dso_local global i32 0, align 4
@BWI_PCIM_GPIO_PWR_ON = common dso_local global i32 0, align 4
@BWI_PCIM_GPIO_PLL_PWR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, i32)* @bwi_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_power_off(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BWI_PCIR_GPIO_IN, align 4
  %11 = call i32 @pci_read_config(i32 %9, i32 %10, i32 4)
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BWI_PCIR_GPIO_OUT, align 4
  %16 = call i32 @pci_read_config(i32 %14, i32 %15, i32 4)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BWI_PCIR_GPIO_ENABLE, align 4
  %21 = call i32 @pci_read_config(i32 %19, i32 %20, i32 4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @BWI_PCIM_GPIO_PWR_ON, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @BWI_PCIM_GPIO_PWR_ON, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @BWI_PCIM_GPIO_PLL_PWR_OFF, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @BWI_PCIM_GPIO_PLL_PWR_OFF, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BWI_PCIR_GPIO_OUT, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pci_write_config(i32 %41, i32 %42, i32 %43, i32 4)
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BWI_PCIR_GPIO_ENABLE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pci_write_config(i32 %47, i32 %48, i32 %49, i32 4)
  ret i32 0
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
