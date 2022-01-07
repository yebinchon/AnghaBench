; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32, i32, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.vte_txdesc = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@VTE_FLAG_LINK = common dso_local global i32 0, align 4
@VTE_TX_RING_CNT = common dso_local global i32 0, align 4
@VTE_TXMBUF = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@VTE_TX_POLL = common dso_local global i32 0, align 4
@TX_POLL_START = common dso_local global i32 0, align 4
@VTE_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_start_locked(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vte_txdesc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %7 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %21 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VTE_FLAG_LINK, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %1
  br label %108

27:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %84, %27
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = call i32 @IFQ_DRV_IS_EMPTY(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %85

34:                                               ; preds = %28
  %35 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %36 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VTE_TX_RING_CNT, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp sge i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %85

48:                                               ; preds = %34
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  %51 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %52 = call i32 @IFQ_DRV_DEQUEUE(i32* %50, %struct.mbuf* %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = icmp eq %struct.mbuf* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %85

56:                                               ; preds = %48
  %57 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %58 = call %struct.vte_txdesc* @vte_encap(%struct.vte_softc* %57, %struct.mbuf** %5)
  store %struct.vte_txdesc* %58, %struct.vte_txdesc** %4, align 8
  %59 = icmp eq %struct.vte_txdesc* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %62 = icmp ne %struct.mbuf* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 1
  %66 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %67 = call i32 @IFQ_DRV_PREPEND(i32* %65, %struct.mbuf* %66)
  br label %68

68:                                               ; preds = %63, %60
  br label %85

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %74 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %72, %struct.mbuf* %73)
  %75 = load %struct.vte_txdesc*, %struct.vte_txdesc** %4, align 8
  %76 = getelementptr inbounds %struct.vte_txdesc, %struct.vte_txdesc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VTE_TXMBUF, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %83 = call i32 @m_freem(%struct.mbuf* %82)
  br label %84

84:                                               ; preds = %81, %69
  br label %28

85:                                               ; preds = %68, %55, %42, %28
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %90 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %94 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %98 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @bus_dmamap_sync(i32 %92, i32 %96, i32 %99)
  %101 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %102 = load i32, i32* @VTE_TX_POLL, align 4
  %103 = load i32, i32* @TX_POLL_START, align 4
  %104 = call i32 @CSR_WRITE_2(%struct.vte_softc* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @VTE_TX_TIMEOUT, align 4
  %106 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %107 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %26, %88, %85
  ret void
}

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local %struct.vte_txdesc* @vte_encap(%struct.vte_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
