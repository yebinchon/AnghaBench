; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_probe_and_attach_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_probe_and_attach_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32*, i32* }

@DS_NOTPRESENT = common dso_local global i64 0, align 8
@VIRTIO_CONFIG_STATUS_DRIVER = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_FAILED = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_ACK = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_DRIVER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtpci_softc*)* @vtpci_probe_and_attach_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_probe_and_attach_child(%struct.vtpci_softc* %0) #0 {
  %2 = alloca %struct.vtpci_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %2, align 8
  %5 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %49

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @device_get_state(i32* %15)
  %17 = load i64, i64* @DS_NOTPRESENT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %49

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @device_probe(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %49

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @VIRTIO_CONFIG_STATUS_DRIVER, align 4
  %28 = call i32 @vtpci_set_status(i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @device_attach(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @VIRTIO_CONFIG_STATUS_FAILED, align 4
  %35 = call i32 @vtpci_set_status(i32* %33, i32 %34)
  %36 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %37 = call i32 @vtpci_reset(%struct.vtpci_softc* %36)
  %38 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %39 = call i32 @vtpci_release_child_resources(%struct.vtpci_softc* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @VIRTIO_CONFIG_STATUS_ACK, align 4
  %42 = call i32 @vtpci_set_status(i32* %40, i32 %41)
  br label %49

43:                                               ; preds = %25
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @VIRTIO_CONFIG_STATUS_DRIVER_OK, align 4
  %46 = call i32 @vtpci_set_status(i32* %44, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @VIRTIO_ATTACH_COMPLETED(i32* %47)
  br label %49

49:                                               ; preds = %13, %19, %24, %43, %32
  ret void
}

declare dso_local i64 @device_get_state(i32*) #1

declare dso_local i64 @device_probe(i32*) #1

declare dso_local i32 @vtpci_set_status(i32*, i32) #1

declare dso_local i64 @device_attach(i32*) #1

declare dso_local i32 @vtpci_reset(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_release_child_resources(%struct.vtpci_softc*) #1

declare dso_local i32 @VIRTIO_ATTACH_COMPLETED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
