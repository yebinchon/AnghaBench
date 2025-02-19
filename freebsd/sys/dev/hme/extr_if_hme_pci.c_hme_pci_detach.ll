; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_pci.c_hme_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme_pci.c_hme_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_pci_softc = type { i32, i32, i32, %struct.hme_softc }
%struct.hme_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hme_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hme_pci_softc*, align 8
  %4 = alloca %struct.hme_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.hme_pci_softc* @device_get_softc(i32 %5)
  store %struct.hme_pci_softc* %6, %struct.hme_pci_softc** %3, align 8
  %7 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %7, i32 0, i32 3
  store %struct.hme_softc* %8, %struct.hme_softc** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bus_teardown_intr(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.hme_softc*, %struct.hme_softc** %4, align 8
  %18 = call i32 @hme_detach(%struct.hme_softc* %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rman_get_rid(i32 %23)
  %25 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bus_release_resource(i32 %19, i32 %20, i32 %24, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rman_get_rid(i32 %33)
  %35 = load %struct.hme_pci_softc*, %struct.hme_pci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.hme_pci_softc, %struct.hme_pci_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %34, i32 %37)
  %39 = load %struct.hme_softc*, %struct.hme_softc** %4, align 8
  %40 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %39, i32 0, i32 0
  %41 = call i32 @mtx_destroy(i32* %40)
  ret i32 0
}

declare dso_local %struct.hme_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @hme_detach(%struct.hme_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
