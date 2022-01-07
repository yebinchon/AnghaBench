; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_xeon_set_pbar_xlat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_xeon_set_pbar_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { %struct.ntb_pci_bar_info* }
%struct.ntb_pci_bar_info = type { i32 }

@NTB_SPLIT_BAR = common dso_local global i32 0, align 4
@NTB_B2B_BAR_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*, i32, i32)* @xeon_set_pbar_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xeon_set_pbar_xlat(%struct.ntb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ntb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntb_pci_bar_info*, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %8, i32 0, i32 0
  %10 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %10, i64 %12
  store %struct.ntb_pci_bar_info* %13, %struct.ntb_pci_bar_info** %7, align 8
  %14 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %15 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %16 = call i64 @HAS_FEATURE(%struct.ntb_softc* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %7, align 8
  %24 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @intel_ntb_reg_write(i32 4, i32 %25, i32 %26)
  %28 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %7, align 8
  %29 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @intel_ntb_reg_read(i32 4, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %18, %3
  %33 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %7, align 8
  %34 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @intel_ntb_reg_write(i32 8, i32 %35, i32 %36)
  %38 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %7, align 8
  %39 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @intel_ntb_reg_read(i32 8, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %22
  %43 = load i32, i32* %5, align 4
  ret void
}

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_reg_write(i32, i32, i32) #1

declare dso_local i32 @intel_ntb_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
