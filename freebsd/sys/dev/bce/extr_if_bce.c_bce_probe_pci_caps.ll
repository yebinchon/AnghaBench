; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_probe_pci_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_probe_pci_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32, i32 }

@BCE_VERBOSE_LOAD = common dso_local global i32 0, align 4
@PCIY_PCIX = common dso_local global i32 0, align 4
@BCE_PCIX_CAPABLE_FLAG = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@BCE_INFO_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PCIe link_status = 0x%08X\0A\00", align 1
@BCE_PCIE_CAPABLE_FLAG = common dso_local global i32 0, align 4
@BCE_PCIE_FLAG = common dso_local global i32 0, align 4
@PCIY_MSI = common dso_local global i32 0, align 4
@BCE_MSI_CAPABLE_FLAG = common dso_local global i32 0, align 4
@PCIY_MSIX = common dso_local global i32 0, align 4
@BCE_MSIX_CAPABLE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.bce_softc*)* @bce_probe_pci_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_probe_pci_caps(i32 %0, %struct.bce_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bce_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.bce_softc* %1, %struct.bce_softc** %4, align 8
  %7 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %8 = call i32 @DBENTER(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PCIY_PCIX, align 4
  %11 = call i64 @pci_find_cap(i32 %9, i32 %10, i64* %5)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* @BCE_PCIX_CAPABLE_FLAG, align 4
  %18 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %19 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PCIY_EXPRESS, align 4
  %26 = call i64 @pci_find_cap(i32 %24, i32 %25, i64* %5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 18
  %35 = call i32 @pci_read_config(i32 %32, i64 %34, i32 2)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %37 = load i32, i32* @BCE_INFO_LOAD, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DBPRINT(%struct.bce_softc* %36, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 15
  %42 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 4
  %46 = and i32 %45, 63
  %47 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %48 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @BCE_PCIE_CAPABLE_FLAG, align 4
  %50 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @BCE_PCIE_FLAG, align 4
  %55 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %56 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %31, %28
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @PCIY_MSI, align 4
  %63 = call i64 @pci_find_cap(i32 %61, i32 %62, i64* %5)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @BCE_MSI_CAPABLE_FLAG, align 4
  %70 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %65
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @PCIY_MSIX, align 4
  %78 = call i64 @pci_find_cap(i32 %76, i32 %77, i64* %5)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i64, i64* %5, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* @BCE_MSIX_CAPABLE_FLAG, align 4
  %85 = load %struct.bce_softc*, %struct.bce_softc** %4, align 8
  %86 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %80
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* @BCE_VERBOSE_LOAD, align 4
  %92 = call i32 @DBEXIT(i32 %91)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i64*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
