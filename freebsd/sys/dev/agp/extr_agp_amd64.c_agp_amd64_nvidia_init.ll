; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_nvidia_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_nvidia_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32 }

@AGP_AMD64_NVIDIA_0_APBASE = common dso_local global i32 0, align 4
@AGP_AMD64_NVIDIA_1_APBASE1 = common dso_local global i32 0, align 4
@AGP_AMD64_NVIDIA_1_APBASE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_amd64_nvidia_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_amd64_nvidia_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_amd64_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.agp_amd64_softc* @device_get_softc(i32 %4)
  store %struct.agp_amd64_softc* %5, %struct.agp_amd64_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @agp_amd64_apbase_fixup(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @AGP_AMD64_NVIDIA_0_APBASE, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AGP_AMD64_NVIDIA_0_APBASE, align 4
  %12 = call i32 @pci_read_config(i32 %10, i32 %11, i32 4)
  %13 = and i32 %12, 15
  %14 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %15 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = call i32 @pci_write_config(i32 %8, i32 %9, i32 %17, i32 4)
  %19 = load i32, i32* @AGP_AMD64_NVIDIA_1_APBASE1, align 4
  %20 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %21 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_cfgregwrite(i32 0, i32 11, i32 0, i32 %19, i32 %22, i32 4)
  %24 = load i32, i32* @AGP_AMD64_NVIDIA_1_APBASE2, align 4
  %25 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %26 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_cfgregwrite(i32 0, i32 11, i32 0, i32 %24, i32 %27, i32 4)
  ret void
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_amd64_apbase_fixup(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
