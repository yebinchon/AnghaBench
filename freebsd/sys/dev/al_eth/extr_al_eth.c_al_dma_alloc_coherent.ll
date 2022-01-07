; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to create bus tag, ret = %d\0A\00", align 1
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate dmamem, ret = %d\0A\00", align 1
@al_dma_map_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to allocate bus_dmamap_load, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32*, i32*, i8**, i32)* @al_dma_alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_dma_alloc_coherent(%struct.device* %0, i32* %1, i32* %2, i32* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sdiv i32 %17, %18
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i32 @bus_get_dma_tag(%struct.device* %23)
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @bus_dma_tag_create(i32 %24, i32 8, i32 0, i32 %25, i32 %26, i32* null, i32* null, i32 %27, i32 1, i32 %28, i32 %29, i32* null, i32* null, i32* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @device_printf(%struct.device* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %7, align 4
  br label %74

39:                                               ; preds = %6
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i8**, i8*** %12, align 8
  %43 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %44 = load i32, i32* @BUS_DMA_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @bus_dmamem_alloc(i32 %41, i8** %42, i32 %45, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @device_printf(%struct.device* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %74

55:                                               ; preds = %39
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i8**, i8*** %12, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @al_dma_map_addr, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @bus_dmamap_load(i32 %57, i32 %59, i8* %61, i32 %62, i32 %63, i32* %64, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @device_printf(%struct.device* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %68, %50, %34
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(%struct.device*) #1

declare dso_local i32 @device_printf(%struct.device*, i8*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
