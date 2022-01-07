; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_get_pci_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_get_pci_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pci_params = type { i32, i32 }

@PCI_CAP_ID_EXP = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_CLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_NLW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.pci_params*)* @get_pci_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pci_mode(%struct.adapter* %0, %struct.pci_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pci_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pci_params* %1, %struct.pci_params** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = load i32, i32* @PCI_CAP_ID_EXP, align 4
  %9 = call i64 @t4_os_find_pci_capability(%struct.adapter* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @t4_os_pci_read_cfg2(%struct.adapter* %13, i64 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCI_EXP_LNKSTA_CLS, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %22 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PCI_EXP_LNKSTA_NLW, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 4
  %27 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %28 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @t4_os_find_pci_capability(%struct.adapter*, i32) #1

declare dso_local i32 @t4_os_pci_read_cfg2(%struct.adapter*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
