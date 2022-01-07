; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_alloc_desc_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_alloc_desc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32, i32, i32 }
%struct.mge_desc_wrapper = type { %struct.TYPE_3__*, %struct.mbuf*, i32, i8*, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.mbuf = type { i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate DMA memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mge_get_dma_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"can't load descriptor\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to create busdma tag for mbufs\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to create map for mbuf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mge_softc*, %struct.mge_desc_wrapper*, i32, i32*)* @mge_alloc_desc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_alloc_desc_dma(%struct.mge_softc* %0, %struct.mge_desc_wrapper* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mge_softc*, align 8
  %7 = alloca %struct.mge_desc_wrapper*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mge_desc_wrapper*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %6, align 8
  store %struct.mge_desc_wrapper* %1, %struct.mge_desc_wrapper** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %92, %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %7, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %20, i64 %22
  store %struct.mge_desc_wrapper* %23, %struct.mge_desc_wrapper** %10, align 8
  %24 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %25 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %28 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_3__** %28 to i8**
  %30 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %31 = load i32, i32* @BUS_DMA_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %36 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %35, i32 0, i32 4
  %37 = call i32 @bus_dmamem_alloc(i32 %26, i8** %29, i32 %34, i32* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %19
  %41 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %42 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @if_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %46 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %45, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %46, align 8
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %5, align 4
  br label %157

48:                                               ; preds = %19
  %49 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %50 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %53 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %56 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* @mge_get_dma_addr, align 4
  %59 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %60 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %59, i32 0, i32 3
  %61 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %62 = call i32 @bus_dmamap_load(i32 %51, i32 %54, %struct.TYPE_3__* %57, i32 4, i32 %58, i8** %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %48
  %66 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %67 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @if_printf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %71 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %74 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %77 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bus_dmamem_free(i32 %72, %struct.TYPE_3__* %75, i32 %78)
  %80 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %81 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %80, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %81, align 8
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %5, align 4
  br label %157

83:                                               ; preds = %48
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %86 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i8* %84, i8** %88, align 8
  %89 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %90 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %12, align 4
  br label %16

95:                                               ; preds = %16
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %97, i64 %100
  %102 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i8* %96, i8** %104, align 8
  %105 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %106 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bus_get_dma_tag(i32 %107)
  %109 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %110 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %111 = load i32, i32* @MCLBYTES, align 4
  %112 = load i32, i32* @MCLBYTES, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @bus_dma_tag_create(i32 %108, i32 1, i32 0, i32 %109, i32 %110, i32* null, i32* null, i32 %111, i32 1, i32 %112, i32 0, i32* null, i32* null, i32* %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %95
  %118 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %119 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @if_printf(i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %5, align 4
  br label %157

123:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %153, %123
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %129, i64 %131
  store %struct.mge_desc_wrapper* %132, %struct.mge_desc_wrapper** %10, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %136 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %135, i32 0, i32 2
  %137 = call i32 @bus_dmamap_create(i32 %134, i32 0, i32* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load %struct.mge_softc*, %struct.mge_softc** %6, align 8
  %142 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @if_printf(i32 %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %5, align 4
  br label %157

146:                                              ; preds = %128
  %147 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %148 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %147, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %148, align 8
  %149 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %10, align 8
  %150 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* null, i8** %152, align 8
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %124

156:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %140, %117, %65, %40
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.TYPE_3__*, i32, i32, i8**, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
