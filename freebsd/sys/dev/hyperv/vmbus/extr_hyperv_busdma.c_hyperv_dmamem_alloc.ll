; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_hyperv_busdma.c_hyperv_dmamem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_hyperv_busdma.c_hyperv_dmamem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hyperv_dma = type { i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@HYPERV_DMA_MASK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@hyperv_dma_map_paddr = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hyperv_dmamem_alloc(i32 %0, i32 %1, i32 %2, i32 %3, %struct.hyperv_dma* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hyperv_dma*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.hyperv_dma* %4, %struct.hyperv_dma** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %20 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %24 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %23, i32 0, i32 0
  %25 = call i32 @bus_dma_tag_create(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32* null, i32* null, i32 %21, i32 1, i32 %22, i32 0, i32* null, i32* null, i32* %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %79

29:                                               ; preds = %6
  %30 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %31 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @HYPERV_DMA_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %39 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %38, i32 0, i32 1
  %40 = call i32 @bus_dmamem_alloc(i32 %32, i8** %14, i32 %37, i32* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %45 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_dma_tag_destroy(i32 %46)
  store i8* null, i8** %7, align 8
  br label %79

48:                                               ; preds = %29
  %49 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %50 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %53 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @hyperv_dma_map_paddr, align 4
  %58 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %59 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %58, i32 0, i32 2
  %60 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %61 = call i32 @bus_dmamap_load(i32 %51, i32 %54, i8* %55, i32 %56, i32 %57, i32* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %48
  %65 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %66 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %70 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_dmamem_free(i32 %67, i8* %68, i32 %71)
  %73 = load %struct.hyperv_dma*, %struct.hyperv_dma** %12, align 8
  %74 = getelementptr inbounds %struct.hyperv_dma, %struct.hyperv_dma* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bus_dma_tag_destroy(i32 %75)
  store i8* null, i8** %7, align 8
  br label %79

77:                                               ; preds = %48
  %78 = load i8*, i8** %14, align 8
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %77, %64, %43, %28
  %80 = load i8*, i8** %7, align 8
  ret i8* %80
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
