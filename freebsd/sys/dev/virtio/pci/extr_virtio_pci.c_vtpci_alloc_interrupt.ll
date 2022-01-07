; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32 }
%struct.vtpci_interrupt = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*, i32, i32, %struct.vtpci_interrupt*)* @vtpci_alloc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_alloc_interrupt(%struct.vtpci_softc* %0, i32 %1, i32 %2, %struct.vtpci_interrupt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtpci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vtpci_interrupt*, align 8
  %10 = alloca %struct.resource*, align 8
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vtpci_interrupt* %3, %struct.vtpci_interrupt** %9, align 8
  %11 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %12 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SYS_RES_IRQ, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.resource* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %7, i32 %15)
  store %struct.resource* %16, %struct.resource** %10, align 8
  %17 = load %struct.resource*, %struct.resource** %10, align 8
  %18 = icmp eq %struct.resource* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %9, align 8
  %24 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %23, i32 0, i32 1
  store %struct.resource* %22, %struct.resource** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %9, align 8
  %27 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
