; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.bus_dmamap_dmar = type { i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_NOCACHE = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i64 0, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@BUS_DMAMAP_DMAR_MALLOC = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMAMAP_DMAR_KMEM_ALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8**, i32, i32**)* @dmar_bus_dmamem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamem_alloc(i64 %0, i8** %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.bus_dma_tag_dmar*, align 8
  %11 = alloca %struct.bus_dmamap_dmar*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32**, i32*** %9, align 8
  %18 = call i32 @dmar_bus_dmamap_create(i64 %15, i32 %16, i32** %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %132

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @M_NOWAIT, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @M_WAITOK, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BUS_DMA_ZERO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @M_ZERO, align 4
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BUS_DMA_NOCACHE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @VM_MEMATTR_UNCACHEABLE, align 8
  br label %53

51:                                               ; preds = %41
  %52 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %6, align 8
  %56 = inttoptr i64 %55 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %56, %struct.bus_dma_tag_dmar** %10, align 8
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %59, %struct.bus_dmamap_dmar** %11, align 8
  %60 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %61 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %53
  %67 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %68 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %72 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %70, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %66
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %82 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @M_DEVBUF, align 4
  %86 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %87 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @DOMAINSET_PREF(i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = call i8* @malloc_domainset(i64 %84, i32 %85, i32 %90, i32 %91)
  %93 = load i8**, i8*** %7, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @BUS_DMAMAP_DMAR_MALLOC, align 4
  %95 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %11, align 8
  %96 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %120

99:                                               ; preds = %76, %66, %53
  %100 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %101 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @DOMAINSET_PREF(i32 %103)
  %105 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %10, align 8
  %106 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %111 = load i64, i64* %14, align 8
  %112 = call i64 @kmem_alloc_attr_domainset(i32 %104, i64 %108, i32 %109, i64 0, i32 %110, i64 %111)
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8**, i8*** %7, align 8
  store i8* %113, i8** %114, align 8
  %115 = load i32, i32* @BUS_DMAMAP_DMAR_KMEM_ALLOC, align 4
  %116 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %11, align 8
  %117 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %99, %80
  %121 = load i8**, i8*** %7, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i64, i64* %6, align 8
  %126 = load i32**, i32*** %9, align 8
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @dmar_bus_dmamap_destroy(i64 %125, i32* %127)
  %129 = load i32**, i32*** %9, align 8
  store i32* null, i32** %129, align 8
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %5, align 4
  br label %132

131:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %124, %21
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @dmar_bus_dmamap_create(i64, i32, i32**) #1

declare dso_local i8* @malloc_domainset(i64, i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i64 @kmem_alloc_attr_domainset(i32, i64, i32, i64, i32, i64) #1

declare dso_local i32 @dmar_bus_dmamap_destroy(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
