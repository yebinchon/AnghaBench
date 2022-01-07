; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_vq_to_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_vq_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtcon_port = type { i32 }
%struct.pci_vtcon_softc = type { %struct.pci_vtcon_port*, %struct.pci_vtcon_port }
%struct.vqueue_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_vtcon_port* (%struct.pci_vtcon_softc*, %struct.vqueue_info*)* @pci_vtcon_vq_to_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_vtcon_port* @pci_vtcon_vq_to_port(%struct.pci_vtcon_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.pci_vtcon_port*, align 8
  %4 = alloca %struct.pci_vtcon_softc*, align 8
  %5 = alloca %struct.vqueue_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_vtcon_softc* %0, %struct.pci_vtcon_softc** %4, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %5, align 8
  %7 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %8 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12, %2
  %16 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %4, align 8
  %17 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %16, i32 0, i32 0
  %18 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %17, align 8
  %19 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %18, i64 0
  store %struct.pci_vtcon_port* %19, %struct.pci_vtcon_port** %3, align 8
  br label %38

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %4, align 8
  %28 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %27, i32 0, i32 1
  store %struct.pci_vtcon_port* %28, %struct.pci_vtcon_port** %3, align 8
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %4, align 8
  %31 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %30, i32 0, i32 0
  %32 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %32, i64 %36
  store %struct.pci_vtcon_port* %37, %struct.pci_vtcon_port** %3, align 8
  br label %38

38:                                               ; preds = %29, %26, %15
  %39 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %3, align 8
  ret %struct.pci_vtcon_port* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
