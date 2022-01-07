; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl_pci.c_mwl_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl_pci.c_mwl_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_pci_softc = type { i32, i32, i32, i32, %struct.mwl_softc }
%struct.mwl_softc = type { i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@BS_BAR1 = common dso_local global i32 0, align 4
@BS_BAR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mwl_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwl_pci_softc*, align 8
  %4 = alloca %struct.mwl_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mwl_pci_softc* @device_get_softc(i32 %5)
  store %struct.mwl_pci_softc* %6, %struct.mwl_pci_softc** %3, align 8
  %7 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %7, i32 0, i32 4
  store %struct.mwl_softc* %8, %struct.mwl_softc** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @bus_child_present(i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %17 = call i32 @mwl_detach(%struct.mwl_softc* %16)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @bus_generic_detach(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bus_teardown_intr(i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_release_resource(i32 %28, i32 %29, i32 0, i32 %32)
  %34 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bus_dma_tag_destroy(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @SYS_RES_MEMORY, align 4
  %40 = load i32, i32* @BS_BAR1, align 4
  %41 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bus_release_resource(i32 %38, i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load i32, i32* @BS_BAR0, align 4
  %48 = load %struct.mwl_pci_softc*, %struct.mwl_pci_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mwl_pci_softc, %struct.mwl_pci_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_release_resource(i32 %45, i32 %46, i32 %47, i32 %50)
  %52 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %53 = call i32 @MWL_LOCK_DESTROY(%struct.mwl_softc* %52)
  ret i32 0
}

declare dso_local %struct.mwl_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_child_present(i32) #1

declare dso_local i32 @mwl_detach(%struct.mwl_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @MWL_LOCK_DESTROY(%struct.mwl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
