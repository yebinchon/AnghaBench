; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.h_vq_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.h_vq_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_softc = type { i32, i32 }
%struct.vqueue_info = type { i32 }

@VTCFG_ISR_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_softc*, %struct.vqueue_info*)* @vq_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vq_interrupt(%struct.virtio_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.virtio_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  store %struct.virtio_softc* %0, %struct.virtio_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %5 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %6 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @pci_msix_enabled(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %15 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_generate_msix(i32 %13, i32 %16)
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %20 = call i32 @VS_LOCK(%struct.virtio_softc* %19)
  %21 = load i32, i32* @VTCFG_ISR_QUEUES, align 4
  %22 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_generate_msi(i32 %28, i32 0)
  %30 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_lintr_assert(i32 %32)
  %34 = load %struct.virtio_softc*, %struct.virtio_softc** %3, align 8
  %35 = call i32 @VS_UNLOCK(%struct.virtio_softc* %34)
  br label %36

36:                                               ; preds = %18, %10
  ret void
}

declare dso_local i64 @pci_msix_enabled(i32) #1

declare dso_local i32 @pci_generate_msix(i32, i32) #1

declare dso_local i32 @VS_LOCK(%struct.virtio_softc*) #1

declare dso_local i32 @pci_generate_msi(i32, i32) #1

declare dso_local i32 @pci_lintr_assert(i32) #1

declare dso_local i32 @VS_UNLOCK(%struct.virtio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
