; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bus_dmamap_dmar = type { i32, i32, %struct.bus_dma_tag_dmar*, i32 }

@M_DMAR_DMAMAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32**)* @dmar_bus_dmamap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamap_create(i64 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.bus_dma_tag_dmar*, align 8
  %9 = alloca %struct.bus_dmamap_dmar*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %11, %struct.bus_dma_tag_dmar** %8, align 8
  %12 = load i32, i32* @M_DMAR_DMAMAP, align 4
  %13 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %14 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DOMAINSET_PREF(i32 %16)
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @malloc_domainset(i32 24, i32 %12, i32 %17, i32 %20)
  %22 = bitcast i8* %21 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %22, %struct.bus_dmamap_dmar** %9, align 8
  %23 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %24 = icmp eq %struct.bus_dmamap_dmar* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32**, i32*** %7, align 8
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %81

28:                                               ; preds = %3
  %29 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %30 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %35 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @M_DMAR_DMAMAP, align 4
  %42 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %43 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DOMAINSET_PREF(i32 %45)
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = call i8* @malloc_domainset(i32 %40, i32 %41, i32 %46, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %51 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %53 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %33
  %57 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %58 = load i32, i32* @M_DMAR_DMAMAP, align 4
  %59 = call i32 @free_domain(%struct.bus_dmamap_dmar* %57, i32 %58)
  %60 = load i32**, i32*** %7, align 8
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %81

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %65 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %64, i32 0, i32 3
  %66 = call i32 @TAILQ_INIT(i32* %65)
  %67 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %68 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %69 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %68, i32 0, i32 2
  store %struct.bus_dma_tag_dmar* %67, %struct.bus_dma_tag_dmar** %69, align 8
  %70 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %71 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %73 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %8, align 8
  %75 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %9, align 8
  %79 = bitcast %struct.bus_dmamap_dmar* %78 to i32*
  %80 = load i32**, i32*** %7, align 8
  store i32* %79, i32** %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %63, %56, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i8* @malloc_domainset(i32, i32, i32, i32) #1

declare dso_local i32 @DOMAINSET_PREF(i32) #1

declare dso_local i32 @free_domain(%struct.bus_dmamap_dmar*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
