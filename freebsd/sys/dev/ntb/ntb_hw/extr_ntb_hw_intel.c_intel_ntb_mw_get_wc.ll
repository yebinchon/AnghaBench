; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_mw_get_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_mw_get_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { %struct.ntb_pci_bar_info* }
%struct.ntb_pci_bar_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @intel_ntb_mw_get_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_mw_get_wc(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ntb_softc*, align 8
  %9 = alloca %struct.ntb_pci_bar_info*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ntb_softc* @device_get_softc(i32 %10)
  store %struct.ntb_softc* %11, %struct.ntb_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @intel_ntb_mw_count(i32 %13)
  %15 = icmp uge i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ntb_softc*, %struct.ntb_softc** %8, align 8
  %23 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %22, i32 0, i32 0
  %24 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %23, align 8
  %25 = load %struct.ntb_softc*, %struct.ntb_softc** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @intel_ntb_mw_to_bar(%struct.ntb_softc* %25, i32 %26)
  %28 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %24, i64 %27
  store %struct.ntb_pci_bar_info* %28, %struct.ntb_pci_bar_info** %9, align 8
  %29 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %9, align 8
  %30 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %18, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @intel_ntb_mw_count(i32) #1

declare dso_local i32 @intel_ntb_user_mw_to_idx(%struct.ntb_softc*, i32) #1

declare dso_local i64 @intel_ntb_mw_to_bar(%struct.ntb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
