; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_legacy_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_legacy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, %struct.vtpci_virtqueue* }
%struct.vtpci_virtqueue = type { i64, i32 }

@VIRTIO_PCI_ISR = common dso_local global i32 0, align 4
@VIRTIO_PCI_ISR_CONFIG = common dso_local global i32 0, align 4
@VIRTIO_PCI_ISR_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtpci_legacy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_legacy_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca %struct.vtpci_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vtpci_softc*
  store %struct.vtpci_softc* %8, %struct.vtpci_softc** %3, align 8
  %9 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %9, i32 0, i32 1
  %11 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %10, align 8
  %12 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %11, i64 0
  store %struct.vtpci_virtqueue* %12, %struct.vtpci_virtqueue** %4, align 8
  %13 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %14 = load i32, i32* @VIRTIO_PCI_ISR, align 4
  %15 = call i32 @vtpci_read_config_1(%struct.vtpci_softc* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VIRTIO_PCI_ISR_CONFIG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %22 = call i32 @vtpci_config_intr(%struct.vtpci_softc* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @VIRTIO_PCI_ISR_INTR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %37 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %42 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @virtqueue_intr(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %50 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %49, i32 1
  store %struct.vtpci_virtqueue* %50, %struct.vtpci_virtqueue** %4, align 8
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %23
  ret void
}

declare dso_local i32 @vtpci_read_config_1(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @vtpci_config_intr(%struct.vtpci_softc*) #1

declare dso_local i32 @virtqueue_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
