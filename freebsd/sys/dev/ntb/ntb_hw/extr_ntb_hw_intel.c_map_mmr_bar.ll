; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_map_mmr_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_map_mmr_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32 }
%struct.ntb_pci_bar_info = type { i32, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mmr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*, %struct.ntb_pci_bar_info*)* @map_mmr_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_mmr_bar(%struct.ntb_softc* %0, %struct.ntb_pci_bar_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_softc*, align 8
  %5 = alloca %struct.ntb_pci_bar_info*, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %4, align 8
  store %struct.ntb_pci_bar_info* %1, %struct.ntb_pci_bar_info** %5, align 8
  %6 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %7 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SYS_RES_MEMORY, align 4
  %10 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %11 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %10, i32 0, i32 2
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call i32* @bus_alloc_resource_any(i32 %8, i32 %9, i32* %11, i32 %12)
  %14 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %15 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %17 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %24 = call i32 @save_bar_parameters(%struct.ntb_pci_bar_info* %23)
  %25 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %26 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %27 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %29 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %30 = call i32 @print_map_success(%struct.ntb_softc* %28, %struct.ntb_pci_bar_info* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @save_bar_parameters(%struct.ntb_pci_bar_info*) #1

declare dso_local i32 @print_map_success(%struct.ntb_softc*, %struct.ntb_pci_bar_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
