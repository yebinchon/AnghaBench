; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_rx_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_rx_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.arge_rxdesc* }
%struct.arge_rxdesc = type { %struct.mbuf*, i32 }
%struct.mbuf = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.ifnet* }
%struct.TYPE_4__ = type { %struct.arge_desc* }
%struct.arge_desc = type { i32, i64 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ARGE_RX_RING_COUNT = common dso_local global i32 0, align 4
@ARGE_DESC_EMPTY = common dso_local global i32 0, align 4
@AR71XX_DMA_RX_STATUS = common dso_local global i32 0, align 4
@DMA_RX_STATUS_PKT_RECVD = common dso_local global i32 0, align 4
@ARGE_HW_FLG_RX_DESC_ALIGN_4BYTE = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate buffer\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arge_softc*)* @arge_rx_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arge_rx_locked(%struct.arge_softc* %0) #0 {
  %2 = alloca %struct.arge_softc*, align 8
  %3 = alloca %struct.arge_rxdesc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arge_desc*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.arge_softc* %0, %struct.arge_softc** %2, align 8
  %12 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %12, i32 0, i32 4
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %16 = call i32 @ARGE_LOCK_ASSERT(%struct.arge_softc* %15)
  %17 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %30 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @bus_dmamap_sync(i32 %24, i32 %28, i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %125, %1
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ARGE_RX_RING_COUNT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %33
  %38 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.arge_desc*, %struct.arge_desc** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.arge_desc, %struct.arge_desc* %41, i64 %43
  store %struct.arge_desc* %44, %struct.arge_desc** %9, align 8
  %45 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %46 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %48, i64 %50
  store %struct.arge_rxdesc* %51, %struct.arge_rxdesc** %3, align 8
  %52 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %3, align 8
  %53 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %52, i32 0, i32 0
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  store %struct.mbuf* %54, %struct.mbuf** %10, align 8
  %55 = load %struct.arge_desc*, %struct.arge_desc** %9, align 8
  %56 = getelementptr inbounds %struct.arge_desc, %struct.arge_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ARGE_DESC_EMPTY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  br label %129

62:                                               ; preds = %37
  %63 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %64 = load i32, i32* @AR71XX_DMA_RX_STATUS, align 4
  %65 = load i32, i32* @DMA_RX_STATUS_PKT_RECVD, align 4
  %66 = call i32 @ARGE_WRITE(%struct.arge_softc* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load %struct.arge_desc*, %struct.arge_desc** %9, align 8
  %70 = getelementptr inbounds %struct.arge_desc, %struct.arge_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ARGE_DMASIZE(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %74 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %3, align 8
  %78 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %81 = call i32 @bus_dmamap_sync(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.arge_rxdesc*, %struct.arge_rxdesc** %3, align 8
  %83 = getelementptr inbounds %struct.arge_rxdesc, %struct.arge_rxdesc* %82, i32 0, i32 0
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  store %struct.mbuf* %84, %struct.mbuf** %10, align 8
  %85 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %86 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ARGE_HW_FLG_RX_DESC_ALIGN_4BYTE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %62
  %92 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %93 = call i32 @arge_fixup_rx(%struct.mbuf* %92)
  br label %94

94:                                               ; preds = %91, %62
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store %struct.ifnet* %95, %struct.ifnet** %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @ETHER_CRC_LEN, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i64 %102, i64* %107, align 8
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %110 = call i32 @if_inc_counter(%struct.ifnet* %108, i32 %109, i32 1)
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %114 = call i32 @ARGE_UNLOCK(%struct.arge_softc* %113)
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 0
  %117 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %116, align 8
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %120 = call i32 %117(%struct.ifnet* %118, %struct.mbuf* %119)
  %121 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %122 = call i32 @ARGE_LOCK(%struct.arge_softc* %121)
  %123 = load %struct.arge_desc*, %struct.arge_desc** %9, align 8
  %124 = getelementptr inbounds %struct.arge_desc, %struct.arge_desc* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %94
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @ARGE_RX_RING_COUNT, align 4
  %128 = call i32 @ARGE_INC(i32 %126, i32 %127)
  br label %33

129:                                              ; preds = %61, %33
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %172

132:                                              ; preds = %129
  %133 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %134 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %154, %132
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %137
  %141 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i64 @arge_newbuf(%struct.arge_softc* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %147 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %157

150:                                              ; preds = %140
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @ARGE_RX_RING_COUNT, align 4
  %153 = call i32 @ARGE_INC(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %6, align 4
  br label %137

157:                                              ; preds = %145, %137
  %158 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %159 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %163 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %167 = call i32 @bus_dmamap_sync(i32 %161, i32 %165, i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %170 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  br label %172

172:                                              ; preds = %157, %129
  %173 = load i32, i32* %11, align 4
  ret i32 %173
}

declare dso_local i32 @ARGE_LOCK_ASSERT(%struct.arge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ARGE_WRITE(%struct.arge_softc*, i32, i32) #1

declare dso_local i32 @ARGE_DMASIZE(i32) #1

declare dso_local i32 @arge_fixup_rx(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ARGE_UNLOCK(%struct.arge_softc*) #1

declare dso_local i32 @ARGE_LOCK(%struct.arge_softc*) #1

declare dso_local i32 @ARGE_INC(i32, i32) #1

declare dso_local i64 @arge_newbuf(%struct.arge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
