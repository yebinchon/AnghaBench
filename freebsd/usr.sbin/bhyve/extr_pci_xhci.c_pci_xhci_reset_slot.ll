; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_reset_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_reset_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.pci_xhci_dev_emu = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"xhci reset unassigned slot (%d)?\0D\0A\00", align 1
@XHCI_ST_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i32)* @pci_xhci_reset_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_reset_slot(%struct.pci_xhci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_xhci_dev_emu*, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %6, i32 %7)
  store %struct.pci_xhci_dev_emu* %8, %struct.pci_xhci_dev_emu** %5, align 8
  %9 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %10 = icmp ne %struct.pci_xhci_dev_emu* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @DPRINTF(i8* %14)
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @XHCI_ST_DISABLED, align 4
  %18 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %19 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %11
  ret void
}

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
