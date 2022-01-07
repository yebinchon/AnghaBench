; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pci_softc = type { i32 }
%struct.ofw_pci_register = type { i32 }

@PCI_MAP_INTR = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_BUSSHIFT = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_DEVICESHIFT = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_FUNCTIONSHIFT = common dso_local global i32 0, align 4
@PCI_INTR_PINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not route pin %d for device %d.%d\0A\00", align 1
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pci_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofw_pci_softc*, align 8
  %9 = alloca %struct.ofw_pci_register, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @PCI_MAP_INTR, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.ofw_pci_softc* @device_get_softc(i32 %20)
  store %struct.ofw_pci_softc* %21, %struct.ofw_pci_softc** %8, align 8
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i32 @bzero(%struct.ofw_pci_register* %9, i32 4)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pci_get_bus(i32 %24)
  %26 = load i32, i32* @OFW_PCI_PHYS_HI_BUSSHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_get_slot(i32 %28)
  %30 = load i32, i32* @OFW_PCI_PHYS_HI_DEVICESHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %27, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pci_get_function(i32 %33)
  %35 = load i32, i32* @OFW_PCI_PHYS_HI_FUNCTIONSHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %32, %36
  %38 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %9, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ofw_bus_get_node(i32 %39)
  %41 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %8, align 8
  %42 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %41, i32 0, i32 0
  %43 = mul nuw i64 4, %17
  %44 = trunc i64 %43 to i32
  %45 = call i32 @ofw_bus_lookup_imap(i32 %40, i32* %42, %struct.ofw_pci_register* %9, i32 4, i32* %10, i32 4, i32* %19, i32 %44, i32* %14)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @ofw_bus_map_intr(i32 %49, i32 %50, i32 %51, i32* %19)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %69

54:                                               ; preds = %3
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PCI_INTR_PINS, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pci_get_slot(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @pci_get_function(i32 %65)
  %67 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i32 %66)
  %68 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %60, %58, %48
  %70 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #2

declare dso_local i32 @bzero(%struct.ofw_pci_register*, i32) #2

declare dso_local i32 @pci_get_bus(i32) #2

declare dso_local i32 @pci_get_slot(i32) #2

declare dso_local i32 @pci_get_function(i32) #2

declare dso_local i32 @ofw_bus_lookup_imap(i32, i32*, %struct.ofw_pci_register*, i32, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @ofw_bus_get_node(i32) #2

declare dso_local i32 @ofw_bus_map_intr(i32, i32, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
