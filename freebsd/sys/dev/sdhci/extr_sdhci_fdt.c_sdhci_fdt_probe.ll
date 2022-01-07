; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt.c_sdhci_fdt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_fdt.c_sdhci_fdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_fdt_softc = type { i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_AUTO_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ARMADA38X SDHCI controller\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"generic fdt SDHCI controller\00", align 1
@SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_4K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Qualcomm FDT SDHCI controller\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Rockchip RK3399 fdt SDHCI controller\00", align 1
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Zynq-7000 generic fdt SDHCI controller\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"num-slots\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"no-1-8-v\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"wp-inverted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_fdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_fdt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_fdt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.sdhci_fdt_softc* @device_get_softc(i32 %7)
  store %struct.sdhci_fdt_softc* %8, %struct.sdhci_fdt_softc** %4, align 8
  %9 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %10 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %13, i32 0, i32 4
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_status_okay(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @compat_data, align 4
  %23 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %55 [
    i32 132, label %26
    i32 131, label %32
    i32 130, label %35
    i32 129, label %46
    i32 128, label %49
  ]

26:                                               ; preds = %20
  %27 = load i32, i32* @SDHCI_QUIRK_BROKEN_AUTO_STOP, align 4
  %28 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_set_desc(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %57

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %57

35:                                               ; preds = %20
  %36 = load i32, i32* @SDHCI_QUIRK_ALL_SLOTS_NON_REMOVABLE, align 4
  %37 = load i32, i32* @SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %40 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_4K, align 4
  %42 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %43 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_set_desc(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %57

46:                                               ; preds = %20
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_set_desc(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %57

49:                                               ; preds = %20
  %50 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %51 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %52 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_set_desc(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %57

55:                                               ; preds = %20
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %100

57:                                               ; preds = %49, %46, %35, %32, %26
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @ofw_bus_get_node(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @OF_getencprop(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %6, i32 8)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %67 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @OF_getencprop(i32 %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %6, i32 8)
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %76 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @OF_getencprop(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %6, i32 8)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %84 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @OF_hasprop(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %91 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @OF_hasprop(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.sdhci_fdt_softc*, %struct.sdhci_fdt_softc** %4, align 8
  %98 = getelementptr inbounds %struct.sdhci_fdt_softc, %struct.sdhci_fdt_softc* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %92
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %55, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.sdhci_fdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
