; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.drm_device = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"drm_pci_alloc with non-power-of-two alignment %d\0A\00", align 1
@DRM_MEM_DMA = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"called while holding dma_lock\0A\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_NOCACHE = common dso_local global i32 0, align 4
@drm_pci_busdma_callback = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @drm_pci_alloc(%struct.drm_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = sub i64 %13, 1
  %15 = and i64 %12, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %121

21:                                               ; preds = %4
  %22 = load i32, i32* @DRM_MEM_DMA, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.TYPE_6__* @malloc(i32 12, i32 %22, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %121

30:                                               ; preds = %21
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 1
  %33 = load i32, i32* @MA_NOTOWNED, align 4
  %34 = call i32 @mtx_assert(i32* %32, i32 %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 1
  %37 = call i64 @mtx_owned(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %30
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bus_get_dma_tag(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @bus_dma_tag_create(i32 %45, i64 %46, i32 0, i32 %47, i32 %48, i32* null, i32* null, i64 %49, i32 1, i64 %50, i32 0, i32* null, i32* null, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = load i32, i32* @DRM_MEM_DMA, align 4
  %59 = call i32 @free(%struct.TYPE_6__* %57, i32 %58)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %121

60:                                               ; preds = %41
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %67 = load i32, i32* @BUS_DMA_ZERO, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BUS_DMA_NOCACHE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = call i32 @bus_dmamem_alloc(i32 %63, i32* %65, i32 %70, i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bus_dma_tag_destroy(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = load i32, i32* @DRM_MEM_DMA, align 4
  %83 = call i32 @free(%struct.TYPE_6__* %81, i32 %82)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %121

84:                                               ; preds = %60
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* @drm_pci_busdma_callback, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %98 = call i32 @bus_dmamap_load(i32 %87, i32 %90, i32 %93, i64 %94, i32 %95, %struct.TYPE_6__* %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %84
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bus_dmamem_free(i32 %104, i32 %107, i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bus_dma_tag_destroy(i32 %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = load i32, i32* @DRM_MEM_DMA, align 4
  %118 = call i32 @free(%struct.TYPE_6__* %116, i32 %117)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %121

119:                                              ; preds = %84
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %5, align 8
  br label %121

121:                                              ; preds = %119, %101, %76, %56, %29, %17
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %122
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i64, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
