; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd_bus.c_vmd_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd_bus.c_vmd_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmd_softc = type { i32, i32* }
%struct.pci_devinfo = type { i32 }

@PCI_DOMAINMAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Cannot allocate dinfo!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmd_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_bus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmd_softc*, align 8
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call %struct.vmd_softc* @device_get_softc(i32 %12)
  store %struct.vmd_softc* %13, %struct.vmd_softc** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* @PCI_DOMAINMAX, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = call i64 @device_get_unit(i32 %19)
  %21 = sub nsw i64 %17, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.pci_devinfo* @pci_read_device(i32 %15, i32 %16, i64 %21, i32 %22, i32 %23, i32 %24)
  store %struct.pci_devinfo* %25, %struct.pci_devinfo** %5, align 8
  %26 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %27 = icmp eq %struct.pci_devinfo* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %2, align 4
  br label %78

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %35 = call i32 @pci_add_child(i32 %33, %struct.pci_devinfo* %34)
  %36 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %37 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @rman_get_start(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %43 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @rman_get_end(i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %49 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %48, i32 0, i32 0
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %53, %54
  %56 = add nsw i64 %55, 1
  %57 = call i32 @resource_list_add_next(i32* %49, i32 %50, i64 %51, i64 %52, i64 %56)
  %58 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %59 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @rman_get_start(i32 %60)
  store i64 %61, i64* %6, align 8
  %62 = load %struct.vmd_softc*, %struct.vmd_softc** %4, align 8
  %63 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @rman_get_end(i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %67 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %66, i32 0, i32 0
  %68 = load i32, i32* @SYS_RES_IOPORT, align 4
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub nsw i64 %71, %72
  %74 = add nsw i64 %73, 1
  %75 = call i32 @resource_list_add_next(i32* %67, i32 %68, i64 %69, i64 %70, i64 %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @bus_generic_attach(i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %32, %28
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.vmd_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.pci_devinfo* @pci_read_device(i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_add_child(i32, %struct.pci_devinfo*) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i64 @rman_get_end(i32) #1

declare dso_local i32 @resource_list_add_next(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
