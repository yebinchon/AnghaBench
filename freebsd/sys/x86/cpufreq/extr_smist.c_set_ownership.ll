; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_set_ownership.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_set_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smist_softc = type { i32, i32 }
%struct.set_ownership_data = type { i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"can't create mem tag\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't alloc mapped mem\0A\00", align 1
@set_ownership_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"can't load mem\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"taking ownership over BIOS return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ownership(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smist_softc*, align 8
  %5 = alloca %struct.set_ownership_data, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.smist_softc* @device_get_softc(i32 %8)
  store %struct.smist_softc* %9, %struct.smist_softc** %4, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* @busdma_lock_mutex, align 4
  %16 = call i64 @bus_dma_tag_create(i32* null, i32 %10, i32 0, i32 %11, i32 %12, i32* null, i32* null, i32 %13, i32 1, i32 %14, i32 0, i32 %15, i32* @Giant, i32* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %86

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 1
  %25 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %26 = call i64 @bus_dmamem_alloc(i32 %23, i32* %24, i32 %25, i32* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bus_dma_tag_destroy(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %86

34:                                               ; preds = %22
  %35 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %36 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load %struct.smist_softc*, %struct.smist_softc** %4, align 8
  %40 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* @set_ownership_cb, align 4
  %49 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %50 = call i64 @bus_dmamap_load(i32 %43, i32 %44, i32 %46, i32 %47, i32 %48, %struct.set_ownership_data* %5, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %34
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @bus_dmamem_free(i32 %53, i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @bus_dma_tag_destroy(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %86

63:                                               ; preds = %34
  %64 = load i32, i32* %3, align 4
  %65 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @DPRINT(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @bus_dmamap_unload(i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @bus_dmamem_free(i32 %71, i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @bus_dma_tag_destroy(i32 %76)
  %78 = getelementptr inbounds %struct.set_ownership_data, %struct.set_ownership_data* %5, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %63
  %82 = load i32, i32* @ENXIO, align 4
  br label %84

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %52, %28, %18
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.smist_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.set_ownership_data*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @DPRINT(i32, i8*, i64) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
