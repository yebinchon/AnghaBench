; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_enable_ari.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_enable_ari.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32, i32 }

@PCIER_DEVICE_CTL2 = common dso_local global i64 0, align 8
@PCIEM_CTL2_ARI = common dso_local global i64 0, align 8
@PCIB_ENABLE_ARI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcib_softc*, i64)* @pcib_enable_ari to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_enable_ari(%struct.pcib_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.pcib_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pcib_softc* %0, %struct.pcib_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %7 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PCIER_DEVICE_CTL2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @pci_read_config(i32 %8, i64 %11, i32 4)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @PCIEM_CTL2_ARI, align 8
  %14 = load i64, i64* %5, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PCIER_DEVICE_CTL2, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @pci_write_config(i32 %18, i64 %21, i64 %22, i32 4)
  %24 = load i32, i32* @PCIB_ENABLE_ARI, align 4
  %25 = load %struct.pcib_softc*, %struct.pcib_softc** %3, align 8
  %26 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
