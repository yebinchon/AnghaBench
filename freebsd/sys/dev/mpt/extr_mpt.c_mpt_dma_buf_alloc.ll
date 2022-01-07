; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_dma_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_dma_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, i32, %struct.TYPE_2__*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64, i32*, i64, i32 }
%struct.mpt_map_info = type { i32, i64, %struct.mpt_softc* }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot create a dma tag for data buffers\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot create a dma tag for requests\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"cannot allocate %d bytes of request memory\0A\00", align 1
@mpt_map_rquest = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"error %d loading dma map for DMA request queue\0A\00", align 1
@MPT_REQUEST_AREA = common dso_local global i64 0, align 8
@MPT_SENSE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"error %d creating per-cmd DMA maps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_dma_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_dma_buf_alloc(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.mpt_map_info, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %27 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %27, i32 0, i32 2
  %29 = call i64 @mpt_dma_tag_create(%struct.mpt_softc* %11, i32 %14, i32 1, i32 0, i32 %15, i32 %16, i32* null, i32* null, i32 %22, i32 %25, i32 %26, i32 0, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %164

34:                                               ; preds = %1
  %35 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %41 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %43 = call i32 @MPT_REQ_MEM_SIZE(%struct.mpt_softc* %42)
  %44 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 6
  %47 = call i64 @mpt_dma_tag_create(%struct.mpt_softc* %35, i32 %38, i32 %39, i32 0, i32 %40, i32 %41, i32* null, i32* null, i32 %43, i32 1, i32 %44, i32 0, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %51 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %164

52:                                               ; preds = %34
  %53 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %54 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %56, i32 0, i32 4
  %58 = bitcast i32** %57 to i8**
  %59 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %60 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %62, i32 0, i32 5
  %64 = call i64 @bus_dmamem_alloc(i32 %55, i8** %58, i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %69 = call i32 @MPT_REQ_MEM_SIZE(%struct.mpt_softc* %68)
  %70 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 1, i32* %2, align 4
  br label %164

71:                                               ; preds = %52
  %72 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %4, i32 0, i32 2
  store %struct.mpt_softc* %72, %struct.mpt_softc** %73, align 8
  %74 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %4, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %76 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %82 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %85 = call i32 @MPT_REQ_MEM_SIZE(%struct.mpt_softc* %84)
  %86 = load i32, i32* @mpt_map_rquest, align 4
  %87 = call i32 @bus_dmamap_load(i32 %77, i32 %80, i32* %83, i32 %85, i32 %86, %struct.mpt_map_info* %4, i32 0)
  %88 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %4, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %71
  %92 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %93 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %4, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  store i32 1, i32* %2, align 4
  br label %164

96:                                               ; preds = %71
  %97 = getelementptr inbounds %struct.mpt_map_info, %struct.mpt_map_info* %4, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %100 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  store i32 0, i32* %8, align 4
  %101 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %6, align 8
  %104 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %109 = call i32 @MPT_REQ_MEM_SIZE(%struct.mpt_softc* %108)
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %107, %110
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %162, %96
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %163

116:                                              ; preds = %112
  %117 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %118 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  store %struct.TYPE_2__* %122, %struct.TYPE_2__** %10, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  store i32 %123, i32* %126, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i32* %130, i32** %132, align 8
  %133 = load i64, i64* @MPT_REQUEST_AREA, align 8
  %134 = load i64, i64* %6, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %6, align 8
  %136 = load i64, i64* @MPT_REQUEST_AREA, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 %136
  store i32* %138, i32** %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @MPT_SENSE_SIZE, align 8
  %141 = sub nsw i64 %139, %140
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i64, i64* @MPT_SENSE_SIZE, align 8
  %146 = sub i64 0, %145
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i32* %147, i32** %149, align 8
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %151 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = call i32 @bus_dmamap_create(i32 %152, i32 0, i32* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %116
  %159 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  store i32 1, i32* %2, align 4
  br label %164

162:                                              ; preds = %116
  br label %112

163:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %158, %91, %66, %49, %31
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @mpt_dma_tag_create(%struct.mpt_softc*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @MPT_REQ_MEM_SIZE(%struct.mpt_softc*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.mpt_map_info*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
