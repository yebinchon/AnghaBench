; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_sglist_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_sglist_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32*, i32, i32*, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MLX_NSEG = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't allocate scatter/gather DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't allocate s/g table\0A\00", align 1
@mlx_dma_map_sg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*)* @mlx_sglist_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_sglist_map(%struct.mlx_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bus_dmamap_unload(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dmamem_free(i32* %28, i32* %31, i32 %34)
  br label %36

36:                                               ; preds = %25, %20
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @bus_dma_tag_destroy(i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %50 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp eq %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 2, i32* %6, align 4
  br label %64

58:                                               ; preds = %46
  %59 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %60 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %58, %57
  %65 = load i32, i32* @MLX_NSEG, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %67, %69
  store i64 %70, i64* %4, align 8
  %71 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %78 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %78, i32 0, i32 2
  %80 = call i32 @bus_dma_tag_create(i32 %73, i32 1, i32 0, i32 %74, i32 %75, i32* null, i32* null, i64 %76, i32 1, i32 %77, i32 0, i32* null, i32* null, i32** %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  br label %122

89:                                               ; preds = %64
  %90 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %94 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %93, i32 0, i32 0
  %95 = bitcast i32** %94 to i8**
  %96 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %97 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %98 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %97, i32 0, i32 1
  %99 = call i32 @bus_dmamem_alloc(i32* %92, i8** %95, i32 %96, i32* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %104 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %2, align 4
  br label %122

108:                                              ; preds = %89
  %109 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %110 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %113 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %116 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i32, i32* @mlx_dma_map_sg, align 4
  %120 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %121 = call i32 @bus_dmamap_load(i32* %111, i32 %114, i32* %117, i64 %118, i32 %119, %struct.mlx_softc* %120, i32 0)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %108, %102, %83
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32, i32*, i64, i32, %struct.mlx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
