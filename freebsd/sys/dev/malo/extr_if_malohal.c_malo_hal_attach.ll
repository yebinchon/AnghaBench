; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i64, i32, i32*, i32, i32, i32, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s_hal\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MALO_CMDBUF_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"unable to allocate memory for cmd tag, error %u\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"unable to allocate memory for cmd buffer, error %u\0A\00", align 1
@malo_hal_load_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"unable to load cmd buffer, error %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.malo_hal* @malo_hal_attach(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.malo_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.malo_hal*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.malo_hal* @malloc(i32 48, i32 %14, i32 %17)
  store %struct.malo_hal* %18, %struct.malo_hal** %13, align 8
  %19 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %20 = icmp eq %struct.malo_hal* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.malo_hal* null, %struct.malo_hal** %6, align 8
  br label %134

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %25 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %28 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %31 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %33 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @device_get_nameunit(i32 %35)
  %37 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %39 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %38, i32 0, i32 5
  %40 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %41 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MTX_DEF, align 4
  %44 = call i32 @mtx_init(i32* %39, i32 %42, i32* null, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i32, i32* @MALO_CMDBUF_SIZE, align 4
  %50 = load i32, i32* @MALO_CMDBUF_SIZE, align 4
  %51 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %52 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %53 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %52, i32 0, i32 0
  %54 = call i32 @bus_dma_tag_create(i32 %45, i32 %46, i32 0, i32 %47, i32 %48, i32* null, i32* null, i32 %49, i32 1, i32 %50, i32 %51, i32* null, i32* null, i64* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %22
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %104

61:                                               ; preds = %22
  %62 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %63 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %66 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %65, i32 0, i32 2
  %67 = bitcast i32** %66 to i8**
  %68 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %69 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %72 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %71, i32 0, i32 1
  %73 = call i32 @bus_dmamem_alloc(i64 %64, i8** %67, i32 %70, i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %61
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %104

80:                                               ; preds = %61
  %81 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %82 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %85 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %88 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @MALO_CMDBUF_SIZE, align 4
  %91 = load i32, i32* @malo_hal_load_cb, align 4
  %92 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %93 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %92, i32 0, i32 3
  %94 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %95 = call i32 @bus_dmamap_load(i64 %83, i32 %86, i32* %89, i32 %90, i32 %91, i32* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %80
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %104

102:                                              ; preds = %80
  %103 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  store %struct.malo_hal* %103, %struct.malo_hal** %6, align 8
  br label %134

104:                                              ; preds = %98, %76, %57
  %105 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %106 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %111 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %114 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %117 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @bus_dmamem_free(i64 %112, i32* %115, i32 %118)
  br label %120

120:                                              ; preds = %109, %104
  %121 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %122 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %127 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @bus_dma_tag_destroy(i64 %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.malo_hal*, %struct.malo_hal** %13, align 8
  %132 = load i32, i32* @M_DEVBUF, align 4
  %133 = call i32 @free(%struct.malo_hal* %131, i32 %132)
  store %struct.malo_hal* null, %struct.malo_hal** %6, align 8
  br label %134

134:                                              ; preds = %130, %102, %21
  %135 = load %struct.malo_hal*, %struct.malo_hal** %6, align 8
  ret %struct.malo_hal* %135
}

declare dso_local %struct.malo_hal* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i64, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i64, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @free(%struct.malo_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
