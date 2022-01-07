; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_alloc_dma_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_alloc_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to allocate busdma %s tag\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to allocate %s DMA safe memory\0A\00", align 1
@tsec_map_dma_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot get address of the %s descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, i8**, i8*, i8*)* @tsec_alloc_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_alloc_dma_desc(i32 %0, i32* %1, i32* %2, i32 %3, i8** %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %19 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @bus_dma_tag_create(i32* null, i32 %17, i32 0, i32 %18, i32 %19, i32* null, i32* null, i32 %20, i32 1, i32 %21, i32 0, i32* null, i32* null, i32* %22)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8**, i8*** %13, align 8
  store i8* null, i8** %30, align 8
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %8, align 4
  br label %83

32:                                               ; preds = %7
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i8**, i8*** %13, align 8
  %36 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %37 = load i32, i32* @BUS_DMA_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @bus_dmamem_alloc(i32 %34, i8** %35, i32 %38, i32* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %15, align 8
  %46 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bus_dma_tag_destroy(i32 %48)
  %50 = load i8**, i8*** %13, align 8
  store i8* null, i8** %50, align 8
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %8, align 4
  br label %83

52:                                               ; preds = %32
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i8**, i8*** %13, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @tsec_map_dma_addr, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %63 = call i32 @bus_dmamap_load(i32 %54, i32 %56, i8* %58, i32 %59, i32 %60, i8* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %15, align 8
  %69 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i8**, i8*** %13, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bus_dmamem_free(i32 %71, i8* %73, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bus_dma_tag_destroy(i32 %78)
  %80 = load i8**, i8*** %13, align 8
  store i8* null, i8** %80, align 8
  %81 = load i32, i32* @ENXIO, align 4
  store i32 %81, i32* %8, align 4
  br label %83

82:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %66, %43, %26
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
