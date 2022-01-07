; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_pci.c_esp_pci_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32 }
%struct.esp_pci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncr53c9x_softc*, i32)* @esp_pci_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_pci_read_reg(%struct.ncr53c9x_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp_pci_softc*, align 8
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %7 = bitcast %struct.ncr53c9x_softc* %6 to %struct.esp_pci_softc*
  store %struct.esp_pci_softc* %7, %struct.esp_pci_softc** %5, align 8
  %8 = load %struct.esp_pci_softc*, %struct.esp_pci_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @READ_ESPREG(%struct.esp_pci_softc* %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @READ_ESPREG(%struct.esp_pci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
