; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_vq_shared_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_vq_shared_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, %struct.vtpci_virtqueue* }
%struct.vtpci_virtqueue = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtpci_vq_shared_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_vq_shared_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca %struct.vtpci_virtqueue*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtpci_softc*
  store %struct.vtpci_softc* %7, %struct.vtpci_softc** %3, align 8
  %8 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %8, i32 0, i32 1
  %10 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %9, align 8
  %11 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %10, i64 0
  store %struct.vtpci_virtqueue* %11, %struct.vtpci_virtqueue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %20 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %25 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @virtqueue_intr(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.vtpci_virtqueue*, %struct.vtpci_virtqueue** %4, align 8
  %33 = getelementptr inbounds %struct.vtpci_virtqueue, %struct.vtpci_virtqueue* %32, i32 1
  store %struct.vtpci_virtqueue* %33, %struct.vtpci_virtqueue** %4, align 8
  br label %12

34:                                               ; preds = %12
  ret void
}

declare dso_local i32 @virtqueue_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
