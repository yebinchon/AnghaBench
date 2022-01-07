; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_task_dmamap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_task_dmamap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }
%struct.bus_dmamap_dmar = type { i32, i32, i32, i32, i32, %struct.bus_dma_tag_dmar* }
%struct.dmar_unit = type { i32 }

@delay_link = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dmar_bus_task_dmamap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_bus_task_dmamap(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bus_dma_tag_dmar*, align 8
  %6 = alloca %struct.bus_dmamap_dmar*, align 8
  %7 = alloca %struct.dmar_unit*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.dmar_unit*
  store %struct.dmar_unit* %9, %struct.dmar_unit** %7, align 8
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %11 = call i32 @DMAR_LOCK(%struct.dmar_unit* %10)
  br label %12

12:                                               ; preds = %66, %2
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %14 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %13, i32 0, i32 0
  %15 = call %struct.bus_dmamap_dmar* @TAILQ_FIRST(i32* %14)
  store %struct.bus_dmamap_dmar* %15, %struct.bus_dmamap_dmar** %6, align 8
  %16 = icmp ne %struct.bus_dmamap_dmar* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %12
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 0
  %20 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %21 = load i32, i32* @delay_link, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.bus_dmamap_dmar* %20, i32 %21)
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %24 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %23)
  %25 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %26 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %25, i32 0, i32 5
  %27 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %26, align 8
  store %struct.bus_dma_tag_dmar* %27, %struct.bus_dma_tag_dmar** %5, align 8
  %28 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %29 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %31 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %5, align 8
  %33 = ptrtoint %struct.bus_dma_tag_dmar* %32 to i32
  %34 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %35 = ptrtoint %struct.bus_dmamap_dmar* %34 to i32
  %36 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %37 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %36, i32 0, i32 4
  %38 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %39 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %42 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %45 = call i32 @bus_dmamap_load_mem(i32 %33, i32 %35, i32* %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %47 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %49 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %17
  %53 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %5, align 8
  %54 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %5, align 8
  %58 = getelementptr inbounds %struct.bus_dma_tag_dmar, %struct.bus_dma_tag_dmar* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BUS_DMA_UNLOCK, align 4
  %62 = call i32 %56(i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %17
  %64 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %65 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %52
  %67 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %6, align 8
  %68 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %70 = call i32 @DMAR_LOCK(%struct.dmar_unit* %69)
  br label %12

71:                                               ; preds = %12
  %72 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %73 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %72)
  ret void
}

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local %struct.bus_dmamap_dmar* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bus_dmamap_dmar*, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @bus_dmamap_load_mem(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
