; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_init_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.ciss_perf_config* }
%struct.ciss_perf_config = type { i32*, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't allocate reply DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't allocate reply memory\0A\00", align 1
@ciss_command_map_helper = common dso_local global i32 0, align 4
@CISS_SG_FETCH_NONE = common dso_local global i64 0, align 8
@CISS_SG_FETCH_1 = common dso_local global i64 0, align 8
@CISS_SG_FETCH_2 = common dso_local global i64 0, align 8
@CISS_SG_FETCH_4 = common dso_local global i64 0, align 8
@CISS_SG_FETCH_8 = common dso_local global i64 0, align 8
@CISS_SG_FETCH_16 = common dso_local global i64 0, align 8
@CISS_SG_FETCH_32 = common dso_local global i64 0, align 8
@CISS_COMMAND_ALLOC_SIZE = common dso_local global i32 0, align 4
@CISS_SG_FETCH_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_init_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_init_perf(%struct.ciss_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_perf_config*, align 8
  %5 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  %6 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %6, i32 0, i32 8
  %8 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %7, align 8
  store %struct.ciss_perf_config* %8, %struct.ciss_perf_config** %4, align 8
  %9 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %22 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %22, i32 0, i32 6
  %24 = call i64 @bus_dma_tag_create(i32 %17, i32 1, i32 0, i32 %18, i32 %19, i32* null, i32* null, i32 %20, i32 1, i32 %21, i32 0, i32* null, i32* null, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %28 = call i32 @ciss_printf(%struct.ciss_softc* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %137

30:                                               ; preds = %1
  %31 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %34, i32 0, i32 4
  %36 = bitcast i32* %35 to i8**
  %37 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %38 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %38, i32 0, i32 5
  %40 = call i64 @bus_dmamem_alloc(i32 %33, i8** %36, i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %44 = call i32 @ciss_printf(%struct.ciss_softc* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %137

46:                                               ; preds = %30
  %47 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ciss_command_map_helper, align 4
  %58 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %58, i32 0, i32 2
  %60 = call i32 @bus_dmamap_load(i32 %49, i32 %52, i32 %55, i32 %56, i32 %57, i32* %59, i32 0)
  %61 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @bzero(i32 %63, i32 %64)
  %66 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %71 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @CISS_SG_FETCH_NONE, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 1, i32* %74, align 4
  %75 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %76 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @CISS_SG_FETCH_1, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 1, i32* %79, align 4
  %80 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %81 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @CISS_SG_FETCH_2, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 1, i32* %84, align 4
  %85 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %86 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @CISS_SG_FETCH_4, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 2, i32* %89, align 4
  %90 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %91 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @CISS_SG_FETCH_8, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 3, i32* %94, align 4
  %95 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %96 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @CISS_SG_FETCH_16, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 5, i32* %99, align 4
  %100 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %101 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @CISS_SG_FETCH_32, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 9, i32* %104, align 4
  %105 = load i32, i32* @CISS_COMMAND_ALLOC_SIZE, align 4
  %106 = add nsw i32 %105, 15
  %107 = sdiv i32 %106, 16
  %108 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %109 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @CISS_SG_FETCH_MAX, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %117 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %119 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %118, i32 0, i32 2
  store i32 1, i32* %119, align 4
  %120 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %121 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %123 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %125 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %130 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ciss_perf_config*, %struct.ciss_perf_config** %4, align 8
  %133 = getelementptr inbounds %struct.ciss_perf_config, %struct.ciss_perf_config* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %131, i32* %136, align 4
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %46, %42, %26
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
