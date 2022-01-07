; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_rx_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_intr_rx_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i64, i32, i32, %struct.mge_desc_wrapper*, %struct.ifnet* }
%struct.mge_desc_wrapper = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ifnet* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MGE_DMA_OWNED = common dso_local global i32 0, align 4
@MGE_ERR_SUMMARY = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@MGE_RX_ENABLE_INT = common dso_local global i32 0, align 4
@MGE_RX_DESC_NUM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mge_softc*, i32)* @mge_intr_rx_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mge_intr_rx_locked(%struct.mge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mge_desc_wrapper*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %11, i32 0, i32 4
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %15 = call i32 @MGE_RECEIVE_LOCK_ASSERT(%struct.mge_softc* %14)
  br label %16

16:                                               ; preds = %160, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %161

19:                                               ; preds = %16
  %20 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %20, i32 0, i32 3
  %22 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %21, align 8
  %23 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %22, i64 %25
  store %struct.mge_desc_wrapper* %26, %struct.mge_desc_wrapper** %8, align 8
  %27 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %31 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %34 = call i32 @bus_dmamap_sync(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %36 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %41 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MGE_DMA_OWNED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %19
  br label %161

50:                                               ; preds = %19
  %51 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %52 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %124

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @MGE_ERR_SUMMARY, align 4
  %60 = and i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %57
  %64 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %68 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %71 = call i32 @bus_dmamap_sync(i32 %66, i32 %69, i32 %70)
  %72 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %73 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %78 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ETHER_CRC_LEN, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = call %struct.mbuf* @m_devget(i32 %76, i64 %83, i32 0, %struct.ifnet* %84, i32* null)
  store %struct.mbuf* %85, %struct.mbuf** %9, align 8
  %86 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %87 = icmp eq %struct.mbuf* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %63
  br label %161

89:                                               ; preds = %63
  %90 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 2
  store i32 %93, i32* %91, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 2
  store i32 %98, i32* %96, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store %struct.ifnet* %103, %struct.ifnet** %106, align 8
  %107 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @mge_offload_process_frame(%struct.ifnet* %107, %struct.mbuf* %108, i32 %109, i32 %110)
  %112 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %113 = call i32 @MGE_RECEIVE_UNLOCK(%struct.mge_softc* %112)
  %114 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 0
  %116 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %115, align 8
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %119 = call i32 %116(%struct.ifnet* %117, %struct.mbuf* %118)
  %120 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %121 = call i32 @MGE_RECEIVE_LOCK(%struct.mge_softc* %120)
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %89, %57, %50
  %125 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %126 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @MGE_RX_ENABLE_INT, align 4
  %130 = load i32, i32* @MGE_DMA_OWNED, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %133 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %137 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load i32, i32* @MGE_RX_DESC_NUM, align 4
  %141 = sext i32 %140 to i64
  %142 = urem i64 %139, %141
  %143 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %144 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %146 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.mge_desc_wrapper*, %struct.mge_desc_wrapper** %8, align 8
  %149 = getelementptr inbounds %struct.mge_desc_wrapper, %struct.mge_desc_wrapper* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %152 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @bus_dmamap_sync(i32 %147, i32 %150, i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %124
  %158 = load i32, i32* %4, align 4
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %157, %124
  br label %16

161:                                              ; preds = %88, %49, %16
  %162 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %163 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @if_inc_counter(%struct.ifnet* %162, i32 %163, i32 %164)
  %166 = load i32, i32* %10, align 4
  ret i32 %166
}

declare dso_local i32 @MGE_RECEIVE_LOCK_ASSERT(%struct.mge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.mbuf* @m_devget(i32, i64, i32, %struct.ifnet*, i32*) #1

declare dso_local i32 @mge_offload_process_frame(%struct.ifnet*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @MGE_RECEIVE_UNLOCK(%struct.mge_softc*) #1

declare dso_local i32 @MGE_RECEIVE_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
