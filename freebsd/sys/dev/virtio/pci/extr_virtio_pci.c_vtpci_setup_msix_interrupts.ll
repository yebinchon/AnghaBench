; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_msix_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_msix_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, %struct.vtpci_interrupt*, %struct.vtpci_interrupt, i32 }
%struct.vtpci_interrupt = type { i32, i32 }

@vtpci_config_intr = common dso_local global i32 0, align 4
@VTPCI_FLAG_SHARED_MSIX = common dso_local global i32 0, align 4
@vtpci_vq_shared_intr_filter = common dso_local global i32* null, align 8
@vtpci_vq_shared_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*, i32)* @vtpci_setup_msix_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_setup_msix_interrupts(%struct.vtpci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtpci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vtpci_interrupt*, align 8
  %8 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %12, i32 0, i32 2
  store %struct.vtpci_interrupt* %13, %struct.vtpci_interrupt** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %16 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @vtpci_config_intr, align 4
  %20 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %21 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %22 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %21, i32 0, i32 0
  %23 = call i32 @bus_setup_intr(i32 %14, i32 %17, i32 %18, i32* null, i32 %19, %struct.vtpci_softc* %20, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VTPCI_FLAG_SHARED_MSIX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %36, i32 0, i32 1
  %38 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %37, align 8
  store %struct.vtpci_interrupt* %38, %struct.vtpci_interrupt** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %41 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** @vtpci_vq_shared_intr_filter, align 8
  %45 = load i32, i32* @vtpci_vq_shared_intr, align 4
  %46 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %47 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %48 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %47, i32 0, i32 0
  %49 = call i32 @bus_setup_intr(i32 %39, i32 %42, i32 %43, i32* %44, i32 %45, %struct.vtpci_softc* %46, i32* %48)
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %28
  %51 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @vtpci_setup_pervq_msix_interrupts(%struct.vtpci_softc* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %35
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %61 = call i32 @vtpci_set_host_msix_vectors(%struct.vtpci_softc* %60)
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %26
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.vtpci_softc*, i32*) #1

declare dso_local i32 @vtpci_setup_pervq_msix_interrupts(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @vtpci_set_host_msix_vectors(%struct.vtpci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
