; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_load_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_load_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__, i32* }
%struct.TYPE_17__ = type { i64 }

@nobounce_dmamap = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64, i32, i32*, i32*)* @bounce_bus_dmamap_load_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bounce_bus_dmamap_load_phys(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i64 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  store %struct.TYPE_15__* @nobounce_dmamap, %struct.TYPE_15__** %10, align 8
  br label %22

22:                                               ; preds = %21, %7
  %23 = load i32*, i32** %14, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %14, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @_bus_dmamap_count_phys(%struct.TYPE_16__* %37, %struct.TYPE_15__* %38, i32 %39, i64 %40, i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_16__* %48, %struct.TYPE_15__* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %8, align 4
  br label %129

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %112, %58
  %60 = load i64, i64* %12, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %17, align 4
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @MIN(i64 %64, i64 %68)
  store i64 %69, i64* %16, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %62
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %17, align 4
  %85 = call i64 @bus_dma_run_filter(%struct.TYPE_17__* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @PAGE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %89, %93
  %95 = call i64 @MIN(i64 %88, i64 %94)
  store i64 %95, i64* %16, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @add_bounce_page(%struct.TYPE_16__* %96, %struct.TYPE_15__* %97, i32 0, i32 %98, i32 0, i64 %99)
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %87, %81, %76, %62
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i64, i64* %16, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i64 @_bus_dmamap_addseg(%struct.TYPE_16__* %102, %struct.TYPE_15__* %103, i32 %104, i64 %105, i32* %106, i32* %107)
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %16, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %121

112:                                              ; preds = %101
  %113 = load i64, i64* %16, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %12, align 8
  %120 = sub nsw i64 %119, %118
  store i64 %120, i64* %12, align 8
  br label %59

121:                                              ; preds = %111, %59
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @EFBIG, align 4
  br label %127

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %54
  %130 = load i32, i32* %8, align 4
  ret i32 %130
}

declare dso_local i32 @_bus_dmamap_count_phys(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32, i32, i64) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
