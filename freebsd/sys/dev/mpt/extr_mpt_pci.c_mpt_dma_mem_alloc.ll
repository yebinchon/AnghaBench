; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_dma_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_dma_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.mpt_map_info = type { i32, i64, %struct.mpt_softc* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot create parent dma tag\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cannot create a dma tag for replies\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot allocate %lu bytes of reply memory\0A\00", align 1
@mpt_map_rquest = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"error %d loading dma map for DMA reply queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_dma_mem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_dma_mem_alloc(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mpt_map_info, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %6 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

11:                                               ; preds = %1
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %13 = call i32 @MPT_MAX_REQUESTS(%struct.mpt_softc* %12)
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @malloc(i64 %16, i32 %17, i32 %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 6
  store i32* %22, i32** %24, align 8
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_get_dma_tag(i32 %28)
  %30 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %31 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %32 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %33 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %35, i32 0, i32 4
  %37 = call i64 @mpt_dma_tag_create(%struct.mpt_softc* %25, i32 %29, i32 1, i32 0, i32 %30, i32 %31, i32* null, i32* null, i32 %32, i32 %33, i32 %34, i32 0, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %11
  %40 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %41 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %108

42:                                               ; preds = %11
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %45 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = mul nsw i32 2, %50
  %52 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %53, i32 0, i32 3
  %55 = call i64 @mpt_dma_tag_create(%struct.mpt_softc* %43, i32 %46, i32 %47, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32 %51, i32 1, i32 %52, i32 0, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %59 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %108

60:                                               ; preds = %42
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %64, i32 0, i32 1
  %66 = bitcast i32* %65 to i8**
  %67 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %68, i32 0, i32 2
  %70 = call i64 @bus_dmamem_alloc(i32 %63, i8** %66, i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = mul nsw i32 2, %74
  %76 = sext i32 %75 to i64
  %77 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  store i32 1, i32* %2, align 4
  br label %108

78:                                               ; preds = %60
  %79 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %80 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %5, i32 0, i32 2
  store %struct.mpt_softc* %79, %struct.mpt_softc** %80, align 8
  %81 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %5, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %86 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %89 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32, i32* @mpt_map_rquest, align 4
  %94 = call i32 @bus_dmamap_load(i32 %84, i32 %87, i32 %90, i32 %92, i32 %93, %struct.mpt_map_info* %5, i32 0)
  %95 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %5, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %78
  %99 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %5, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %99, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  store i32 1, i32* %2, align 4
  br label %108

103:                                              ; preds = %78
  %104 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %98, %72, %57, %39, %10
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @MPT_MAX_REQUESTS(%struct.mpt_softc*) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i64 @mpt_dma_tag_create(%struct.mpt_softc*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.mpt_map_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
