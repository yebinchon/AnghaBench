; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.et_softc* }
%struct.et_softc = type { i32, i32, %struct.et_txdesc_ring, %struct.et_txbuf_data }
%struct.et_txdesc_ring = type { i32, i64, i32, i32 }
%struct.et_txbuf_data = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ET_FLAG_LINK = common dso_local global i32 0, align 4
@ET_FLAG_TXRX_ENABLED = common dso_local global i32 0, align 4
@ET_TX_NDESC = common dso_local global i32 0, align 4
@ET_NSEG_SPARE = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ET_TX_READY_POS_INDEX_MASK = common dso_local global i32 0, align 4
@ET_TX_READY_POS_WRAP = common dso_local global i32 0, align 4
@ET_TX_READY_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @et_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.et_txdesc_ring*, align 8
  %6 = alloca %struct.et_txbuf_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 2
  %11 = load %struct.et_softc*, %struct.et_softc** %10, align 8
  store %struct.et_softc* %11, %struct.et_softc** %3, align 8
  %12 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %13 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %1
  %24 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %25 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ET_FLAG_LINK, align 4
  %28 = load i32, i32* @ET_FLAG_TXRX_ENABLED, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @ET_FLAG_LINK, align 4
  %32 = load i32, i32* @ET_FLAG_TXRX_ENABLED, align 4
  %33 = or i32 %31, %32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23, %1
  br label %145

36:                                               ; preds = %23
  %37 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %38 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %37, i32 0, i32 3
  store %struct.et_txbuf_data* %38, %struct.et_txbuf_data** %6, align 8
  %39 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %6, align 8
  %40 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ET_TX_NDESC, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sdiv i32 %43, 3
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %48 = call i32 @et_txeof(%struct.et_softc* %47)
  br label %49

49:                                               ; preds = %46, %36
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %105, %49
  %51 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = call i32 @IFQ_DRV_IS_EMPTY(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %111

56:                                               ; preds = %50
  %57 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %6, align 8
  %58 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ET_NSEG_SPARE, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @ET_TX_NDESC, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %111

70:                                               ; preds = %56
  %71 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 1
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = call i32 @IFQ_DRV_DEQUEUE(i32* %72, %struct.mbuf* %73)
  %75 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %76 = icmp eq %struct.mbuf* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %111

78:                                               ; preds = %70
  %79 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %80 = call i64 @et_encap(%struct.et_softc* %79, %struct.mbuf** %4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %84 = icmp eq %struct.mbuf* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %87 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %88 = call i32 @if_inc_counter(%struct.ifnet* %86, i32 %87, i32 1)
  br label %111

89:                                               ; preds = %82
  %90 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 1
  %92 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %93 = call i32 @IFQ_DRV_PREPEND(i32* %91, %struct.mbuf* %92)
  %94 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %6, align 8
  %95 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %89
  br label %111

105:                                              ; preds = %78
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %110 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %108, %struct.mbuf* %109)
  br label %50

111:                                              ; preds = %104, %85, %77, %64, %50
  %112 = load i32, i32* %8, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %116 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %115, i32 0, i32 2
  store %struct.et_txdesc_ring* %116, %struct.et_txdesc_ring** %5, align 8
  %117 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %5, align 8
  %118 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %5, align 8
  %121 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %124 = call i32 @bus_dmamap_sync(i32 %119, i32 %122, i32 %123)
  %125 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %5, align 8
  %126 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ET_TX_READY_POS_INDEX_MASK, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %5, align 8
  %131 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %114
  %135 = load i32, i32* @ET_TX_READY_POS_WRAP, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %134, %114
  %139 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %140 = load i32, i32* @ET_TX_READY_POS, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @CSR_WRITE_4(%struct.et_softc* %139, i32 %140, i32 %141)
  %143 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %144 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %143, i32 0, i32 1
  store i32 5, i32* %144, align 4
  br label %145

145:                                              ; preds = %35, %138, %111
  ret void
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local i32 @et_txeof(%struct.et_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @et_encap(%struct.et_softc*, %struct.mbuf**) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
