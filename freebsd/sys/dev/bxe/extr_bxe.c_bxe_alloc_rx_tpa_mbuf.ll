; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_rx_tpa_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_rx_tpa_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { i32, i32*, %struct.TYPE_5__, i32, i32, %struct.bxe_sw_tpa_info* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.bxe_sw_tpa_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mbuf*, i32* }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Too many segments, %d returned!\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_fastpath*, i32)* @bxe_alloc_rx_tpa_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_rx_tpa_mbuf(%struct.bxe_fastpath* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_fastpath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_sw_tpa_info*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %13 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %12, i32 0, i32 5
  %14 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %14, i64 %16
  store %struct.bxe_sw_tpa_info* %17, %struct.bxe_sw_tpa_info** %6, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @MT_DATA, align 4
  %20 = load i32, i32* @M_PKTHDR, align 4
  %21 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %22 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.mbuf* @m_getjcl(i32 %18, i32 %19, i32 %20, i32 %23)
  store %struct.mbuf* %24, %struct.mbuf** %9, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @__predict_false(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %32 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @ENOBUFS, align 4
  store i32 %36, i32* %3, align 4
  br label %143

37:                                               ; preds = %2
  %38 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %39 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %44 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %52 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %55 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %60 = call i32 @bus_dmamap_load_mbuf_sg(i32 %53, i32* %56, %struct.mbuf* %57, i32* %58, i32* %10, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @__predict_false(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %37
  %67 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %68 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %73 = call i32 @m_free(%struct.mbuf* %72)
  %74 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %75 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %143

80:                                               ; preds = %37
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @KASSERT(i32 %83, i8* %86)
  %88 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %89 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %80
  %94 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %95 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %98 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %102 = call i32 @bus_dmamap_sync(i32 %96, i32* %100, i32 %101)
  %103 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %104 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %107 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @bus_dmamap_unload(i32 %105, i32* %109)
  br label %111

111:                                              ; preds = %93, %80
  %112 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %113 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %8, align 8
  %116 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %117 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %120 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32* %118, i32** %121, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %124 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %126 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %129 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %133 = call i32 @bus_dmamap_sync(i32 %127, i32* %131, i32 %132)
  %134 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %135 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %136 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store %struct.mbuf* %134, %struct.mbuf** %137, align 8
  %138 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %6, align 8
  %141 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %111, %66, %30
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32*, %struct.mbuf*, i32*, i32*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
