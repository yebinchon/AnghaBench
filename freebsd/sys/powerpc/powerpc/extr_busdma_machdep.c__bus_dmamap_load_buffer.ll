; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_busdma_machdep.c__bus_dmamap_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i32* }

@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bus_dmamap_load_buffer(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i8* %2, i64 %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %16, align 8
  br label %30

30:                                               ; preds = %26, %8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @_bus_dmamap_count_pages(%struct.TYPE_15__* %38, %struct.TYPE_14__* %39, i64 %40, i8* %41, i64 %42, i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %37
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_15__* %50, %struct.TYPE_14__* %51, i32 %52)
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %22, align 4
  store i32 %57, i32* %9, align 4
  br label %144

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i8*, i8** %12, align 8
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %21, align 8
  br label %63

63:                                               ; preds = %129, %60
  %64 = load i64, i64* %13, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %136

66:                                               ; preds = %63
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @kernel_pmap, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i64, i64* %21, align 8
  %72 = call i32 @pmap_kextract(i64 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i64, i64* %21, align 8
  store i64 %73, i64* %20, align 8
  br label %78

74:                                               ; preds = %66
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %21, align 8
  %77 = call i32 @pmap_extract(i64 %75, i64 %76)
  store i32 %77, i32* %19, align 4
  store i64 0, i64* %20, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @MIN(i64 %79, i64 %82)
  store i64 %83, i64* %23, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @PAGE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %84, %88
  store i64 %89, i64* %18, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %78
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %96 = load i32, i32* %19, align 4
  %97 = call i64 @run_filter(%struct.TYPE_15__* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i64, i64* %18, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @roundup2(i64 %100, i32 %103)
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %23, align 8
  %107 = call i64 @MIN(i64 %105, i64 %106)
  store i64 %107, i64* %18, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %110 = load i64, i64* %20, align 8
  %111 = load i32, i32* %19, align 4
  %112 = load i64, i64* %18, align 8
  %113 = call i32 @add_bounce_page(%struct.TYPE_15__* %108, %struct.TYPE_14__* %109, i64 %110, i32 %111, i64 %112)
  store i32 %113, i32* %19, align 4
  br label %118

114:                                              ; preds = %94, %78
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %23, align 8
  %117 = call i64 @MIN(i64 %115, i64 %116)
  store i64 %117, i64* %18, align 8
  br label %118

118:                                              ; preds = %114, %99
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i64, i64* %18, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i64 @_bus_dmamap_addseg(%struct.TYPE_15__* %119, %struct.TYPE_14__* %120, i32 %121, i64 %122, i32* %123, i32* %124)
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %18, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %136

129:                                              ; preds = %118
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %21, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %21, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %13, align 8
  %135 = sub nsw i64 %134, %133
  store i64 %135, i64* %13, align 8
  br label %63

136:                                              ; preds = %128, %63
  %137 = load i64, i64* %13, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @EFBIG, align 4
  br label %142

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %142, %56
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i32 @_bus_dmamap_count_pages(%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i8*, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32, i64) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
