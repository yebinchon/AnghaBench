; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tpa_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_tpa_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.bxe_sw_tpa_info = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.eth_end_agg_rx_cqe = type { i32 }

@DBG_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"fp[%02d].tpa[%02d] pad=%d pkt_len=%d pages=%d vlan=%d\0A\00", align 1
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@PARSING_FLAGS_INNER_VLAN_EXIST = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@BXE_TPA_STATE_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.bxe_sw_tpa_info*, i64, i64, %struct.eth_end_agg_rx_cqe*, i64)* @bxe_tpa_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_tpa_stop(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, %struct.bxe_sw_tpa_info* %2, i64 %3, i64 %4, %struct.eth_end_agg_rx_cqe* %5, i64 %6) #0 {
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca %struct.bxe_fastpath*, align 8
  %10 = alloca %struct.bxe_sw_tpa_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.eth_end_agg_rx_cqe*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %8, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %9, align 8
  store %struct.bxe_sw_tpa_info* %2, %struct.bxe_sw_tpa_info** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.eth_end_agg_rx_cqe* %5, %struct.eth_end_agg_rx_cqe** %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %22 = load i32, i32* @DBG_LRO, align 4
  %23 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %24 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %28 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %13, align 8
  %31 = getelementptr inbounds %struct.eth_end_agg_rx_cqe, %struct.eth_end_agg_rx_cqe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16toh(i32 %32)
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %36 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BLOGD(%struct.bxe_softc* %21, i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26, i32 %29, i32 %33, i64 %34, i32 %37)
  %39 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %40 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.mbuf*, %struct.mbuf** %41, align 8
  store %struct.mbuf* %42, %struct.mbuf** %16, align 8
  %43 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @bxe_alloc_rx_tpa_mbuf(%struct.bxe_fastpath* %43, i64 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %7
  %49 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %50 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %152

54:                                               ; preds = %7
  %55 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %56 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %57 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @m_adj(%struct.mbuf* %55, i32 %58)
  %60 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %61 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %62, i32* %67, align 4
  %68 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %69 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %74 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 65535, i32* %80, align 4
  %81 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %82 = load i32, i32* @CSUM_IP_VALID, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CSUM_DATA_VALID, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %94 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %95 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %99 = load %struct.eth_end_agg_rx_cqe*, %struct.eth_end_agg_rx_cqe** %13, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @bxe_fill_frag_mbuf(%struct.bxe_softc* %93, %struct.bxe_fastpath* %94, %struct.bxe_sw_tpa_info* %95, i64 %96, i64 %97, %struct.mbuf* %98, %struct.eth_end_agg_rx_cqe* %99, i64 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %54
  %105 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %106 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %111 = call i32 @m_freem(%struct.mbuf* %110)
  br label %146

112:                                              ; preds = %54
  %113 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %114 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PARSING_FLAGS_INNER_VLAN_EXIST, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load %struct.bxe_sw_tpa_info*, %struct.bxe_sw_tpa_info** %10, align 8
  %121 = getelementptr inbounds %struct.bxe_sw_tpa_info, %struct.bxe_sw_tpa_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  %126 = load i32, i32* @M_VLANTAG, align 4
  %127 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %128 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %119, %112
  %132 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @if_setrcvif(%struct.mbuf* %132, i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %137 = call i32 @if_inc_counter(i32 %135, i32 %136, i32 1)
  %138 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %139 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %145 = call i32 @if_input(i32 %143, %struct.mbuf* %144)
  br label %146

146:                                              ; preds = %131, %104
  %147 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %148 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %48
  %153 = load i32, i32* @BXE_TPA_STATE_STOP, align 4
  %154 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %155 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %153, i32* %159, align 4
  %160 = load i64, i64* %11, align 8
  %161 = trunc i64 %160 to i32
  %162 = shl i32 1, %161
  %163 = xor i32 %162, -1
  %164 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %9, align 8
  %165 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 8
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64, i32, i32, i64, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bxe_alloc_rx_tpa_mbuf(%struct.bxe_fastpath*, i64) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @bxe_fill_frag_mbuf(%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.bxe_sw_tpa_info*, i64, i64, %struct.mbuf*, %struct.eth_end_agg_rx_cqe*, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_setrcvif(%struct.mbuf*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
