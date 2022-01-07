; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_fdt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_fdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"gianfar\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fsl,etsec2\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@TSEC_REG_ID = common dso_local global i32 0, align 4
@TSEC_ETSEC_ID = common dso_local global i32 0, align 4
@TSEC_REG_ID2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"could not identify TSEC type\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Enhanced Three-Speed Ethernet Controller\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Three-Speed Ethernet Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tsec_fdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_fdt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsec_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ofw_bus_status_okay(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %118

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32* @ofw_bus_get_type(i32 %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @ofw_bus_get_type(i32 %16)
  %18 = call i64 @strcmp(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %11
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %118

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @ofw_bus_is_compatible(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @ofw_bus_is_compatible(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %118

32:                                               ; preds = %26, %22
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.tsec_softc* @device_get_softc(i32 %33)
  store %struct.tsec_softc* %34, %struct.tsec_softc** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @ofw_bus_is_compatible(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %40 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %105

41:                                               ; preds = %32
  %42 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %43 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %47 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %46, i32 0, i32 2
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = call i32* @bus_alloc_resource_any(i32 %44, i32 %45, i64* %47, i32 %48)
  %50 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %51 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %118

58:                                               ; preds = %41
  %59 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %60 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rman_get_bushandle(i32* %61)
  %63 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %64 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %67 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @rman_get_bustag(i32* %68)
  %70 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %71 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %74 = load i32, i32* @TSEC_REG_ID, align 4
  %75 = call i32 @TSEC_READ(%struct.tsec_softc* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 16
  %78 = load i32, i32* @TSEC_ETSEC_ID, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %83 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %85 = load i32, i32* @TSEC_REG_ID2, align 4
  %86 = call i32 @TSEC_READ(%struct.tsec_softc* %84, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %92 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %95 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_release_resource(i32 %89, i32 %90, i64 %93, i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %58
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %2, align 4
  br label %118

104:                                              ; preds = %58
  br label %105

105:                                              ; preds = %104, %38
  %106 = load %struct.tsec_softc*, %struct.tsec_softc** %4, align 8
  %107 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @device_set_desc(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @device_set_desc(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %100, %56, %30, %20, %9
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32* @ofw_bus_get_type(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local %struct.tsec_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
