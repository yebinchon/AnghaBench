; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_enable_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32* }
%struct.pci_xhci_dev_emu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XHCI_TRB_ERROR_NO_SLOTS = common dso_local global i64 0, align 8
@XHCI_MAX_SLOTS = common dso_local global i32 0, align 4
@XHCI_ST_DISABLED = common dso_local global i64 0, align 8
@XHCI_ST_ENABLED = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"pci_xhci enable slot (error=%d) slot %u\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_xhci_softc*, i64*)* @pci_xhci_cmd_enable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_xhci_cmd_enable_slot(%struct.pci_xhci_softc* %0, i64* %1) #0 {
  %3 = alloca %struct.pci_xhci_softc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pci_xhci_dev_emu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64, i64* @XHCI_TRB_ERROR_NO_SLOTS, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %14

14:                                               ; preds = %43, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @XHCI_MAX_SLOTS, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %19, i32 %20)
  store %struct.pci_xhci_dev_emu* %21, %struct.pci_xhci_dev_emu** %5, align 8
  %22 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %23 = icmp ne %struct.pci_xhci_dev_emu* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %26 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XHCI_ST_DISABLED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* @XHCI_ST_ENABLED, align 8
  %35 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %36 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  store i64 %37, i64* %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %5, align 8
  %40 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %46

42:                                               ; preds = %24, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %14

46:                                               ; preds = %30, %14
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @DPRINTF(i8* %54)
  %56 = load i64, i64* %6, align 8
  ret i64 %56
}

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
