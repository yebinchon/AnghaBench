; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_mem.c_os_dma_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_mem.c_os_dma_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dma_mem = type { i64, i32, i64, i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't allocate DMA tag with error = 0x%x\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"can't allocate DMA memory for required object \09\09\09\09with error = 0x%x\0A\00", align 1
@os_dma_map = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"can't load DMA memory for required \09\09\09object with error = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"failed OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_dma_mem_alloc(%struct.TYPE_5__* %0, %struct.dma_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.dma_mem*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.dma_mem* %1, %struct.dma_mem** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %12 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %17 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %20 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %23 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %22, i32 0, i32 0
  %24 = call i32 @bus_dma_tag_create(i32 %10, i32 %13, i32 0, i32 %14, i32 %15, i32* null, i32* null, i32 %18, i32 1, i32 %21, i32 0, i32* null, i32* null, i64* %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DBG_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %102

29:                                               ; preds = %2
  %30 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %31 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %34 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %33, i32 0, i32 2
  %35 = bitcast i64* %34 to i8**
  %36 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %37 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %38 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %37, i32 0, i32 1
  %39 = call i32 @bus_dmamem_alloc(i64 %32, i8** %35, i32 %36, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @DBG_ERR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %91

44:                                               ; preds = %29
  %45 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %46 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %49 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %52 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %55 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @os_dma_map, align 4
  %58 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %59 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %58, i32 0, i32 4
  %60 = call i32 @bus_dmamap_load(i64 %47, i32 %50, i64 %53, i32 %56, i32 %57, i32* %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DBG_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %74

65:                                               ; preds = %44
  %66 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %67 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %70 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memset(i64 %68, i32 0, i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %105

74:                                               ; preds = %62
  %75 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %76 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %81 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %84 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %87 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_dmamem_free(i64 %82, i64 %85, i32 %88)
  br label %90

90:                                               ; preds = %79, %74
  br label %91

91:                                               ; preds = %90, %41
  %92 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %93 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.dma_mem*, %struct.dma_mem** %5, align 8
  %98 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @bus_dma_tag_destroy(i64 %99)
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %26
  %103 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %65
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i64, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i64, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
