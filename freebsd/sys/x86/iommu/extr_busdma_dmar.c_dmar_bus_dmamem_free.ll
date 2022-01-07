; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamem_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bus_dmamap_dmar = type { i32 }

@BUS_DMAMAP_DMAR_MALLOC = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@BUS_DMAMAP_DMAR_KMEM_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"dmar_bus_dmamem_free for non alloced map %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64)* @dmar_bus_dmamem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_bus_dmamem_free(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bus_dma_tag_dmar*, align 8
  %8 = alloca %struct.bus_dmamap_dmar*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %10, %struct.bus_dma_tag_dmar** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %12, %struct.bus_dmamap_dmar** %8, align 8
  %13 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %8, align 8
  %14 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BUS_DMAMAP_DMAR_MALLOC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = call i32 @free_domain(i8* %20, i32 %21)
  %23 = load i32, i32* @BUS_DMAMAP_DMAR_MALLOC, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %8, align 8
  %26 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %8, align 8
  %31 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BUS_DMAMAP_DMAR_KMEM_ALLOC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %8, align 8
  %38 = bitcast %struct.bus_dmamap_dmar* %37 to i8*
  %39 = call i32 @KASSERT(i32 %36, i8* %38)
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %7, align 8
  %43 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kmem_free(i32 %41, i32 %45)
  %47 = load i32, i32* @BUS_DMAMAP_DMAR_KMEM_ALLOC, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %8, align 8
  %50 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %29, %19
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @dmar_bus_dmamap_destroy(i64 %54, i64 %55)
  ret void
}

declare dso_local i32 @free_domain(i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i32 @dmar_bus_dmamap_destroy(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
