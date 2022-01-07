; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_load_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c__bus_dmamap_load_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i64 }

@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bus_dmamap_load_phys(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  br label %25

25:                                               ; preds = %21, %7
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @_bus_dmamap_count_phys(%struct.TYPE_17__* %33, %struct.TYPE_16__* %34, i32 %35, i64 %36, i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__* %44, %struct.TYPE_16__* %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %8, align 4
  br label %119

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %101, %54
  %56 = load i64, i64* %12, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @MIN(i64 %60, i32 %63)
  store i64 %64, i64* %17, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %58
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i64 @run_filter(%struct.TYPE_17__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i64, i64* %17, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i64 @MIN(i64 %82, i32 %83)
  store i64 %84, i64* %17, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @add_bounce_page(%struct.TYPE_17__* %85, %struct.TYPE_16__* %86, i32 0, i32 %87, i64 %88)
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %81, %76, %71, %58
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i64, i64* %17, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = call i64 @_bus_dmamap_addseg(%struct.TYPE_17__* %91, %struct.TYPE_16__* %92, i32 %93, i64 %94, i32* %95, i32* %96)
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %110

101:                                              ; preds = %90
  %102 = load i64, i64* %17, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %12, align 8
  %109 = sub nsw i64 %108, %107
  store i64 %109, i64* %12, align 8
  br label %55

110:                                              ; preds = %100, %55
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = call i32 @bus_dmamap_unload(%struct.TYPE_17__* %114, %struct.TYPE_16__* %115)
  %117 = load i32, i32* @EFBIG, align 4
  store i32 %117, i32* %8, align 4
  br label %119

118:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %113, %50
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local i32 @_bus_dmamap_count_phys(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i64 @run_filter(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i64) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_unload(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
