; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_acpi.c_sdhci_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_acpi.c_sdhci_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_acpi_softc = type { %struct.TYPE_4__, i32, i32*, i32*, %struct.sdhci_acpi_device* }
%struct.TYPE_4__ = type { i32 }
%struct.sdhci_acpi_device = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't allocate IRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"can't allocate memory resource for slot\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"80860F14\00", align 1
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES2 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MMC_DDR52 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DATA_TIMEOUT_1MHZ = common dso_local global i32 0, align 4
@sdhci_quirk_clear = common dso_local global i32 0, align 4
@sdhci_quirk_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to init slot\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@sdhci_acpi_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"can't setup IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_acpi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_acpi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdhci_acpi_device*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.sdhci_acpi_softc* @device_get_softc(i32 %9)
  store %struct.sdhci_acpi_softc* %10, %struct.sdhci_acpi_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.sdhci_acpi_device* @sdhci_acpi_find_device(i32 %11)
  store %struct.sdhci_acpi_device* %12, %struct.sdhci_acpi_device** %8, align 8
  %13 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %8, align 8
  %14 = icmp eq %struct.sdhci_acpi_device* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %137

17:                                               ; preds = %1
  %18 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %8, align 8
  %19 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %19, i32 0, i32 4
  store %struct.sdhci_acpi_device* %18, %struct.sdhci_acpi_device** %20, align 8
  %21 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %8, align 8
  %22 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i8* @bus_alloc_resource_any(i32 %24, i32 %25, i32* %5, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %30 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %2, align 4
  br label %137

39:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load i32, i32* @RF_ACTIVE, align 4
  %43 = call i8* @bus_alloc_resource_any(i32 %40, i32 %41, i32* %5, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @sdhci_acpi_detach(i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %137

57:                                               ; preds = %39
  %58 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %8, align 8
  %59 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.sdhci_acpi_device*, %struct.sdhci_acpi_device** %8, align 8
  %65 = getelementptr inbounds %struct.sdhci_acpi_device, %struct.sdhci_acpi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %70, i32 0, i32 0
  %72 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %73 = call i32 @SDHCI_READ_4(i32 %69, %struct.TYPE_4__* %71, i32 %72)
  %74 = icmp eq i32 %73, 1147979954
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %77, i32 0, i32 0
  %79 = load i32, i32* @SDHCI_CAPABILITIES2, align 4
  %80 = call i32 @SDHCI_READ_4(i32 %76, %struct.TYPE_4__* %78, i32 %79)
  %81 = icmp eq i32 %80, 2055
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @SDHCI_QUIRK_MMC_DDR52, align 4
  %84 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_1MHZ, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %82, %75, %68, %63, %57
  %89 = load i32, i32* @sdhci_quirk_clear, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @sdhci_quirk_set, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %98 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %102 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %101, i32 0, i32 0
  %103 = call i32 @sdhci_init_slot(i32 %100, %struct.TYPE_4__* %102, i32 0)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %88
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @sdhci_acpi_detach(i32 %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %137

112:                                              ; preds = %88
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %115 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @INTR_TYPE_MISC, align 4
  %118 = load i32, i32* @INTR_MPSAFE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @sdhci_acpi_intr, align 4
  %121 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %122 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %123 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %122, i32 0, i32 1
  %124 = call i32 @bus_setup_intr(i32 %113, i32* %116, i32 %119, i32* null, i32 %120, %struct.sdhci_acpi_softc* %121, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %112
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @sdhci_acpi_detach(i32 %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %137

133:                                              ; preds = %112
  %134 = load %struct.sdhci_acpi_softc*, %struct.sdhci_acpi_softc** %4, align 8
  %135 = getelementptr inbounds %struct.sdhci_acpi_softc, %struct.sdhci_acpi_softc* %134, i32 0, i32 0
  %136 = call i32 @sdhci_start_slot(%struct.TYPE_4__* %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %127, %106, %51, %35, %15
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.sdhci_acpi_softc* @device_get_softc(i32) #1

declare dso_local %struct.sdhci_acpi_device* @sdhci_acpi_find_device(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sdhci_acpi_detach(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SDHCI_READ_4(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @sdhci_init_slot(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.sdhci_acpi_softc*, i32*) #1

declare dso_local i32 @sdhci_start_slot(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
