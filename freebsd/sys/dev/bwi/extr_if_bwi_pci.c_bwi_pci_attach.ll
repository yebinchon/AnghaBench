; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi_pci.c_bwi_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi_pci.c_bwi_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_pci_softc = type { %struct.bwi_softc }
%struct.bwi_softc = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@BWI_PCIR_BAR = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot map register space\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not map interrupt\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bwi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not establish interrupt\0A\00", align 1
@BS_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bwi_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_pci_softc*, align 8
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bwi_pci_softc* @device_get_softc(i32 %7)
  store %struct.bwi_pci_softc* %8, %struct.bwi_pci_softc** %4, align 8
  %9 = load %struct.bwi_pci_softc*, %struct.bwi_pci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bwi_pci_softc, %struct.bwi_pci_softc* %9, i32 0, i32 0
  store %struct.bwi_softc* %10, %struct.bwi_softc** %5, align 8
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_enable_busmaster(i32 %15)
  %17 = load i64, i64* @BWI_PCIR_BAR, align 8
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %19 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %18, i32 0, i32 11
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 11
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i8* @bus_alloc_resource_any(i32 %20, i32 %21, i64* %23, i32 %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %30 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %125

36:                                               ; preds = %1
  %37 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %38 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @rman_get_bustag(i32* %39)
  %41 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %42 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %44 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @rman_get_bushandle(i32* %45)
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %48 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %50 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %52 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %56 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %55, i32 0, i32 8
  %57 = load i32, i32* @RF_SHAREABLE, align 4
  %58 = load i32, i32* @RF_ACTIVE, align 4
  %59 = or i32 %57, %58
  %60 = call i8* @bus_alloc_resource_any(i32 %53, i32 %54, i64* %56, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %63 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %65 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %36
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %117

71:                                               ; preds = %36
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @pci_get_device(i32 %72)
  %74 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %75 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @pci_get_revid(i32 %76)
  %78 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %79 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @pci_get_subvendor(i32 %80)
  %82 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %83 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @pci_get_subdevice(i32 %84)
  %86 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %87 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %89 = call i32 @bwi_attach(%struct.bwi_softc* %88)
  store i32 %89, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %110

92:                                               ; preds = %71
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %95 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @INTR_TYPE_NET, align 4
  %98 = load i32, i32* @INTR_MPSAFE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @bwi_intr, align 4
  %101 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %102 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %103 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %102, i32 0, i32 3
  %104 = call i64 @bus_setup_intr(i32 %93, i32* %96, i32 %99, i32* null, i32 %100, %struct.bwi_softc* %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %110

109:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %127

110:                                              ; preds = %106, %91
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @SYS_RES_IRQ, align 4
  %113 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %114 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_release_resource(i32 %111, i32 %112, i32 0, i32* %115)
  br label %117

117:                                              ; preds = %110, %68
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @SYS_RES_MEMORY, align 4
  %120 = load i32, i32* @BS_BAR, align 4
  %121 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %122 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @bus_release_resource(i32 %118, i32 %119, i32 %120, i32* %123)
  br label %125

125:                                              ; preds = %117, %33
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %109
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.bwi_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @bwi_attach(%struct.bwi_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.bwi_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
