; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_lookup_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_lookup_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_resource = type { i32 }
%struct.vga_pci_softc = type { %struct.vga_resource*, %struct.vga_resource }

@PCIR_BIOS = common dso_local global i32 0, align 4
@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vga_resource* (%struct.vga_pci_softc*, i32)* @lookup_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vga_resource* @lookup_res(%struct.vga_pci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vga_resource*, align 8
  %4 = alloca %struct.vga_pci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vga_pci_softc* %0, %struct.vga_pci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PCIR_BIOS, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.vga_pci_softc*, %struct.vga_pci_softc** %4, align 8
  %12 = getelementptr inbounds %struct.vga_pci_softc, %struct.vga_pci_softc* %11, i32 0, i32 1
  store %struct.vga_resource* %12, %struct.vga_resource** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PCI_RID2BAR(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.vga_pci_softc*, %struct.vga_pci_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vga_pci_softc, %struct.vga_pci_softc* %23, i32 0, i32 0
  %25 = load %struct.vga_resource*, %struct.vga_resource** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %25, i64 %27
  store %struct.vga_resource* %28, %struct.vga_resource** %3, align 8
  br label %30

29:                                               ; preds = %18, %13
  store %struct.vga_resource* null, %struct.vga_resource** %3, align 8
  br label %30

30:                                               ; preds = %29, %22, %10
  %31 = load %struct.vga_resource*, %struct.vga_resource** %3, align 8
  ret %struct.vga_resource* %31
}

declare dso_local i32 @PCI_RID2BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
