; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_newbuf_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_newbuf_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32*, %struct.mbuf**, i32 }
%struct.mbuf = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.bge_rx_bd* }
%struct.bge_rx_bd = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@BGE_FLAG_JUMBO_STD = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_ALIGN = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@BGE_FLAG_RX_ALIGNBUG = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_END = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, i32)* @bge_newbuf_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_newbuf_std(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.bge_rx_bd*, align 8
  %8 = alloca [1 x %struct.TYPE_11__], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BGE_FLAG_JUMBO_STD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @if_getmtu(i32 %21)
  %23 = load i64, i64* @ETHER_HDR_LEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @ETHER_CRC_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @MCLBYTES, align 8
  %30 = load i64, i64* @ETHER_ALIGN, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %18
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load i32, i32* @MT_DATA, align 4
  %36 = load i32, i32* @M_PKTHDR, align 4
  %37 = load i64, i64* @MJUM9BYTES, align 8
  %38 = call %struct.mbuf* @m_getjcl(i32 %34, i32 %35, i32 %36, i64 %37)
  store %struct.mbuf* %38, %struct.mbuf** %6, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %3, align 4
  br label %222

43:                                               ; preds = %33
  %44 = load i64, i64* @MJUM9BYTES, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  store i64 %44, i64* %49, align 8
  br label %66

50:                                               ; preds = %18, %2
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = load i32, i32* @MT_DATA, align 4
  %53 = load i32, i32* @M_PKTHDR, align 4
  %54 = call %struct.mbuf* @m_getcl(i32 %51, i32 %52, i32 %53)
  store %struct.mbuf* %54, %struct.mbuf** %6, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOBUFS, align 4
  store i32 %58, i32* %3, align 4
  br label %222

59:                                               ; preds = %50
  %60 = load i64, i64* @MCLBYTES, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 1
  store i64 %60, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %43
  %67 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %68 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BGE_FLAG_RX_ALIGNBUG, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = load i64, i64* @ETHER_ALIGN, align 8
  %76 = call i32 @m_adj(%struct.mbuf* %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %79 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %83 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %87 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %88 = call i32 @bus_dmamap_load_mbuf_sg(i32 %81, i32 %85, %struct.mbuf* %86, %struct.TYPE_11__* %87, i32* %11, i32 0)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %3, align 4
  br label %222

95:                                               ; preds = %77
  %96 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = load %struct.mbuf**, %struct.mbuf*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %99, i64 %101
  %103 = load %struct.mbuf*, %struct.mbuf** %102, align 8
  %104 = icmp ne %struct.mbuf* %103, null
  br i1 %104, label %105, label %133

105:                                              ; preds = %95
  %106 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %107 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %111 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %119 = call i32 @bus_dmamap_sync(i32 %109, i32 %117, i32 %118)
  %120 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %121 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %125 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @bus_dmamap_unload(i32 %123, i32 %131)
  br label %133

133:                                              ; preds = %105, %95
  %134 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %135 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %143 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %147 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %145, i32* %152, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %155 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 8
  %157 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %158 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %159 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = load %struct.mbuf**, %struct.mbuf*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %161, i64 %163
  store %struct.mbuf* %157, %struct.mbuf** %164, align 8
  %165 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %169 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %167, i32* %174, align 4
  %175 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %176 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %177, align 8
  %179 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %180 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %178, i64 %181
  store %struct.bge_rx_bd* %182, %struct.bge_rx_bd** %7, align 8
  %183 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @BGE_ADDR_LO(i32 %185)
  %187 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %7, align 8
  %188 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @BGE_ADDR_HI(i32 %192)
  %194 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %7, align 8
  %195 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @BGE_RXBDFLAG_END, align 4
  %198 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %7, align 8
  %199 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %7, align 8
  %204 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %7, align 8
  %207 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  %208 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %209 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %213 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %221 = call i32 @bus_dmamap_sync(i32 %211, i32 %219, i32 %220)
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %133, %91, %57, %41
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i64 @if_getmtu(i32) #1

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i64) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @BGE_ADDR_LO(i32) #1

declare dso_local i32 @BGE_ADDR_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
