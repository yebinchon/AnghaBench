; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32**, i32*, i32*, i32*, i32 }

@RL_TX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_dma_free(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %4 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %1
  %10 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_dmamap_unload(i32* %19, i32 %23)
  br label %25

25:                                               ; preds = %15, %9
  %26 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %37 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bus_dmamem_free(i32* %35, i32* %39, i32 %43)
  br label %45

45:                                               ; preds = %31, %25
  %46 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %47 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %53 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @bus_dma_tag_destroy(i32* %58)
  %60 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %61 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %45, %1
  %64 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %65 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %118

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %106, %69
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @RL_TX_LIST_CNT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %70
  %75 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %76 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %74
  %85 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %86 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %90 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @bus_dmamap_destroy(i32* %88, i32* %96)
  %98 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %99 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %84, %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %70

109:                                              ; preds = %70
  %110 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %111 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @bus_dma_tag_destroy(i32* %113)
  %115 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %116 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %109, %63
  %119 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %120 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %125 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @bus_dma_tag_destroy(i32* %126)
  %128 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %129 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %123, %118
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
