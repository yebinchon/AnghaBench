; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_pci_softc = type { i32 }
%struct.bhndb_devinfo = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"found SPROM (%ju bytes)\0A\00", align 1
@BHND_PROBE_ROOT = common dso_local global i64 0, align 8
@BHND_PROBE_ORDER_EARLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"bhnd_nvram\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add sprom device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHNDB_ADDRSPACE_NATIVE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to register sprom resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_pci_softc*)* @bhndb_pci_add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_add_children(%struct.bhndb_pci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhndb_pci_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhndb_devinfo*, align 8
  %7 = alloca i32*, align 8
  store %struct.bhndb_pci_softc* %0, %struct.bhndb_pci_softc** %3, align 8
  %8 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %9 = call i64 @bhndb_pci_sprom_size(%struct.bhndb_pci_softc* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = load i64, i64* @bootverbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %12
  %23 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @BHND_PROBE_ROOT, align 8
  %27 = load i64, i64* @BHND_PROBE_ORDER_EARLY, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32* @BUS_ADD_CHILD(i32 %25, i64 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %22
  %39 = load i32*, i32** %7, align 8
  %40 = call %struct.bhndb_devinfo* @device_get_ivars(i32* %39)
  store %struct.bhndb_devinfo* %40, %struct.bhndb_devinfo** %6, align 8
  %41 = load i32, i32* @BHNDB_ADDRSPACE_NATIVE, align 4
  %42 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %6, align 8
  %43 = getelementptr inbounds %struct.bhndb_devinfo, %struct.bhndb_devinfo* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %47 = call i32 @bhndb_pci_sprom_addr(%struct.bhndb_pci_softc* %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @bus_set_resource(i32* %44, i32 %45, i32 0, i32 %47, i64 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load %struct.bhndb_pci_softc*, %struct.bhndb_pci_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bhndb_pci_softc, %struct.bhndb_pci_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %52, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @bhndb_pci_sprom_size(%struct.bhndb_pci_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i64, i8*, i32) #1

declare dso_local %struct.bhndb_devinfo* @device_get_ivars(i32*) #1

declare dso_local i32 @bus_set_resource(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @bhndb_pci_sprom_addr(%struct.bhndb_pci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
