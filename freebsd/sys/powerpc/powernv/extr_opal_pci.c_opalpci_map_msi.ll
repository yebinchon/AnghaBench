; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_pci.c_opalpci_map_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_pci.c_opalpci_map_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalpci_softc = type { i32, i32, i32, i32* }
%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@OPAL_PCI_SET_XIVE_PE = common dso_local global i32 0, align 4
@OPAL_PCI_DEFAULT_PE = common dso_local global i32 0, align 4
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4
@OPAL_GET_MSI_32 = common dso_local global i32 0, align 4
@OPAL_GET_MSI_64 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"OPAL MSI mapping error: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @opalpci_map_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opalpci_map_msi(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.opalpci_softc*, align 8
  %13 = alloca %struct.pci_devinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.opalpci_softc* @device_get_softc(i32 %17)
  store %struct.opalpci_softc* %18, %struct.opalpci_softc** %12, align 8
  %19 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %20 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  store i32 %24, i32* %6, align 4
  br label %111

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %28 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %32 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @OPAL_PCI_SET_XIVE_PE, align 4
  %36 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %37 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @OPAL_PCI_DEFAULT_PE, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.pci_devinfo* @device_get_ivars(i32 %42)
  store %struct.pci_devinfo* %43, %struct.pci_devinfo** %13, align 8
  %44 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %45 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %25
  %51 = load %struct.pci_devinfo*, %struct.pci_devinfo** %13, align 8
  %52 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load i32, i32* @OPAL_GET_MSI_32, align 4
  %61 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %62 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @OPAL_PCI_DEFAULT_PE, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @vtophys(i32* %16)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @vtophys(i32* %67)
  %69 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %60, i32 %63, i32 %64, i32 %65, i32 1, i32 %66, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @be32toh(i32 %70)
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  br label %89

73:                                               ; preds = %50, %25
  %74 = load i32, i32* @OPAL_GET_MSI_64, align 4
  %75 = load %struct.opalpci_softc*, %struct.opalpci_softc** %12, align 8
  %76 = getelementptr inbounds %struct.opalpci_softc, %struct.opalpci_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OPAL_PCI_DEFAULT_PE, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @vtophys(i32* %80)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @vtophys(i32* %82)
  %84 = call i32 (i32, i32, i32, i32, ...) @opal_call(i32 %74, i32 %77, i32 %78, i32 %79, i32 1, i32 %81, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be64toh(i32 %86)
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %73, %59
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32toh(i32 %91)
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i64, i64* @bootverbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %96, %89
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @ENXIO, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i32 [ 0, %106 ], [ %108, %107 ]
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %23
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.opalpci_softc* @device_get_softc(i32) #1

declare dso_local i32 @opal_call(i32, i32, i32, i32, ...) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
