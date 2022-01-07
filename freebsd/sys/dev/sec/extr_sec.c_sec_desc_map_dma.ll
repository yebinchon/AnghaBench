; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_desc_map_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_desc_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_softc = type { i32 }
%struct.sec_dma_mem = type { i32, i32*, i32, i32 }
%struct.sec_desc_map_info = type { i32 }
%struct.mbuf = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SEC_MAX_DMA_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SEC_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to allocate busdma tag, error %i!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to create DMA map, error %i!\0A\00", align 1
@sec_dma_map_desc_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@sec_dma_map_desc_cb2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot get address of the DMA memory, error %i!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_softc*, %struct.sec_dma_mem*, i8*, i32, i32, %struct.sec_desc_map_info*)* @sec_desc_map_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_desc_map_dma(%struct.sec_softc* %0, %struct.sec_dma_mem* %1, i8* %2, i32 %3, i32 %4, %struct.sec_desc_map_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sec_softc*, align 8
  %9 = alloca %struct.sec_dma_mem*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sec_desc_map_info*, align 8
  %14 = alloca i32, align 4
  store %struct.sec_softc* %0, %struct.sec_softc** %8, align 8
  store %struct.sec_dma_mem* %1, %struct.sec_dma_mem** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sec_desc_map_info* %5, %struct.sec_desc_map_info** %13, align 8
  %15 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %16 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @EBUSY, align 4
  store i32 %20, i32* %7, align 4
  br label %144

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %33 [
    i32 129, label %23
    i32 128, label %24
    i32 130, label %29
  ]

23:                                               ; preds = %21
  br label %35

24:                                               ; preds = %21
  %25 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %26 = call i32 @SEC_FREE_LT_CNT(%struct.sec_softc* %25)
  %27 = load i32, i32* @SEC_MAX_DMA_BLOCK_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to %struct.mbuf*
  %32 = call i32 @m_length(%struct.mbuf* %31, i32* null)
  store i32 %32, i32* %11, align 4
  br label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %7, align 4
  br label %144

35:                                               ; preds = %29, %24, %23
  %36 = load i32, i32* @SEC_DMA_ALIGNMENT, align 4
  %37 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %41 = call i32 @SEC_FREE_LT_CNT(%struct.sec_softc* %40)
  %42 = load i32, i32* @SEC_MAX_DMA_BLOCK_SIZE, align 4
  %43 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %44 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %43, i32 0, i32 2
  %45 = call i32 @bus_dma_tag_create(i32* null, i32 %36, i32 0, i32 %37, i32 %38, i32* null, i32* null, i32 %39, i32 %41, i32 %42, i32 0, i32* null, i32* null, i32* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %50 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %55 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %144

57:                                               ; preds = %35
  %58 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %59 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %62 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %61, i32 0, i32 3
  %63 = call i32 @bus_dmamap_create(i32 %60, i32 0, i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %68 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %73 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @bus_dma_tag_destroy(i32 %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  br label %144

77:                                               ; preds = %57
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %116 [
    i32 129, label %79
    i32 128, label %92
    i32 130, label %104
  ]

79:                                               ; preds = %77
  %80 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %81 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %84 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @sec_dma_map_desc_cb, align 4
  %89 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %13, align 8
  %90 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %91 = call i32 @bus_dmamap_load(i32 %82, i32 %85, i8* %86, i32 %87, i32 %88, %struct.sec_desc_map_info* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  br label %116

92:                                               ; preds = %77
  %93 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %94 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %97 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @sec_dma_map_desc_cb2, align 4
  %101 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %13, align 8
  %102 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %103 = call i32 @bus_dmamap_load_uio(i32 %95, i32 %98, i8* %99, i32 %100, %struct.sec_desc_map_info* %101, i32 %102)
  store i32 %103, i32* %14, align 4
  br label %116

104:                                              ; preds = %77
  %105 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %106 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %109 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* @sec_dma_map_desc_cb2, align 4
  %113 = load %struct.sec_desc_map_info*, %struct.sec_desc_map_info** %13, align 8
  %114 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %115 = call i32 @bus_dmamap_load_mbuf(i32 %107, i32 %110, i8* %111, i32 %112, %struct.sec_desc_map_info* %113, i32 %114)
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %77, %104, %92, %79
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load %struct.sec_softc*, %struct.sec_softc** %8, align 8
  %121 = getelementptr inbounds %struct.sec_softc, %struct.sec_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %126 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %129 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bus_dmamap_destroy(i32 %127, i32 %130)
  %132 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %133 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @bus_dma_tag_destroy(i32 %134)
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %7, align 4
  br label %144

137:                                              ; preds = %116
  %138 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %139 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %9, align 8
  %143 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %142, i32 0, i32 1
  store i32* %141, i32** %143, align 8
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %137, %119, %66, %48, %33, %19
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @SEC_FREE_LT_CNT(%struct.sec_softc*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.sec_desc_map_info*, i32) #1

declare dso_local i32 @bus_dmamap_load_uio(i32, i32, i8*, i32, %struct.sec_desc_map_info*, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, i8*, i32, %struct.sec_desc_map_info*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
