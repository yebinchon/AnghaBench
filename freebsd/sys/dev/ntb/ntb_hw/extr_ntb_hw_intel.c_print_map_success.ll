; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_print_map_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_print_map_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32 }
%struct.ntb_pci_bar_info = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Mapped BAR%d v:[%p-%p] p:[%p-%p] (0x%jx bytes) (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*, %struct.ntb_pci_bar_info*, i8*)* @print_map_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_map_success(%struct.ntb_softc* %0, %struct.ntb_pci_bar_info* %1, i8* %2) #0 {
  %4 = alloca %struct.ntb_softc*, align 8
  %5 = alloca %struct.ntb_pci_bar_info*, align 8
  %6 = alloca i8*, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %4, align 8
  store %struct.ntb_pci_bar_info* %1, %struct.ntb_pci_bar_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %11 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @PCI_RID2BAR(i32 %12)
  %14 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %15 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %18 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %22 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  %27 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %28 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %33 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %36 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %5, align 8
  %43 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @device_printf(i32 %9, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i8* %26, i8* %31, i8* %41, i32 %44, i8* %45)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i64, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @PCI_RID2BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
