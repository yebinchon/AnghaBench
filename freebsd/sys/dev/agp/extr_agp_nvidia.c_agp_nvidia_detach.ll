; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_nvidia_softc = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AGP_NVIDIA_0_APSIZE = common dso_local global i32 0, align 4
@AGP_NVIDIA_2_GARTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_nvidia_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_nvidia_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_nvidia_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_nvidia_softc* @device_get_softc(i32 %5)
  store %struct.agp_nvidia_softc* %6, %struct.agp_nvidia_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @agp_free_cdev(i32 %7)
  %9 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %10 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %13 = call i32 @pci_read_config(i32 %11, i32 %12, i32 4)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %15 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AGP_NVIDIA_0_APSIZE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -257
  %20 = call i32 @pci_write_config(i32 %16, i32 %17, i32 %19, i32 4)
  %21 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %22 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AGP_NVIDIA_2_GARTCTRL, align 4
  %25 = call i32 @pci_read_config(i32 %23, i32 %24, i32 4)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %27 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AGP_NVIDIA_2_GARTCTRL, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, -18
  %32 = call i32 @pci_write_config(i32 %28, i32 %29, i32 %31, i32 4)
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %35 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AGP_SET_APERTURE(i32 %33, i32 %36)
  %38 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %39 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rman_get_start(i32 %41)
  %43 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %44 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nvidia_init_iorr(i32 %42, i32 %45)
  %47 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %48 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @agp_free_gatt(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @agp_free_res(i32 %51)
  ret i32 0
}

declare dso_local %struct.agp_nvidia_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @nvidia_init_iorr(i32, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @agp_free_gatt(i32) #1

declare dso_local i32 @agp_free_res(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
