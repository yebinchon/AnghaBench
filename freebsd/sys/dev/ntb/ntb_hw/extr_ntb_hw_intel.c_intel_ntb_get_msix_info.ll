; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_get_msix_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_get_msix_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.pci_devinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pcicfg_msix }
%struct.pcicfg_msix = type { i64, i32 }

@XEON_NONLINK_DB_MSIX_BITS = common dso_local global i64 0, align 8
@PCI_MSIX_ENTRY_SIZE = common dso_local global i64 0, align 8
@PCI_MSIX_ENTRY_LOWER_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"local MSIX addr(%u): 0x%x\0A\00", align 1
@MSI_INTEL_ADDR_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"local MSIX addr 0x%x not in MSI base 0x%x\00", align 1
@PCI_MSIX_ENTRY_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"local MSIX data(%u): 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*)* @intel_ntb_get_msix_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_get_msix_info(%struct.ntb_softc* %0) #0 {
  %2 = alloca %struct.ntb_softc*, align 8
  %3 = alloca %struct.pci_devinfo*, align 8
  %4 = alloca %struct.pcicfg_msix*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %2, align 8
  %9 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pci_devinfo* @device_get_ivars(i32 %11)
  store %struct.pci_devinfo* %12, %struct.pci_devinfo** %3, align 8
  %13 = load %struct.pci_devinfo*, %struct.pci_devinfo** %3, align 8
  %14 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.pcicfg_msix* %15, %struct.pcicfg_msix** %4, align 8
  %16 = load i64, i64* @XEON_NONLINK_DB_MSIX_BITS, align 8
  %17 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i64 @nitems(%struct.TYPE_4__* %19)
  %21 = icmp eq i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @CTASSERT(i32 %22)
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %80, %1
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @XEON_NONLINK_DB_MSIX_BITS, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %30 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @PCI_MSIX_ENTRY_SIZE, align 8
  %34 = mul nsw i64 %32, %33
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %37 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @PCI_MSIX_ENTRY_LOWER_ADDR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @bus_read_4(i32 %38, i64 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @intel_ntb_printf(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @MSI_INTEL_ADDR_BASE, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @MSI_INTEL_ADDR_BASE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @MSI_INTEL_ADDR_BASE, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %51, i8* %54)
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 %56, i64* %62, align 8
  %63 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %4, align 8
  %64 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @PCI_MSIX_ENTRY_DATA, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i64 @bus_read_4(i32 %65, i64 %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @intel_ntb_printf(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %28
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %7, align 8
  br label %24

83:                                               ; preds = %24
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i64 @nitems(%struct.TYPE_4__*) #1

declare dso_local i64 @bus_read_4(i32, i64) #1

declare dso_local i32 @intel_ntb_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
