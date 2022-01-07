; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_pci_softc = type { i32*, i32*, i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RTWN_PCI_NTXQUEUES = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtwn_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_pci_softc*, align 8
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.rtwn_pci_softc* @device_get_softc(i32 %6)
  store %struct.rtwn_pci_softc* %7, %struct.rtwn_pci_softc** %3, align 8
  %8 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %8, i32 0, i32 3
  store %struct.rtwn_softc* %9, %struct.rtwn_softc** %4, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %11 = call i32 @rtwn_detach(%struct.rtwn_softc* %10)
  %12 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_teardown_intr(i32 %17, i32* %20, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SYS_RES_IRQ, align 4
  %27 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @rman_get_rid(i32* %29)
  %31 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_release_resource(i32 %25, i32 %26, i32 %30, i32* %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @pci_release_msi(i32 %35)
  br label %37

37:                                               ; preds = %16, %1
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RTWN_PCI_NTXQUEUES, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @rtwn_pci_free_tx_list(%struct.rtwn_softc* %43, i32 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %38

49:                                               ; preds = %38
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %51 = call i32 @rtwn_pci_free_rx_list(%struct.rtwn_softc* %50)
  %52 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %53 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %60 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rman_get_rid(i32* %61)
  %63 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %64 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %57, i32 %58, i32 %62, i32* %65)
  br label %67

67:                                               ; preds = %56, %49
  %68 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %69 = call i32 @rtwn_detach_private(%struct.rtwn_softc* %68)
  %70 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %71 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_destroy(i32* %71)
  ret i32 0
}

declare dso_local %struct.rtwn_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @rtwn_detach(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @rtwn_pci_free_tx_list(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_pci_free_rx_list(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_detach_private(%struct.rtwn_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
