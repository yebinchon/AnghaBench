; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_fill_frag_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_fill_frag_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.mbuf* }
%struct.bxe_sw_tpa_info = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.eth_end_agg_rx_cqe = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@DBG_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"fp[%02d].tpa[%02d] TPA fill len_on_bd=%d frag_size=%d pages=%d\0A\00", align 1
@PAGES_PER_SGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"fp[%02d].sge[0x%04x] has too many pages (%d)! pkt_len=%d len_on_bd=%d frag_size=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"cqe [0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"sge page count error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SGE_PAGES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"fp[%02d].tpa[%02d] TPA fill i=%d j=%d sge_idx=%d frag_size=%d frag_len=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"fp[%02d].tpa[%02d] TPA fill done frag_size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.bxe_sw_tpa_info*, i32, i32, %struct.mbuf*, %struct.eth_end_agg_rx_cqe*, i32)* @bxe_fill_frag_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_fill_frag_mbuf(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, %struct.bxe_sw_tpa_info* %2, i32 %3, i32 %4, %struct.mbuf* %5, %struct.eth_end_agg_rx_cqe* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.bxe_softc*, align 8
  %11 = alloca %struct.bxe_fastpath*, align 8
  %12 = alloca %struct.bxe_sw_tpa_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca %struct.eth_end_agg_rx_cqe*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %10, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %11, align 8
  store %struct.bxe_sw_tpa_info* %2, %struct.bxe_sw_tpa_info** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.mbuf* %5, %struct.mbuf** %15, align 8
  store %struct.eth_end_agg_rx_cqe* %6, %struct.eth_end_agg_rx_cqe** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %23, align 4
  %26 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %16, align 8
  %27 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le16toh(i32 %28)
  %30 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %12, align 8
  %31 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %35 = load i32, i32* @DBG_LRO, align 4
  %36 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %37 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %12, align 8
  %41 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %34, i32 %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @PAGES_PER_SGE, align 4
  %48 = mul nsw i32 8, %47
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %8
  %51 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %16, align 8
  %52 = bitcast %struct.eth_end_agg_rx_cqe* %51 to i32*
  store i32* %52, i32** %25, align 8
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %54 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %55 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %16, align 8
  %60 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16toh(i32 %61)
  %63 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %12, align 8
  %64 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 (%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32, i32, ...) @BLOGE(%struct.bxe_softc* %53, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %69 = load i32*, i32** %25, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %25, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %25, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %25, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %25, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %25, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %25, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %25, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32, i32, ...) @BLOGE(%struct.bxe_softc* %68, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %94 = call i32 @bxe_panic(%struct.bxe_softc* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %9, align 4
  br label %180

96:                                               ; preds = %8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  br label %97

97:                                               ; preds = %164, %96
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %170

101:                                              ; preds = %97
  %102 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %16, align 8
  %103 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le16toh(i32 %109)
  %111 = call i32 @RX_SGE(i32 %110)
  store i32 %111, i32* %22, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i64, i64* @SGE_PAGES, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @min(i32 %112, i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %117 = load i32, i32* @DBG_LRO, align 4
  %118 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %119 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %116, i32 %117, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %129 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %struct.mbuf*, %struct.mbuf** %134, align 8
  store %struct.mbuf* %135, %struct.mbuf** %18, align 8
  %136 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %137 = load i32, i32* %22, align 4
  %138 = call i32 @bxe_alloc_rx_sge_mbuf(%struct.bxe_fastpath* %136, i32 %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %101
  %142 = load i32, i32* %23, align 4
  store i32 %142, i32* %9, align 4
  br label %180

143:                                              ; preds = %101
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %146 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %149 = call i32 @m_cat(%struct.mbuf* %147, %struct.mbuf* %148)
  %150 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %151 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %155
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %20, align 4
  br label %164

164:                                              ; preds = %143
  %165 = load i32, i32* @PAGES_PER_SGE, align 4
  %166 = load i32, i32* %21, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %21, align 4
  %168 = load i32, i32* %24, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %24, align 4
  br label %97

170:                                              ; preds = %97
  %171 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %172 = load i32, i32* @DBG_LRO, align 4
  %173 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %11, align 8
  %174 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %20, align 4
  %178 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) @BLOGD(%struct.bxe_softc* %171, i32 %172, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %23, align 4
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %170, %141, %50
  %181 = load i32, i32* %9, align 4
  ret i32 %181
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @RX_SGE(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bxe_alloc_rx_sge_mbuf(%struct.bxe_fastpath*, i32) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
