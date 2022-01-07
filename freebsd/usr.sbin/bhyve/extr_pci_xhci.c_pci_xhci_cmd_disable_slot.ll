; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_disable_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i64, i32* }
%struct.pci_xhci_dev_emu = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"pci_xhci disable slot %u\0D\0A\00", align 1
@XHCI_TRB_ERROR_NO_SLOTS = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SLOT_NOT_ON = common dso_local global i64 0, align 8
@XHCI_ST_DISABLED = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_xhci_softc*, i64)* @pci_xhci_cmd_disable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_xhci_cmd_disable_slot(%struct.pci_xhci_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_xhci_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_xhci_dev_emu*, align 8
  %6 = alloca i64, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DPRINTF(i8* %8)
  %10 = load i64, i64* @XHCI_TRB_ERROR_NO_SLOTS, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %45

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @XHCI_TRB_ERROR_SLOT_NOT_ON, align 8
  store i64 %23, i64* %6, align 8
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %25, i64 %26)
  store %struct.pci_xhci_dev_emu* %27, %struct.pci_xhci_dev_emu** %5, align 8
  %28 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %29 = icmp ne %struct.pci_xhci_dev_emu* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %32 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XHCI_ST_DISABLED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @XHCI_TRB_ERROR_SLOT_NOT_ON, align 8
  store i64 %37, i64* %6, align 8
  br label %43

38:                                               ; preds = %30
  %39 = load i64, i64* @XHCI_ST_DISABLED, align 8
  %40 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %41 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %38, %36
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %22, %15
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
