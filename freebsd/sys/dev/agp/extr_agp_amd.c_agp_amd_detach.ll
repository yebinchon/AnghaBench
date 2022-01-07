; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd.c_agp_amd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd_softc = type { i32, i32, i32 }

@AGP_AMD751_STATUS = common dso_local global i32 0, align 4
@AGP_AMD751_STATUS_GCE = common dso_local global i32 0, align 4
@AGP_AMD751_MODECTRL = common dso_local global i32 0, align 4
@AGP_AMD751_ATTBASE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@AGP_AMD751_REGISTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_amd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_amd_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.agp_amd_softc* @device_get_softc(i32 %4)
  store %struct.agp_amd_softc* %5, %struct.agp_amd_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @agp_free_cdev(i32 %6)
  %8 = load i32, i32* @AGP_AMD751_STATUS, align 4
  %9 = load i32, i32* @AGP_AMD751_STATUS, align 4
  %10 = call i32 @READ2(i32 %9)
  %11 = load i32, i32* @AGP_AMD751_STATUS_GCE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @WRITE2(i32 %8, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @AGP_AMD751_MODECTRL, align 4
  %17 = call i32 @pci_write_config(i32 %15, i32 %16, i32 0, i32 1)
  %18 = load i32, i32* @AGP_AMD751_ATTBASE, align 4
  %19 = call i32 @WRITE4(i32 %18, i32 0)
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AGP_SET_APERTURE(i32 %20, i32 %23)
  %25 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @agp_amd_free_gatt(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @agp_free_res(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @AGP_AMD751_REGISTERS, align 4
  %34 = load %struct.agp_amd_softc*, %struct.agp_amd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.agp_amd_softc, %struct.agp_amd_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 %33, i32 %36)
  ret i32 0
}

declare dso_local %struct.agp_amd_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @WRITE2(i32, i32) #1

declare dso_local i32 @READ2(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @WRITE4(i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_amd_free_gatt(i32) #1

declare dso_local i32 @agp_free_res(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
