; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__, i32* }
%struct.TYPE_17__ = type { i64, i32 }

@nobounce_dmamap = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i64, i64, i32, i32*, i32*)* @bounce_bus_dmamap_load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bounce_bus_dmamap_load_buffer(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2, i64 %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = icmp eq %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store %struct.TYPE_15__* @nobounce_dmamap, %struct.TYPE_15__** %11, align 8
  br label %27

27:                                               ; preds = %26, %8
  %28 = load i32*, i32** %16, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %16, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @_bus_dmamap_count_pages(%struct.TYPE_16__* %42, %struct.TYPE_15__* %43, i64 %44, i8* %45, i64 %46, i32 %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_16__* %54, %struct.TYPE_15__* %55, i32 %56)
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %23, align 4
  store i32 %61, i32* %9, align 4
  br label %158

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i8*, i8** %12, align 8
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %22, align 8
  br label %67

67:                                               ; preds = %143, %64
  %68 = load i64, i64* %13, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %150

70:                                               ; preds = %67
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @kernel_pmap, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, i64* %22, align 8
  %76 = call i32 @pmap_kextract(i64 %75)
  store i32 %76, i32* %20, align 4
  %77 = load i64, i64* %22, align 8
  store i64 %77, i64* %21, align 8
  br label %82

78:                                               ; preds = %70
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %22, align 8
  %81 = call i32 @pmap_extract(i64 %79, i64 %80)
  store i32 %81, i32* %20, align 4
  store i64 0, i64* %21, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @MIN(i64 %83, i64 %87)
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* @PAGE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %89, %93
  store i64 %94, i64* %18, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %82
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %20, align 4
  %110 = call i64 @bus_dma_run_filter(%struct.TYPE_17__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  %113 = load i64, i64* %18, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @roundup2(i64 %113, i32 %117)
  store i64 %118, i64* %18, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %19, align 8
  %121 = call i64 @MIN(i64 %119, i64 %120)
  store i64 %121, i64* %18, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %124 = load i64, i64* %21, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load i64, i64* %18, align 8
  %127 = call i32 @add_bounce_page(%struct.TYPE_16__* %122, %struct.TYPE_15__* %123, i64 %124, i32 %125, i32 0, i64 %126)
  store i32 %127, i32* %20, align 4
  br label %132

128:                                              ; preds = %106, %101, %82
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %19, align 8
  %131 = call i64 @MIN(i64 %129, i64 %130)
  store i64 %131, i64* %18, align 8
  br label %132

132:                                              ; preds = %128, %112
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load i64, i64* %18, align 8
  %137 = load i32*, i32** %16, align 8
  %138 = load i32*, i32** %17, align 8
  %139 = call i64 @_bus_dmamap_addseg(%struct.TYPE_16__* %133, %struct.TYPE_15__* %134, i32 %135, i64 %136, i32* %137, i32* %138)
  store i64 %139, i64* %18, align 8
  %140 = load i64, i64* %18, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %150

143:                                              ; preds = %132
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %22, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %22, align 8
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* %13, align 8
  %149 = sub nsw i64 %148, %147
  store i64 %149, i64* %13, align 8
  br label %67

150:                                              ; preds = %142, %67
  %151 = load i64, i64* %13, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* @EFBIG, align 4
  br label %156

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ]
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %156, %60
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i32 @_bus_dmamap_count_pages(%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i8*, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32, i32, i64) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
