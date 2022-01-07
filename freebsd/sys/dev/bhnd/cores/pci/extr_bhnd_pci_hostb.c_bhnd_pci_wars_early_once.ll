; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci_hostb.c_bhnd_pci_wars_early_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pci/extr_bhnd_pci_hostb.c_bhnd_pci_wars_early_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pcihb_softc = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bhnd_board_info = type { i32 }

@BHND_PCI_QUIRK_960NS_LATTIM_OVR = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_ASPM_OVR = common dso_local global i32 0, align 4
@BHND_BFL2_PCIEWAR_OVR = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_BFL2_PCIEWAR_EN = common dso_local global i32 0, align 4
@BHND_PCIE_QUIRK_SDR9_POLARITY = common dso_local global i32 0, align 4
@BHND_PCIE_PLP_STATUSREG = common dso_local global i32 0, align 4
@BHND_PCIE_PLP_POLARITY_INV = common dso_local global i32 0, align 4
@BHND_DEVCLASS_PCIE = common dso_local global i64 0, align 8
@BHND_PCIE_QUIRK_DEFAULT_MRRS_512 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set mrrs on non-PCIe device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pcihb_softc*)* @bhnd_pci_wars_early_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pci_wars_early_once(%struct.bhnd_pcihb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pcihb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_board_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bhnd_pcihb_softc* %0, %struct.bhnd_pcihb_softc** %3, align 8
  %10 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BHND_PCI_QUIRK_960NS_LATTIM_OVR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCIR_LATTIMER, align 4
  %21 = call i32 @pci_write_config(i32 %19, i32 %20, i32 32, i32 1)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BHND_PCIE_QUIRK_ASPM_OVR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  %30 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bhnd_read_board_info(i32 %32, %struct.bhnd_board_info* %5)
  store i32 %33, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %103

37:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  %38 = getelementptr inbounds %struct.bhnd_board_info, %struct.bhnd_board_info* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BHND_BFL2_PCIEWAR_OVR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BHND_PCIE_QUIRK_BFL2_PCIEWAR_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %22
  %58 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BHND_PCIE_QUIRK_SDR9_POLARITY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %66 = load i32, i32* @BHND_PCIE_PLP_STATUSREG, align 4
  %67 = call i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BHND_PCIE_PLP_POLARITY_INV, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %75 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %57
  %78 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %79 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @bhnd_get_class(i32 %80)
  %82 = load i64, i64* @BHND_DEVCLASS_PCIE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %77
  store i32 128, i32* %9, align 4
  %85 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %86 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BHND_PCIE_QUIRK_DEFAULT_MRRS_512, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 512, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %84
  %93 = load %struct.bhnd_pcihb_softc*, %struct.bhnd_pcihb_softc** %3, align 8
  %94 = getelementptr inbounds %struct.bhnd_pcihb_softc, %struct.bhnd_pcihb_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @pci_set_max_read_req(i32 %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92
  br label %102

102:                                              ; preds = %101, %77
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %35
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @bhnd_read_board_info(i32, %struct.bhnd_board_info*) #1

declare dso_local i32 @BHND_PCI_PROTO_READ_4(%struct.bhnd_pcihb_softc*, i32) #1

declare dso_local i64 @bhnd_get_class(i32) #1

declare dso_local i64 @pci_set_max_read_req(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
