; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.sge_softc* }
%struct.sge_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.mbuf = type { i32 }

@SGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@SGE_TX_RING_CNT = common dso_local global i64 0, align 8
@SGE_MAXTXSEGS = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TX_CTL = common dso_local global i32 0, align 4
@TX_CTL_ENB = common dso_local global i32 0, align 4
@TX_CTL_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @sge_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.sge_softc*, %struct.sge_softc** %7, align 8
  store %struct.sge_softc* %8, %struct.sge_softc** %3, align 8
  %9 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %10 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %9)
  %11 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SGE_FLAG_LINK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17, %1
  br label %107

28:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %76, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %82

35:                                               ; preds = %29
  %36 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SGE_TX_RING_CNT, align 8
  %41 = load i64, i64* @SGE_MAXTXSEGS, align 8
  %42 = sub nsw i64 %40, %41
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %82

50:                                               ; preds = %35
  %51 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = call i32 @IFQ_DRV_DEQUEUE(i32* %52, %struct.mbuf* %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %82

58:                                               ; preds = %50
  %59 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %60 = call i64 @sge_encap(%struct.sge_softc* %59, %struct.mbuf** %4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %64 = icmp eq %struct.mbuf* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %82

66:                                               ; preds = %62
  %67 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %70 = call i32 @IFQ_DRV_PREPEND(i32* %68, %struct.mbuf* %69)
  %71 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %82

76:                                               ; preds = %58
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %81 = call i32 @BPF_MTAP(%struct.ifnet* %79, %struct.mbuf* %80)
  br label %29

82:                                               ; preds = %66, %65, %57, %44, %29
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %87 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %91 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %95 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @bus_dmamap_sync(i32 %89, i32 %93, i32 %96)
  %98 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %99 = load i32, i32* @TX_CTL, align 4
  %100 = load i32, i32* @TX_CTL_ENB, align 4
  %101 = or i32 6656, %100
  %102 = load i32, i32* @TX_CTL_POLL, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @CSR_WRITE_4(%struct.sge_softc* %98, i32 %99, i32 %103)
  %105 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %106 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %105, i32 0, i32 1
  store i32 5, i32* %106, align 4
  br label %107

107:                                              ; preds = %27, %85, %82
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @sge_encap(%struct.sge_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
