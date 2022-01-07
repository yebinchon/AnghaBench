; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_assert_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_assert_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@XHCI_ERDP_LO_BUSY = common dso_local global i32 0, align 4
@XHCI_IMAN_INTR_PEND = common dso_local global i32 0, align 4
@XHCI_STS_EINT = common dso_local global i32 0, align 4
@XHCI_CMD_INTE = common dso_local global i32 0, align 4
@XHCI_IMAN_INTR_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*)* @pci_xhci_assert_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_assert_interrupt(%struct.pci_xhci_softc* %0) #0 {
  %2 = alloca %struct.pci_xhci_softc*, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %2, align 8
  %3 = load i32, i32* @XHCI_ERDP_LO_BUSY, align 4
  %4 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %3
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @XHCI_IMAN_INTR_PEND, align 4
  %11 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %12 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %10
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @XHCI_STS_EINT, align 4
  %18 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %19 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %24 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XHCI_CMD_INTE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %1
  %31 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %32 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XHCI_IMAN_INTR_ENA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %41 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pci_msi_enabled(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %47 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_generate_msi(i32 %48, i32 0)
  br label %55

50:                                               ; preds = %39
  %51 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %52 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_lintr_assert(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %30, %1
  ret void
}

declare dso_local i64 @pci_msi_enabled(i32) #1

declare dso_local i32 @pci_generate_msi(i32, i32) #1

declare dso_local i32 @pci_lintr_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
