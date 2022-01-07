; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_power_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_PCIR_GPIO_IN = common dso_local global i32 0, align 4
@BWI_PCIM_GPIO_PWR_ON = common dso_local global i32 0, align 4
@BWI_PCIR_GPIO_OUT = common dso_local global i32 0, align 4
@BWI_PCIR_GPIO_ENABLE = common dso_local global i32 0, align 4
@BWI_PCIM_GPIO_PLL_PWR_OFF = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_STABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32)* @bwi_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_power_on(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BWI_PCIR_GPIO_IN, align 4
  %13 = call i32 @pci_read_config(i32 %11, i32 %12, i32 4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BWI_PCIM_GPIO_PWR_ON, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BWI_PCIR_GPIO_OUT, align 4
  %24 = call i32 @pci_read_config(i32 %22, i32 %23, i32 4)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BWI_PCIR_GPIO_ENABLE, align 4
  %29 = call i32 @pci_read_config(i32 %27, i32 %28, i32 4)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @BWI_PCIM_GPIO_PWR_ON, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @BWI_PCIM_GPIO_PWR_ON, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load i32, i32* @BWI_PCIM_GPIO_PLL_PWR_OFF, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @BWI_PCIM_GPIO_PLL_PWR_OFF, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38, %19
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BWI_PCIR_GPIO_OUT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pci_write_config(i32 %48, i32 %49, i32 %50, i32 4)
  %52 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %53 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BWI_PCIR_GPIO_ENABLE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pci_write_config(i32 %54, i32 %55, i32 %56, i32 4)
  %58 = call i32 @DELAY(i32 1000)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load i32, i32* @BWI_PCIM_GPIO_PLL_PWR_OFF, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BWI_PCIR_GPIO_OUT, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @pci_write_config(i32 %68, i32 %69, i32 %70, i32 4)
  %72 = call i32 @DELAY(i32 5000)
  br label %73

73:                                               ; preds = %61, %45
  br label %74

74:                                               ; preds = %73, %18
  %75 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCIR_STATUS, align 4
  %79 = call i32 @pci_read_config(i32 %77, i32 %78, i32 2)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @PCIM_STATUS_STABORT, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %85 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PCIR_STATUS, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @pci_write_config(i32 %86, i32 %87, i32 %88, i32 2)
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
