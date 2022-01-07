; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_pci.c_sbni_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni_pci.c_sbni_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@SBNI_PORTS = common dso_local global i32 0, align 4
@SBNI_PCI_VENDOR = common dso_local global i64 0, align 8
@SBNI_PCI_DEVICE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Granch SBNI12/PCI Dual adapter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Granch SBNI12/PCI adapter\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate io ports!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sbni_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbni_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @SBNI_PORTS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_vendor(i32 %7)
  %9 = load i64, i64* @SBNI_PCI_VENDOR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @pci_get_device(i32 %12)
  %14 = load i64, i64* @SBNI_PCI_DEVICE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %114

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.sbni_softc* @device_get_softc(i32 %19)
  store %struct.sbni_softc* %20, %struct.sbni_softc** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_subdevice(i32 %21)
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_3__* @malloc(i32 24, i32 %27, i32 %30)
  %32 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %33 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %32, i32 0, i32 0
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %35 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %2, align 4
  br label %114

40:                                               ; preds = %24
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_set_desc(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %46

43:                                               ; preds = %18
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_set_desc(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = call i32 @PCIR_BAR(i32 0)
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %49 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_IOPORT, align 4
  %52 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %53 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %52, i32 0, i32 2
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = call i64 @bus_alloc_resource_any(i32 %50, i32 %51, i32* %53, i32 %54)
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %57 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %59 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %66 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %71 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* @M_DEVBUF, align 4
  %74 = call i32 @free(%struct.TYPE_3__* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i32, i32* @ENOENT, align 4
  store i32 %76, i32* %2, align 4
  br label %114

77:                                               ; preds = %46
  %78 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %79 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %84 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %87 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 %85, i64* %89, align 8
  %90 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %91 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 4, i32* %93, align 8
  br label %94

94:                                               ; preds = %82, %77
  %95 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %96 = call i64 @sbni_probe(%struct.sbni_softc* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %100 = call i32 @sbni_release_resources(%struct.sbni_softc* %99)
  %101 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %102 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = icmp ne %struct.TYPE_3__* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.sbni_softc*, %struct.sbni_softc** %4, align 8
  %107 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* @M_DEVBUF, align 4
  %110 = call i32 @free(%struct.TYPE_3__* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %98
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  br label %114

113:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %111, %75, %38, %16
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local %struct.sbni_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i64 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @sbni_probe(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_release_resources(%struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
