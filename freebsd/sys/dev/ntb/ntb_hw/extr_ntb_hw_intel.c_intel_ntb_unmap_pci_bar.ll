; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_unmap_pci_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_unmap_pci_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, %struct.ntb_pci_bar_info* }
%struct.ntb_pci_bar_info = type { i32*, i32 }

@NTB_MAX_BARS = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*)* @intel_ntb_unmap_pci_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_unmap_pci_bar(%struct.ntb_softc* %0) #0 {
  %2 = alloca %struct.ntb_softc*, align 8
  %3 = alloca %struct.ntb_pci_bar_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NTB_MAX_BARS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %10, i32 0, i32 1
  %12 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %12, i64 %14
  store %struct.ntb_pci_bar_info* %15, %struct.ntb_pci_bar_info** %3, align 8
  %16 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %3, align 8
  %26 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %3, align 8
  %29 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bus_release_resource(i32 %23, i32 %24, i32 %27, i32* %30)
  br label %32

32:                                               ; preds = %20, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
