; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sdhci_softc = type { i64, i32, %struct.TYPE_5__, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@HWTYPE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Impossible: not compatible in fsl_sdhci_attach()\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fsl_sdhci_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_DMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"fsl,p1022-esdhc\00", align 1
@SDHC_WTMK_LVL = common dso_local global i32 0, align 4
@SDHC_PROT_CTRL = common dso_local global i32 0, align 4
@SDHC_PROT_EMODE_BIG = common dso_local global i32 0, align 4
@SDHC_PROT_EMODE_LITTLE = common dso_local global i32 0, align 4
@SDHC_PROT_EMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_sdhci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sdhci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_sdhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.fsl_sdhci_softc* @device_get_softc(i32 %7)
  store %struct.fsl_sdhci_softc* %8, %struct.fsl_sdhci_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %12, i32 0, i32 8
  %14 = call i32 @callout_init(i32* %13, i32 1)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @compat_data, align 4
  %17 = call %struct.TYPE_6__* @ofw_bus_search_compatible(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HWTYPE_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %1
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %5, i32 %32)
  %34 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %36, i32 0, i32 7
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %6, align 4
  br label %130

44:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_IRQ, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_any(i32 %45, i32 %46, i32* %5, i32 %47)
  %49 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %52 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %6, align 4
  br label %130

59:                                               ; preds = %44
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %62 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @INTR_TYPE_BIO, align 4
  %65 = load i32, i32* @INTR_MPSAFE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @fsl_sdhci_intr, align 4
  %68 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %69 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %70 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %69, i32 0, i32 5
  %71 = call i64 @bus_setup_intr(i32 %60, i8* %63, i32 %66, i32* null, i32 %67, %struct.fsl_sdhci_softc* %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %6, align 4
  br label %130

77:                                               ; preds = %59
  %78 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %79 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %80 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @SDHCI_QUIRK_BROKEN_DMA, align 4
  %85 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %86 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @ofw_bus_is_compatible(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %77
  %94 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %95 = load i32, i32* @SDHC_WTMK_LVL, align 4
  %96 = call i32 @WR4(%struct.fsl_sdhci_softc* %94, i32 %95, i32 276828288)
  br label %101

97:                                               ; preds = %77
  %98 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %99 = load i32, i32* @SDHC_WTMK_LVL, align 4
  %100 = call i32 @WR4(%struct.fsl_sdhci_softc* %98, i32 %99, i32 142608512)
  br label %101

101:                                              ; preds = %97, %93
  %102 = call i32 (...) @imx_ccm_sdhci_hz()
  %103 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %106 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %109 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %113 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %112, i32 0, i32 2
  %114 = call i32 @sdhci_fdt_gpio_setup(i32 %111, %struct.TYPE_5__* %113)
  %115 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %119 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %118, i32 0, i32 2
  %120 = call i32 @sdhci_init_slot(i32 %117, %struct.TYPE_5__* %119, i32 0)
  %121 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %121, i32 0, i32 1
  store i32 1, i32* %122, align 8
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @bus_generic_probe(i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @bus_generic_attach(i32 %125)
  %127 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %127, i32 0, i32 2
  %129 = call i32 @sdhci_start_slot(%struct.TYPE_5__* %128)
  store i32 0, i32* %2, align 4
  br label %134

130:                                              ; preds = %73, %55, %40
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @fsl_sdhci_detach(i32 %131)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %101
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.fsl_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.fsl_sdhci_softc*, i32*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @WR4(%struct.fsl_sdhci_softc*, i32, i32) #1

declare dso_local i32 @imx_ccm_sdhci_hz(...) #1

declare dso_local i32 @sdhci_fdt_gpio_setup(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sdhci_init_slot(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @sdhci_start_slot(%struct.TYPE_5__*) #1

declare dso_local i32 @fsl_sdhci_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
