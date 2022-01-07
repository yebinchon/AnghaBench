; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_rxintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_rxintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@GELIC_DESCR_OWNED = common dso_local global i32 0, align 4
@GLC_MAX_RX_PACKETS = common dso_local global i32 0, align 4
@GELIC_CMDSTAT_CHAIN_END = common dso_local global i32 0, align 4
@GELIC_RXERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@GELIC_RX_IPCSUM = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@GELIC_RX_TCPUDPCSUM = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lv1_net_start_rx_dma error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glc_softc*)* @glc_rxintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_rxintr(%struct.glc_softc* %0) #0 {
  %2 = alloca %struct.glc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store %struct.glc_softc* %0, %struct.glc_softc** %2, align 8
  %8 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %8, i32 0, i32 9
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %7, align 8
  %11 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %18 = call i32 @bus_dmamap_sync(i32 %13, i32 %16, i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %179, %1
  %20 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %20, i32 0, i32 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GELIC_DESCR_OWNED, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %183

32:                                               ; preds = %19
  %33 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %34 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  %37 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @GLC_MAX_RX_PACKETS, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %32
  %51 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %52 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %51, i32 0, i32 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GELIC_CMDSTAT_CHAIN_END, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %64, i32 0, i32 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @GELIC_RXERRORS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %77 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %78 = call i32 @if_inc_counter(%struct.ifnet* %76, i32 %77, i32 1)
  br label %179

79:                                               ; preds = %63
  %80 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %81 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.mbuf*, %struct.mbuf** %86, align 8
  store %struct.mbuf* %87, %struct.mbuf** %6, align 8
  %88 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %89 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %88, i32 0, i32 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GELIC_RX_IPCSUM, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %79
  %100 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %101 = load i32, i32* @CSUM_IP_VALID, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %99, %79
  %109 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %110 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %109, i32 0, i32 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @GELIC_RX_TCPUDPCSUM, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %108
  %121 = load i32, i32* @CSUM_DATA_VALID, align 4
  %122 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %125 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 8
  %129 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32 65535, i32* %131, align 4
  br label %132

132:                                              ; preds = %120, %108
  %133 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i64 @glc_add_rxbuf(%struct.glc_softc* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %139 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %140 = call i32 @if_inc_counter(%struct.ifnet* %138, i32 %139, i32 1)
  br label %179

141:                                              ; preds = %132
  %142 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %143 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %144 = call i32 @if_inc_counter(%struct.ifnet* %142, i32 %143, i32 1)
  %145 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store %struct.ifnet* %145, %struct.ifnet** %148, align 8
  %149 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %150 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %149, i32 0, i32 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %163 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %166 = call i32 @m_adj(%struct.mbuf* %165, i32 2)
  %167 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %168 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %167, i32 0, i32 7
  %169 = call i32 @mtx_unlock(i32* %168)
  %170 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 0
  %172 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %171, align 8
  %173 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %174 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %175 = call i32 %172(%struct.ifnet* %173, %struct.mbuf* %174)
  %176 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %177 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %176, i32 0, i32 7
  %178 = call i32 @mtx_lock(i32* %177)
  br label %179

179:                                              ; preds = %141, %137, %75
  %180 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @glc_add_rxbuf_dma(%struct.glc_softc* %180, i32 %181)
  br label %19

183:                                              ; preds = %19
  %184 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %185 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %188 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %191 = call i32 @bus_dmamap_sync(i32 %186, i32 %189, i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %183
  %195 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %196 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %199 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %202 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %201, i32 0, i32 2
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %205 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @lv1_net_start_rx_dma(i32 %197, i32 %200, i32 %209, i32 0)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %194
  %214 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %215 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @device_printf(i32 %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %213, %194
  br label %220

220:                                              ; preds = %219, %183
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @glc_add_rxbuf(%struct.glc_softc*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @glc_add_rxbuf_dma(%struct.glc_softc*, i32) #1

declare dso_local i32 @lv1_net_start_rx_dma(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
