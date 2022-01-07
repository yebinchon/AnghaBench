; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32*, i32, i32*, i32*, i32* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot map I/O space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIY_MSI = common dso_local global i32 0, align 4
@VTPCI_FLAG_NO_MSI = common dso_local global i32 0, align 4
@PCIY_MSIX = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@VTPCI_FLAG_NO_MSIX = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_STATUS_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot create child device\0A\00", align 1
@VIRTIO_CONFIG_STATUS_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vtpci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vtpci_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.vtpci_softc* @device_get_softc(i32* %7)
  store %struct.vtpci_softc* %8, %struct.vtpci_softc** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %10, i32 0, i32 4
  store i32* %9, i32** %11, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @pci_enable_busmaster(i32* %12)
  %14 = call i32 @PCIR_BAR(i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @SYS_RES_IOPORT, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32* %15, i32 %16, i32* %6, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @device_printf(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %90

30:                                               ; preds = %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @PCIY_MSI, align 4
  %33 = call i64 @pci_find_cap(i32* %31, i32 %32, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @VTPCI_FLAG_NO_MSI, align 4
  %37 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %38 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @PCIY_MSIX, align 4
  %44 = call i64 @pci_find_cap(i32* %42, i32 %43, i32* null)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = call i32 @PCIR_BAR(i32 1)
  store i32 %47, i32* %6, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call i8* @bus_alloc_resource_any(i32* %48, i32 %49, i32* %6, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %57 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @VTPCI_FLAG_NO_MSIX, align 4
  %62 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %63 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %68 = call i32 @vtpci_reset(%struct.vtpci_softc* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @VIRTIO_CONFIG_STATUS_ACK, align 4
  %71 = call i32 @vtpci_set_status(i32* %69, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32* @device_add_child(i32* %72, i32* null, i32 -1)
  store i32* %73, i32** %5, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @device_printf(i32* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @VIRTIO_CONFIG_STATUS_FAILED, align 4
  %80 = call i32 @vtpci_set_status(i32* %78, i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @vtpci_detach(i32* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %2, align 4
  br label %90

84:                                               ; preds = %66
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %87 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.vtpci_softc*, %struct.vtpci_softc** %4, align 8
  %89 = call i32 @vtpci_probe_and_attach_child(%struct.vtpci_softc* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %75, %26
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i32*) #1

declare dso_local i32 @pci_enable_busmaster(i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @pci_find_cap(i32*, i32, i32*) #1

declare dso_local i32 @vtpci_reset(%struct.vtpci_softc*) #1

declare dso_local i32 @vtpci_set_status(i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @vtpci_detach(i32*) #1

declare dso_local i32 @vtpci_probe_and_attach_child(%struct.vtpci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
