; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, i32 }

@VIRTIO_CONFIG_STATUS_RESET = common dso_local global i64 0, align 8
@VIRTIO_CONFIG_STATUS_ACK = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_DRIVER = common dso_local global i32 0, align 4
@VTPCI_FLAG_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vtpci_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_reinit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtpci_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.vtpci_softc* @device_get_softc(i32 %9)
  store %struct.vtpci_softc* %10, %struct.vtpci_softc** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @vtpci_get_status(i32 %11)
  %13 = load i64, i64* @VIRTIO_CONFIG_STATUS_RESET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vtpci_stop(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VIRTIO_CONFIG_STATUS_ACK, align 4
  %21 = call i32 @vtpci_set_status(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VIRTIO_CONFIG_STATUS_DRIVER, align 4
  %24 = call i32 @vtpci_set_status(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @vtpci_negotiate_features(i32 %25, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %43, %18
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %31 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @vtpci_reinit_virtqueue(%struct.vtpci_softc* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %48 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VTPCI_FLAG_MSIX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.vtpci_softc*, %struct.vtpci_softc** %6, align 8
  %55 = call i32 @vtpci_set_host_msix_vectors(%struct.vtpci_softc* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %46
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %40
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32) #1

declare dso_local i64 @vtpci_get_status(i32) #1

declare dso_local i32 @vtpci_stop(i32) #1

declare dso_local i32 @vtpci_set_status(i32, i32) #1

declare dso_local i32 @vtpci_negotiate_features(i32, i32) #1

declare dso_local i32 @vtpci_reinit_virtqueue(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @vtpci_set_host_msix_vectors(%struct.vtpci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
