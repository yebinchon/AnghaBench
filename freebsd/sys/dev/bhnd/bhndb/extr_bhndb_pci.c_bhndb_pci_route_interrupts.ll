; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_route_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_route_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32, i32 }
%struct.bhnd_core_info = type { i32 }

@BHNDB_PCI_QUIRK_SIBA_INTVEC = common dso_local global i32 0, align 4
@BHNDB_PCI_SBIM_COREIDX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot route interrupts to high core index %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHNDB_PCI_SBIM_SHIFT = common dso_local global i32 0, align 4
@BHNDB_PCI_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bhndb_pci_route_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_route_interrupts(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhndb_pci_softc*, align 8
  %7 = alloca %struct.bhnd_core_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bhnd_core_info, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.bhndb_pci_softc* @device_get_softc(i32 %11)
  store %struct.bhndb_pci_softc* %12, %struct.bhndb_pci_softc** %6, align 8
  %13 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %6, align 8
  %14 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BHNDB_PCI_QUIRK_SIBA_INTVEC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bhndb_pci_route_siba_interrupts(%struct.bhndb_pci_softc* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @bhnd_get_core_info(i32 %24)
  %26 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = bitcast %struct.bhnd_core_info* %7 to i8*
  %28 = bitcast %struct.bhnd_core_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BHNDB_PCI_SBIM_COREIDX_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %23
  %40 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %6, align 8
  %41 = call i32 @BHNDB_PCI_LOCK(%struct.bhndb_pci_softc* %40)
  %42 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @BHNDB_PCI_SBIM_SHIFT, align 4
  %46 = shl i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %6, align 8
  %48 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BHNDB_PCI_INT_MASK, align 4
  %51 = call i32 @pci_read_config(i32 %49, i32 %50, i32 4)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %6, align 8
  %56 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BHNDB_PCI_INT_MASK, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @pci_write_config(i32 %57, i32 %58, i32 %59, i32 4)
  %61 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %6, align 8
  %62 = call i32 @BHNDB_PCI_UNLOCK(%struct.bhndb_pci_softc* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %39, %33, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.bhndb_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhndb_pci_route_siba_interrupts(%struct.bhndb_pci_softc*, i32) #1

declare dso_local i32 @bhnd_get_core_info(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BHNDB_PCI_LOCK(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @BHNDB_PCI_UNLOCK(%struct.bhndb_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
