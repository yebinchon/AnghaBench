; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar724x_pci.c_ar724x_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_pci_softc = type { i32, i32*, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"ar724x PCI memory window\00", align 1
@AR71XX_PCI_MEM_BASE = common dso_local global i64 0, align 8
@AR71XX_PCI_MEM_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"ar724x_pci_attach: failed to set up I/O rman\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ar724x PCI IRQs\00", align 1
@AR71XX_PCI_IRQ_START = common dso_local global i64 0, align 8
@AR71XX_PCI_IRQ_END = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"ar724x_pci_attach: failed to set up IRQ rman\00", align 1
@AR724X_PCI_INTR_STATUS = common dso_local global i32 0, align 4
@AR724X_PCI_INTR_MASK = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to allocate IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ar724x_pci_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"WARNING: unable to register interrupt handler\0A\00", align 1
@AR724X_RESET_PCIE = common dso_local global i32 0, align 4
@AR724X_RESET_PCIE_PHY = common dso_local global i32 0, align 4
@AR724X_RESET_PCIE_PHY_SERIAL = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BACKTOBACK = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ar724x_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar724x_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar71xx_pci_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ar71xx_pci_softc* @device_get_softc(i32 %6)
  store %struct.ar71xx_pci_softc* %7, %struct.ar71xx_pci_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** @RMAN_ARRAY, align 8
  %9 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %8, i8** %11, align 8
  %12 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %15, i32 0, i32 3
  %17 = call i64 @rman_init(%struct.TYPE_3__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %20, i32 0, i32 3
  %22 = load i64, i64* @AR71XX_PCI_MEM_BASE, align 8
  %23 = load i64, i64* @AR71XX_PCI_MEM_BASE, align 8
  %24 = load i64, i64* @AR71XX_PCI_MEM_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = sub nsw i64 %25, 1
  %27 = call i64 @rman_manage_region(%struct.TYPE_3__* %21, i64 %22, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19, %1
  %30 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i8*, i8** @RMAN_ARRAY, align 8
  %33 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %39, i32 0, i32 2
  %41 = call i64 @rman_init(%struct.TYPE_3__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %31
  %44 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %44, i32 0, i32 2
  %46 = load i64, i64* @AR71XX_PCI_IRQ_START, align 8
  %47 = load i64, i64* @AR71XX_PCI_IRQ_END, align 8
  %48 = call i64 @rman_manage_region(%struct.TYPE_3__* %45, i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %31
  %51 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32, i32* @AR724X_PCI_INTR_STATUS, align 4
  %54 = call i32 @ATH_WRITE_REG(i32 %53, i32 0)
  %55 = load i32, i32* @AR724X_PCI_INTR_MASK, align 4
  %56 = call i32 @ATH_WRITE_REG(i32 %55, i32 0)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_IRQ, align 4
  %59 = load i32, i32* @RF_SHAREABLE, align 4
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = or i32 %59, %60
  %62 = call i32* @bus_alloc_resource_any(i32 %57, i32 %58, i32* %5, i32 %61)
  %63 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = icmp eq i32* %62, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %125

70:                                               ; preds = %52
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @INTR_TYPE_MISC, align 4
  %76 = load i32, i32* @ar724x_pci_intr, align 4
  %77 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %78 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %78, i32 0, i32 0
  %80 = call i64 @bus_setup_intr(i32 %71, i32* %74, i32 %75, i32 %76, i32* null, %struct.ar71xx_pci_softc* %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %125

86:                                               ; preds = %70
  %87 = load i32, i32* @AR724X_RESET_PCIE, align 4
  %88 = call i32 @ar71xx_device_stop(i32 %87)
  %89 = load i32, i32* @AR724X_RESET_PCIE_PHY, align 4
  %90 = call i32 @ar71xx_device_stop(i32 %89)
  %91 = load i32, i32* @AR724X_RESET_PCIE_PHY_SERIAL, align 4
  %92 = call i32 @ar71xx_device_stop(i32 %91)
  %93 = call i32 @DELAY(i32 100)
  %94 = load i32, i32* @AR724X_RESET_PCIE_PHY_SERIAL, align 4
  %95 = call i32 @ar71xx_device_start(i32 %94)
  %96 = call i32 @DELAY(i32 100)
  %97 = load i32, i32* @AR724X_RESET_PCIE_PHY, align 4
  %98 = call i32 @ar71xx_device_start(i32 %97)
  %99 = load i32, i32* @AR724X_RESET_PCIE, align 4
  %100 = call i32 @ar71xx_device_start(i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @ar724x_pci_setup(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %86
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %2, align 4
  br label %125

106:                                              ; preds = %86
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @PCIR_COMMAND, align 4
  %109 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %110 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @PCIM_CMD_BACKTOBACK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ar724x_pci_write_config(i32 %107, i32 0, i32 0, i32 0, i32 %108, i32 %119, i32 2)
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @device_add_child(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @bus_generic_attach(i32 %123)
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %106, %104, %82, %66
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.ar71xx_pci_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.ar71xx_pci_softc*, i32*) #1

declare dso_local i32 @ar71xx_device_stop(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ar71xx_device_start(i32) #1

declare dso_local i64 @ar724x_pci_setup(i32) #1

declare dso_local i32 @ar724x_pci_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
