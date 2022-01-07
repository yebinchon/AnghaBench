; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rx_dma_jfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rx_dma_jfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, %struct.msk_rxdesc*, i32*, i32 }
%struct.msk_rxdesc = type { i32* }
%struct.TYPE_3__ = type { i64, i32* }

@MSK_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*)* @msk_rx_dma_jfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_rx_dma_jfree(%struct.msk_if_softc* %0) #0 {
  %2 = alloca %struct.msk_if_softc*, align 8
  %3 = alloca %struct.msk_rxdesc*, align 8
  %4 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %2, align 8
  %5 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %6 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %1
  %11 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %12 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %18 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bus_dmamap_unload(i32* %20, i32 %24)
  br label %26

26:                                               ; preds = %16, %10
  %27 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %28 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %34 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %38 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %42 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamem_free(i32* %36, i32* %40, i32 %44)
  br label %46

46:                                               ; preds = %32, %26
  %47 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %48 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %51 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %54 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bus_dma_tag_destroy(i32* %56)
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %59 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %46, %1
  %62 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %63 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %96, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @MSK_JUMBO_RX_RING_CNT, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %74 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %76, i64 %78
  store %struct.msk_rxdesc* %79, %struct.msk_rxdesc** %3, align 8
  %80 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %3, align 8
  %81 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %72
  %85 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %86 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %3, align 8
  %90 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_dmamap_destroy(i32* %88, i32* %91)
  %93 = load %struct.msk_rxdesc*, %struct.msk_rxdesc** %3, align 8
  %94 = getelementptr inbounds %struct.msk_rxdesc, %struct.msk_rxdesc* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %84, %72
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %68

99:                                               ; preds = %68
  %100 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %101 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %107 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %111 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @bus_dmamap_destroy(i32* %109, i32* %113)
  %115 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %116 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %105, %99
  %119 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %120 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @bus_dma_tag_destroy(i32* %122)
  %124 = load %struct.msk_if_softc*, %struct.msk_if_softc** %2, align 8
  %125 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %118, %61
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
