; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_qca955x_pci.c_qca955x_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_pci_softc = type { i32, i64, i32 }

@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BACKTOBACK = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@QCA955X_PCI_RESET = common dso_local global i64 0, align 8
@QCA955X_PCI_APP = common dso_local global i64 0, align 8
@QCA955X_PCI_RESET_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no PCIe controller found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qca955x_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca955x_pci_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar71xx_pci_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ar71xx_pci_softc* @device_get_softc(i32 %6)
  store %struct.ar71xx_pci_softc* %7, %struct.ar71xx_pci_softc** %4, align 8
  %8 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %9 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PCIM_CMD_BACKTOBACK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCIR_COMMAND, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @qca955x_pci_write(i32 %21, i32 %22, i32 %23, i32 2)
  %25 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @qca955x_pci_write(i32 %27, i32 32, i32 %30, i32 4)
  %32 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @qca955x_pci_write(i32 %34, i32 36, i32 %37, i32 4)
  %39 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QCA955X_PCI_RESET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ATH_READ_REG(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 7
  br i1 %46, label %47, label %75

47:                                               ; preds = %1
  %48 = call i32 @DELAY(i32 100000)
  %49 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QCA955X_PCI_RESET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @ATH_WRITE_REG(i64 %53, i32 0)
  %55 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QCA955X_PCI_RESET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @ATH_READ_REG(i64 %59)
  %61 = call i32 @DELAY(i32 100)
  %62 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %63 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QCA955X_PCI_RESET, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @ATH_WRITE_REG(i64 %66, i32 4)
  %68 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @QCA955X_PCI_RESET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @ATH_READ_REG(i64 %72)
  %74 = call i32 @DELAY(i32 100000)
  br label %75

75:                                               ; preds = %47, %1
  %76 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QCA955X_PCI_APP, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @ATH_WRITE_REG(i64 %80, i32 131009)
  %82 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QCA955X_PCI_APP, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @ATH_READ_REG(i64 %86)
  %88 = call i32 @DELAY(i32 1000)
  %89 = load %struct.ar71xx_pci_softc*, %struct.ar71xx_pci_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ar71xx_pci_softc, %struct.ar71xx_pci_softc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @QCA955X_PCI_RESET, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @ATH_READ_REG(i64 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @QCA955X_PCI_RESET_LINK_UP, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %75
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %75
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.ar71xx_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @qca955x_pci_write(i32, i32, i32, i32) #1

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
