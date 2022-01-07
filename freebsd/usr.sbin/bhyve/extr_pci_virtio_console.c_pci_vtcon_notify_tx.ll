; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_notify_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_notify_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32 }
%struct.pci_vtcon_softc = type { i32 }
%struct.pci_vtcon_port = type { i32, i32 (%struct.pci_vtcon_port*, i32, %struct.iovec*, i32)* }
%struct.iovec = type opaque
%struct.iovec.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtcon_notify_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtcon_notify_tx(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.pci_vtcon_softc*, align 8
  %6 = alloca %struct.pci_vtcon_port*, align 8
  %7 = alloca [1 x %struct.iovec.0], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.pci_vtcon_softc*
  store %struct.pci_vtcon_softc* %12, %struct.pci_vtcon_softc** %5, align 8
  %13 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %5, align 8
  %14 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %15 = call %struct.pci_vtcon_port* @pci_vtcon_vq_to_port(%struct.pci_vtcon_softc* %13, %struct.vqueue_info* %14)
  store %struct.pci_vtcon_port* %15, %struct.pci_vtcon_port** %6, align 8
  br label %16

16:                                               ; preds = %42, %2
  %17 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %18 = call i64 @vq_has_descs(%struct.vqueue_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %22 = getelementptr inbounds [1 x %struct.iovec.0], [1 x %struct.iovec.0]* %7, i64 0, i64 0
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %24 = call i32 @vq_getchain(%struct.vqueue_info* %21, i32* %8, %struct.iovec.0* %22, i32 1, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %6, align 8
  %30 = icmp ne %struct.pci_vtcon_port* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %20
  %32 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %6, align 8
  %33 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %32, i32 0, i32 1
  %34 = load i32 (%struct.pci_vtcon_port*, i32, %struct.iovec*, i32)*, i32 (%struct.pci_vtcon_port*, i32, %struct.iovec*, i32)** %33, align 8
  %35 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %6, align 8
  %36 = load %struct.pci_vtcon_port*, %struct.pci_vtcon_port** %6, align 8
  %37 = getelementptr inbounds %struct.pci_vtcon_port, %struct.pci_vtcon_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [1 x %struct.iovec.0], [1 x %struct.iovec.0]* %7, i64 0, i64 0
  %40 = bitcast %struct.iovec.0* %39 to %struct.iovec*
  %41 = call i32 %34(%struct.pci_vtcon_port* %35, i32 %38, %struct.iovec* %40, i32 1)
  br label %42

42:                                               ; preds = %31, %20
  %43 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @vq_relchain(%struct.vqueue_info* %43, i32 %44, i32 0)
  br label %16

46:                                               ; preds = %16
  %47 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %48 = call i32 @vq_endchains(%struct.vqueue_info* %47, i32 1)
  ret void
}

declare dso_local %struct.pci_vtcon_port* @pci_vtcon_vq_to_port(%struct.pci_vtcon_softc*, %struct.vqueue_info*) #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i32*, %struct.iovec.0*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, i32, i32) #1

declare dso_local i32 @vq_endchains(%struct.vqueue_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
