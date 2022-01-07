; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_map_bars.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_map_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@PCI_64BIT_BAR0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bus_alloc_resource failed rid=%#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ocs_softc*)* @ocs_map_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_map_bars(i32 %0, %struct.ocs_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocs_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ocs_softc* %1, %struct.ocs_softc** %5, align 8
  %6 = load i32, i32* @PCI_64BIT_BAR0, align 4
  %7 = call i32 @PCIR_BAR(i32 %6)
  %8 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %9 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %7, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %19, i32 %20)
  %22 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %21, i32** %26, align 8
  %27 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %2
  %45 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rman_get_bustag(i32* %50)
  %52 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %53 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %51, i32* %56, align 4
  %57 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @rman_get_bushandle(i32* %62)
  %64 = load %struct.ocs_softc*, %struct.ocs_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %44, %34
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
