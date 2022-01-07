; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_pervq_msix_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_pervq_msix_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, i32, %struct.vtpci_virtqueue*, %struct.vtpci_interrupt* }
%struct.vtpci_virtqueue = type { i32, i64 }
%struct.vtpci_interrupt = type { i32, i32 }

@vtpci_vq_intr_filter = common dso_local global i32 0, align 4
@vtpci_vq_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*, i32)* @vtpci_setup_pervq_msix_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_setup_pervq_msix_interrupts(%struct.vtpci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtpci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtpci_virtqueue*, align 8
  %7 = alloca %struct.vtpci_interrupt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %10, i32 0, i32 3
  %12 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %11, align 8
  store %struct.vtpci_interrupt* %12, %struct.vtpci_interrupt** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %54, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %16 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %20, i32 0, i32 2
  %22 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %22, i64 %24
  store %struct.vtpci_virtqueue* %25, %struct.vtpci_virtqueue** %6, align 8
  %26 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %6, align 8
  %27 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %54

31:                                               ; preds = %19
  %32 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %36 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @vtpci_vq_intr_filter, align 4
  %40 = load i32, i32* @vtpci_vq_intr, align 4
  %41 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %6, align 8
  %42 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %45 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %44, i32 0, i32 0
  %46 = call i32 @bus_setup_intr(i32 %34, i32 %37, i32 %38, i32 %39, i32 %40, i32 %43, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %31
  %52 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %7, align 8
  %53 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %52, i32 1
  store %struct.vtpci_interrupt* %53, %struct.vtpci_interrupt** %7, align 8
  br label %54

54:                                               ; preds = %51, %30
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %13

57:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
