; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot allocate descriptor tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot allocate descriptor memory\0A\00", align 1
@alloc_ring_cb = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@TX_MAX_SIZE = common dso_local global i64 0, align 8
@TX_MAX_SEGS = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot allocate descriptor entry tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i64, i64, i32*, i8*, i8*, i32**, i32*, i32*, i32**)* @alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ring(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3, i32* %4, i8* %5, i8* %6, i32** %7, i32* %8, i32* %9, i32** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %13, align 8
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i32* %4, i32** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32** %7, i32*** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32** %10, i32*** %23, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = mul i64 %28, %29
  store i64 %30, i64* %24, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i64, i64* %24, align 8
  %38 = load i64, i64* %24, align 8
  %39 = load i32**, i32*** %20, align 8
  %40 = call i32 @bus_dma_tag_create(i32* %33, i32 %34, i32 0, i32 %35, i32 %36, i32* null, i32* null, i64 %37, i32 1, i64 %38, i32 0, i32* null, i32* null, i32** %39)
  store i32 %40, i32* %27, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %11
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %12, align 4
  br label %114

48:                                               ; preds = %11
  %49 = load i32**, i32*** %20, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %52 = load i32*, i32** %21, align 8
  %53 = call i32 @bus_dmamem_alloc(i32* %50, i8** %26, i32 %51, i32* %52)
  store i32 %53, i32* %27, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %12, align 4
  br label %114

61:                                               ; preds = %48
  %62 = load i32**, i32*** %20, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %26, align 8
  %67 = load i64, i64* %24, align 8
  %68 = load i32, i32* @alloc_ring_cb, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @bus_dmamap_load(i32* %63, i32 %65, i8* %66, i64 %67, i32 %68, i32* %69, i32 0)
  %71 = load i8*, i8** %26, align 8
  %72 = load i64, i64* %24, align 8
  %73 = call i32 @bzero(i8* %71, i64 %72)
  %74 = load i8*, i8** %26, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = bitcast i8* %75 to i8**
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %61
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %16, align 8
  %82 = mul i64 %80, %81
  store i64 %82, i64* %24, align 8
  %83 = load i64, i64* %24, align 8
  %84 = load i32, i32* @M_DEVBUF, align 4
  %85 = load i32, i32* @M_WAITOK, align 4
  %86 = load i32, i32* @M_ZERO, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @malloc(i64 %83, i32 %84, i32 %87)
  store i8* %88, i8** %25, align 8
  %89 = load i8*, i8** %25, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = bitcast i8* %90 to i8**
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %79, %61
  %93 = load i32*, i32** %22, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %12, align 4
  br label %114

96:                                               ; preds = %92
  %97 = load i32*, i32** %22, align 8
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i64, i64* @TX_MAX_SIZE, align 8
  %101 = load i32, i32* @TX_MAX_SEGS, align 4
  %102 = load i64, i64* @TX_MAX_SIZE, align 8
  %103 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %104 = load i32**, i32*** %23, align 8
  %105 = call i32 @bus_dma_tag_create(i32* %97, i32 1, i32 0, i32 %98, i32 %99, i32* null, i32* null, i64 %100, i32 %101, i64 %102, i32 %103, i32* null, i32* null, i32** %104)
  store i32 %105, i32* %27, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %96
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* %12, align 4
  br label %114

113:                                              ; preds = %96
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %107, %95, %55, %42
  %115 = load i32, i32* %12, align 4
  ret i32 %115
}

declare dso_local i32 @bus_dma_tag_create(i32*, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32*, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32*, i32, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
