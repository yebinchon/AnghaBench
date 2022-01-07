; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_intr_msix_pervq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_alloc_intr_msix_pervq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@vtpci_disable_msix = common dso_local global i64 0, align 8
@VTPCI_FLAG_NO_MSIX = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@VTPCI_FLAG_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*)* @vtpci_alloc_intr_msix_pervq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_alloc_intr_msix_pervq(%struct.vtpci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %3, align 8
  %7 = load i64, i64* @vtpci_disable_msix, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VTPCI_FLAG_NO_MSIX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @ENOTSUP, align 4
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @vtpci_alloc_msix(%struct.vtpci_softc* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @VTPCI_FLAG_MSIX, align 4
  %52 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %53 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %48, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @vtpci_alloc_msix(%struct.vtpci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
