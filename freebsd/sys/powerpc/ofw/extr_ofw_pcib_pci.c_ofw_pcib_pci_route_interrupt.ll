; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcib_pci.c_ofw_pcib_pci_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcib_pci.c_ofw_pcib_pci_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pcib_softc = type { %struct.ofw_bus_iinfo }
%struct.ofw_bus_iinfo = type { i64 }
%struct.ofw_pci_register = type { i32 }

@OFW_PCI_PHYS_HI_BUSSHIFT = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_DEVICESHIFT = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_FUNCTIONSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ofw_pcib_pci_route_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pcib_pci_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofw_pcib_softc*, align 8
  %9 = alloca %struct.ofw_bus_iinfo*, align 8
  %10 = alloca %struct.ofw_pci_register, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.ofw_pcib_softc* @device_get_softc(i32 %15)
  store %struct.ofw_pcib_softc* %16, %struct.ofw_pcib_softc** %8, align 8
  %17 = load %struct.ofw_pcib_softc*, %struct.ofw_pcib_softc** %8, align 8
  %18 = getelementptr inbounds %struct.ofw_pcib_softc, %struct.ofw_pcib_softc* %17, i32 0, i32 0
  store %struct.ofw_bus_iinfo* %18, %struct.ofw_bus_iinfo** %9, align 8
  %19 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %9, align 8
  %20 = getelementptr inbounds %struct.ofw_bus_iinfo, %struct.ofw_bus_iinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %11, align 4
  %25 = call i32 @bzero(%struct.ofw_pci_register* %10, i32 4)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pci_get_bus(i32 %26)
  %28 = load i32, i32* @OFW_PCI_PHYS_HI_BUSSHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pci_get_slot(i32 %30)
  %32 = load i32, i32* @OFW_PCI_PHYS_HI_DEVICESHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %29, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @pci_get_function(i32 %35)
  %37 = load i32, i32* @OFW_PCI_PHYS_HI_FUNCTIONSHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %34, %38
  %40 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ofw_bus_get_node(i32 %41)
  %43 = load %struct.ofw_bus_iinfo*, %struct.ofw_bus_iinfo** %9, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %45 = call i32 @ofw_bus_lookup_imap(i32 %42, %struct.ofw_bus_iinfo* %43, %struct.ofw_pci_register* %10, i32 4, i32* %11, i32 4, i32* %44, i32 8, i32* %14)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %23
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %53 = call i32 @ofw_bus_map_intr(i32 %49, i32 %50, i32 %51, i32* %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %23
  br label %70

58:                                               ; preds = %3
  %59 = load i32, i32* %7, align 4
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @pcib_route_interrupt(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %77

69:                                               ; preds = %61, %58
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @device_get_parent(i32 %71)
  %73 = call i32 @device_get_parent(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @PCIB_ROUTE_INTERRUPT(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %70, %64, %48
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ofw_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ofw_pci_register*, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @ofw_bus_lookup_imap(i32, %struct.ofw_bus_iinfo*, %struct.ofw_pci_register*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_bus_map_intr(i32, i32, i32, i32*) #1

declare dso_local i32 @pcib_route_interrupt(i32, i32, i32) #1

declare dso_local i32 @PCIB_ROUTE_INTERRUPT(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
