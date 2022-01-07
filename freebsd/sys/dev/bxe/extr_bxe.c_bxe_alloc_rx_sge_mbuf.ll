; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_rx_sge_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_rx_sge_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { %struct.eth_rx_sge*, i32, i32*, %struct.bxe_sw_rx_bd*, %struct.TYPE_6__ }
%struct.eth_rx_sge = type { i8*, i8* }
%struct.bxe_sw_rx_bd = type { %struct.mbuf*, i32* }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@SGE_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Too many segments, %d returned!\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_fastpath*, i64)* @bxe_alloc_rx_sge_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_rx_sge_mbuf(%struct.bxe_fastpath* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_fastpath*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bxe_sw_rx_bd*, align 8
  %7 = alloca %struct.eth_rx_sge*, align 8
  %8 = alloca [1 x %struct.TYPE_7__], align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @MT_DATA, align 4
  %15 = load i32, i32* @M_PKTHDR, align 4
  %16 = load i32, i32* @SGE_PAGE_SIZE, align 4
  %17 = call %struct.mbuf* @m_getjcl(i32 %13, i32 %14, i32 %15, i32 %16)
  store %struct.mbuf* %17, %struct.mbuf** %10, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %19 = icmp eq %struct.mbuf* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @__predict_false(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %25 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %3, align 4
  br label %147

30:                                               ; preds = %2
  %31 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %32 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @SGE_PAGE_SIZE, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %38 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %43 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %46 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %49 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %50 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %51 = call i32 @bus_dmamap_load_mbuf_sg(i32 %44, i32* %47, %struct.mbuf* %48, %struct.TYPE_7__* %49, i32* %11, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @__predict_false(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %30
  %58 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %59 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  %65 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %66 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %3, align 4
  br label %147

71:                                               ; preds = %30
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @KASSERT(i32 %74, i8* %77)
  %79 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %80 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %79, i32 0, i32 3
  %81 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %81, i64 %82
  store %struct.bxe_sw_rx_bd* %83, %struct.bxe_sw_rx_bd** %6, align 8
  %84 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %85 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %71
  %89 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %90 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %93 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %96 = call i32 @bus_dmamap_sync(i32 %91, i32* %94, i32 %95)
  %97 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %98 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %101 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @bus_dmamap_unload(i32 %99, i32* %102)
  br label %104

104:                                              ; preds = %88, %71
  %105 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %106 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %9, align 8
  %108 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %109 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %112 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %111, i32 0, i32 1
  store i32* %110, i32** %112, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %115 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %114, i32 0, i32 2
  store i32* %113, i32** %115, align 8
  %116 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %117 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %120 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %123 = call i32 @bus_dmamap_sync(i32 %118, i32* %121, i32 %122)
  %124 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %125 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %6, align 8
  %126 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %125, i32 0, i32 0
  store %struct.mbuf* %124, %struct.mbuf** %126, align 8
  %127 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %4, align 8
  %128 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %127, i32 0, i32 0
  %129 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %129, i64 %130
  store %struct.eth_rx_sge* %131, %struct.eth_rx_sge** %7, align 8
  %132 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @U64_HI(i32 %134)
  %136 = call i8* @htole32(i32 %135)
  %137 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %7, align 8
  %138 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @U64_LO(i32 %141)
  %143 = call i8* @htole32(i32 %142)
  %144 = load %struct.eth_rx_sge*, %struct.eth_rx_sge** %7, align 8
  %145 = getelementptr inbounds %struct.eth_rx_sge, %struct.eth_rx_sge* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %104, %57, %23
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32*, %struct.mbuf*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
