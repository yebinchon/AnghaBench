; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_neg_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_neg_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { i32, i32, i32, i64 }

@VIRTIO_NET_F_MRG_RXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pci_vtnet_neg_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_neg_features(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_vtnet_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %7, %struct.pci_vtnet_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %10 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VIRTIO_NET_F_MRG_RXBUF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %17 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %19 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %18, i32 0, i32 1
  store i32 2, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %22 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %26 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netbe_set_cap(i32 %23, i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @netbe_set_cap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
