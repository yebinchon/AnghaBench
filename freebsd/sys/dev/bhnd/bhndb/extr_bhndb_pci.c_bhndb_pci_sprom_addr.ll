; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_sprom_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_sprom_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bhndb_regwin = type { i64 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"requested sprom address on PCI_V2+\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"missing resource for sprom window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bhndb_pci_softc*)* @bhndb_pci_sprom_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bhndb_pci_sprom_addr(%struct.bhndb_pci_softc* %0) #0 {
  %2 = alloca %struct.bhndb_pci_softc*, align 8
  %3 = alloca %struct.bhndb_regwin*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %2, align 8
  %5 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %2, align 8
  %6 = call %struct.bhndb_regwin* @bhndb_pci_sprom_regwin(%struct.bhndb_pci_softc* %5)
  store %struct.bhndb_regwin* %6, %struct.bhndb_regwin** %3, align 8
  %7 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %3, align 8
  %8 = icmp ne %struct.bhndb_regwin* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %3, align 8
  %18 = call %struct.resource* @bhndb_host_resource_for_regwin(i32 %16, %struct.bhndb_regwin* %17)
  store %struct.resource* %18, %struct.resource** %4, align 8
  %19 = load %struct.resource*, %struct.resource** %4, align 8
  %20 = icmp ne %struct.resource* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = call i64 @rman_get_start(%struct.resource* %23)
  %25 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %3, align 8
  %26 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  ret i64 %28
}

declare dso_local %struct.bhndb_regwin* @bhndb_pci_sprom_regwin(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.resource* @bhndb_host_resource_for_regwin(i32, %struct.bhndb_regwin*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
