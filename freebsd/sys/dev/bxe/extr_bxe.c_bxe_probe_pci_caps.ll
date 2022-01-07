; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_probe_pci_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_probe_pci_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Found PM capability at 0x%04x\0A\00", align 1
@BXE_PM_CAPABLE_FLAG = common dso_local global i32 0, align 4
@PCIR_EXPRESS_LINK_STA = common dso_local global i32 0, align 4
@PCIM_LINK_STA_WIDTH = common dso_local global i32 0, align 4
@PCIM_LINK_STA_SPEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PCIe link speed=%d width=%d\0A\00", align 1
@BXE_PCIE_CAPABLE_FLAG = common dso_local global i32 0, align 4
@PCIY_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Found MSI capability at 0x%04x\0A\00", align 1
@BXE_MSI_CAPABLE_FLAG = common dso_local global i32 0, align 4
@PCIY_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Found MSI-X capability at 0x%04x\0A\00", align 1
@BXE_MSIX_CAPABLE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_probe_pci_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_probe_pci_caps(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCIY_PMG, align 4
  %9 = call i64 @pci_find_cap(i32 %7, i32 %8, i32* %4)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = load i32, i32* @DBG_LOAD, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %15, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @BXE_PM_CAPABLE_FLAG, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %14, %11
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = load i32, i32* @PCIR_EXPRESS_LINK_STA, align 4
  %33 = call i32 @bxe_pcie_capability_read(%struct.bxe_softc* %31, i32 %32, i32 2)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %35 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %30
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = call i32 @REG_RD(%struct.bxe_softc* %38, i32 15620)
  %40 = and i32 %39, 16777216
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 1
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @PCIM_LINK_STA_WIDTH, align 4
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 4
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %68

59:                                               ; preds = %37
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @PCIM_LINK_STA_WIDTH, align 4
  %62 = and i32 %60, %61
  %63 = ashr i32 %62, 4
  %64 = ashr i32 %63, 1
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %37
  br label %83

69:                                               ; preds = %30
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @PCIM_LINK_STA_SPEED, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @PCIM_LINK_STA_WIDTH, align 4
  %78 = and i32 %76, %77
  %79 = ashr i32 %78, 4
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %81 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %69, %68
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %85 = load i32, i32* @DBG_LOAD, align 4
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %91 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %84, i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load i32, i32* @BXE_PCIE_CAPABLE_FLAG, align 4
  %96 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %97 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %103 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %106 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PCIY_MSI, align 4
  %109 = call i64 @pci_find_cap(i32 %107, i32 %108, i32* %4)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %83
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %116 = load i32, i32* @DBG_LOAD, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %115, i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @BXE_MSI_CAPABLE_FLAG, align 4
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %121 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %127 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %114, %111
  br label %130

130:                                              ; preds = %129, %83
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %132 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @PCIY_MSIX, align 4
  %135 = call i64 @pci_find_cap(i32 %133, i32 %134, i32* %4)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %130
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %142 = load i32, i32* @DBG_LOAD, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %141, i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @BXE_MSIX_CAPABLE_FLAG, align 4
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %147 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %153 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 5
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %140, %137
  br label %156

156:                                              ; preds = %155, %130
  ret void
}

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @bxe_pcie_capability_read(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
