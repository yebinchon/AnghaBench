; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_fill_rqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_fill_rqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i64, i64, %struct.TYPE_6__*, i32**, i32, %struct.mbuf**, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.mbuf = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }

@TX_MAX_DMA_SEGS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i8* null, align 8
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@CGEM_NUM_RX_DESCS = common dso_local global i32 0, align 4
@CGEM_RXDESC_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_fill_rqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_fill_rqueue(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  %7 = load i32, i32* @TX_MAX_DMA_SEGS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca %struct.TYPE_7__, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %12 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %11)
  br label %13

13:                                               ; preds = %170, %1
  %14 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %15 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %18 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %175

21:                                               ; preds = %13
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @MT_DATA, align 4
  %24 = load i32, i32* @M_PKTHDR, align 4
  %25 = call %struct.mbuf* @m_getcl(i32 %22, i32 %23, i32 %24)
  store %struct.mbuf* %25, %struct.mbuf** %3, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %175

29:                                               ; preds = %21
  %30 = load i8*, i8** @MCLBYTES, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @MCLBYTES, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %38 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %44 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %47 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %46, i32 0, i32 4
  %48 = load i32**, i32*** %47, align 8
  %49 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %50 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = call i64 @bus_dmamap_create(i32 %45, i32 0, i32** %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %29
  %56 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %57 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %61 = call i32 @m_free(%struct.mbuf* %60)
  br label %175

62:                                               ; preds = %29
  %63 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %64 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %67 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %66, i32 0, i32 4
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %70 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %75 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %76 = call i64 @bus_dmamap_load_mbuf_sg(i32 %65, i32* %73, %struct.mbuf* %74, %struct.TYPE_7__* %10, i32* %6, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %62
  %79 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %80 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %84 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %87 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %86, i32 0, i32 4
  %88 = load i32**, i32*** %87, align 8
  %89 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %90 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @bus_dmamap_destroy(i32 %85, i32* %93)
  %95 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %96 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %95, i32 0, i32 4
  %97 = load i32**, i32*** %96, align 8
  %98 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %99 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  store i32* null, i32** %101, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %103 = call i32 @m_free(%struct.mbuf* %102)
  br label %175

104:                                              ; preds = %62
  %105 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %106 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %107 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %106, i32 0, i32 6
  %108 = load %struct.mbuf**, %struct.mbuf*** %107, align 8
  %109 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %110 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %108, i64 %111
  store %struct.mbuf* %105, %struct.mbuf** %112, align 8
  %113 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %114 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %117 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %120 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32*, i32** %118, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %125 = call i32 @bus_dmamap_sync(i32 %115, i32* %123, i32 %124)
  %126 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %127 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %126, i32 0, i32 3
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %130 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %135 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @CGEM_NUM_RX_DESCS, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %104
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 16
  %145 = load i32, i32* @CGEM_RXDESC_WRAP, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %148 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %151 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %146, i32* %154, align 8
  %155 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %156 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  br label %170

157:                                              ; preds = %104
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 16
  %161 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %162 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %161, i32 0, i32 3
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %165 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %166
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i32 %160, i32* %169, align 8
  br label %170

170:                                              ; preds = %157, %141
  %171 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %172 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %13

175:                                              ; preds = %78, %55, %28, %13
  %176 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %176)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #2

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #2

declare dso_local i64 @bus_dmamap_create(i32, i32, i32**) #2

declare dso_local i32 @m_free(%struct.mbuf*) #2

declare dso_local i64 @bus_dmamap_load_mbuf_sg(i32, i32*, %struct.mbuf*, %struct.TYPE_7__*, i32*, i32) #2

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
