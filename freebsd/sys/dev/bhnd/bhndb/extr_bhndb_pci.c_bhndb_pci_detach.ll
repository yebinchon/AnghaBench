; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhndb_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhndb_pci_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bhndb_pci_softc* @device_get_softc(i32 %6)
  store %struct.bhndb_pci_softc* %7, %struct.bhndb_pci_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @bhndb_generic_detach(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %13
  %20 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bhndb_disable_pci_clocks(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bhndb_free_intr_isrc(i32 %30)
  %32 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_release_msi(i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_disable_busmaster(i32 %44)
  %46 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %4, align 8
  %47 = call i32 @BHNDB_PCI_LOCK_DESTROY(%struct.bhndb_pci_softc* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %25, %17, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.bhndb_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bhndb_generic_detach(i32) #1

declare dso_local i32 @bhndb_disable_pci_clocks(i32) #1

declare dso_local i32 @bhndb_free_intr_isrc(i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @BHNDB_PCI_LOCK_DESTROY(%struct.bhndb_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
