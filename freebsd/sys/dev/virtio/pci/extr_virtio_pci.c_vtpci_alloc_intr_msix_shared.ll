; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_intr_msix_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_intr_msix_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32 }

@vtpci_disable_msix = common dso_local global i64 0, align 8
@VTPCI_FLAG_NO_MSIX = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@VTPCI_FLAG_MSIX = common dso_local global i32 0, align 4
@VTPCI_FLAG_SHARED_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*)* @vtpci_alloc_intr_msix_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_alloc_intr_msix_shared(%struct.vtpci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %3, align 8
  %5 = load i64, i64* @vtpci_disable_msix, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VTPCI_FLAG_NO_MSIX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7, %1
  %15 = load i32, i32* @ENOTSUP, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %7
  %17 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %18 = call i32 @vtpci_alloc_msix(%struct.vtpci_softc* %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load i32, i32* @VTPCI_FLAG_MSIX, align 4
  %25 = load i32, i32* @VTPCI_FLAG_SHARED_MSIX, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %21, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @vtpci_alloc_msix(%struct.vtpci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
