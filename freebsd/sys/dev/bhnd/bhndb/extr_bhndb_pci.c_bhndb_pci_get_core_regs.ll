; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_get_core_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_get_core_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }
%struct.bhndb_regwin = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"missing PCI core register window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"missing PCI core register resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"offset %#jx outside of register window\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*, i64, i64, %struct.resource**, i64*)* @bhndb_pci_get_core_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_get_core_regs(%struct.bhndb_pci_softc* %0, i64 %1, i64 %2, %struct.resource** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhndb_pci_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.bhndb_regwin*, align 8
  %13 = alloca %struct.resource*, align 8
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.resource** %3, %struct.resource*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %15 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %23 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call %struct.bhndb_regwin* @bhndb_regwin_find_core(i32 %21, i32 %24, i32 0, i32 %25, i32 0, i32 0, i64 %26, i64 %27)
  store %struct.bhndb_regwin* %28, %struct.bhndb_regwin** %12, align 8
  %29 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %30 = icmp eq %struct.bhndb_regwin* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %33 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %6, align 4
  br label %82

37:                                               ; preds = %5
  %38 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %39 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %45 = call %struct.resource* @bhndb_host_resource_for_regwin(i32 %43, %struct.bhndb_regwin* %44)
  store %struct.resource* %45, %struct.resource** %13, align 8
  %46 = load %struct.resource*, %struct.resource** %13, align 8
  %47 = icmp eq %struct.resource* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %7, align 8
  %50 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %6, align 4
  br label %82

54:                                               ; preds = %37
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %57 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %55, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 %62, i8* %66)
  %68 = load %struct.resource*, %struct.resource** %13, align 8
  %69 = load %struct.resource**, %struct.resource*** %10, align 8
  store %struct.resource* %68, %struct.resource** %69, align 8
  %70 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %71 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %12, align 8
  %75 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %73, %78
  %80 = add nsw i64 %72, %79
  %81 = load i64*, i64** %11, align 8
  store i64 %80, i64* %81, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %54, %48, %31
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.bhndb_regwin* @bhndb_regwin_find_core(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.resource* @bhndb_host_resource_for_regwin(i32, %struct.bhndb_regwin*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
