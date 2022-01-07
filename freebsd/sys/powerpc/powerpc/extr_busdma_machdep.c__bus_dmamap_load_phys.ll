; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_load_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_load_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32* }

@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bus_dmamap_load_phys(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  br label %25

25:                                               ; preds = %21, %7
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @_bus_dmamap_count_phys(%struct.TYPE_15__* %33, %struct.TYPE_14__* %34, i32 %35, i64 %36, i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_15__* %44, %struct.TYPE_14__* %45, i32 %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %8, align 4
  br label %116

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %99, %54
  %56 = load i64, i64* %12, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %108

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @MIN(i64 %60, i64 %63)
  store i64 %64, i64* %17, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %58
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i64 @run_filter(%struct.TYPE_15__* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @PAGE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %76, %80
  %82 = call i64 @MIN(i64 %75, i64 %81)
  store i64 %82, i64* %17, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @add_bounce_page(%struct.TYPE_15__* %83, %struct.TYPE_14__* %84, i32 0, i32 %85, i64 %86)
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %74, %69, %58
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i64, i64* %17, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = call i64 @_bus_dmamap_addseg(%struct.TYPE_15__* %89, %struct.TYPE_14__* %90, i32 %91, i64 %92, i32* %93, i32* %94)
  store i64 %95, i64* %17, align 8
  %96 = load i64, i64* %17, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %108

99:                                               ; preds = %88
  %100 = load i64, i64* %17, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %12, align 8
  br label %55

108:                                              ; preds = %98, %55
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @EFBIG, align 4
  br label %114

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ]
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %50
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @_bus_dmamap_count_phys(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32, i64) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
