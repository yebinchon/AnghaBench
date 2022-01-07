; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_free_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32*, i64 }

@TSEC_TX_NUM_DESC = common dso_local global i32 0, align 4
@TSEC_RX_NUM_DESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_free_dma(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %9, i32 0, i32 9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %8
  %19 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %23 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %22, i32 0, i32 9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @bus_dmamap_destroy(i32 %21, i32* %29)
  br label %31

31:                                               ; preds = %18, %8
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bus_dma_tag_destroy(i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %113, %35
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @TSEC_RX_NUM_DESC, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %40
  %45 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %46 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %45, i32 0, i32 7
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %44
  %55 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %56 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %59 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %58, i32 0, i32 7
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %67 = call i32 @bus_dmamap_sync(i32 %57, i32* %65, i32 %66)
  %68 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %69 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %72 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %71, i32 0, i32 7
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bus_dmamap_unload(i32 %70, i32* %78)
  %80 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %81 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %80, i32 0, i32 7
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @m_freem(i64 %87)
  br label %89

89:                                               ; preds = %54, %44
  %90 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %91 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %90, i32 0, i32 7
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %89
  %100 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %101 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %104 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %103, i32 0, i32 7
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @bus_dmamap_destroy(i32 %102, i32* %110)
  br label %112

112:                                              ; preds = %99, %89
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %40

116:                                              ; preds = %40
  %117 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %118 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @bus_dma_tag_destroy(i32 %119)
  %121 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %122 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %125 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %128 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @tsec_free_dma_desc(i32 %123, i32 %126, i32 %129)
  %131 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %132 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %135 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %138 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @tsec_free_dma_desc(i32 %133, i32 %136, i32 %139)
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @m_freem(i64) #1

declare dso_local i32 @tsec_free_dma_desc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
