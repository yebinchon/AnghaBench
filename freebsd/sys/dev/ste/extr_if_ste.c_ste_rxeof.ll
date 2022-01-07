; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.TYPE_6__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, %struct.ste_chain_onefrag* }
%struct.ste_chain_onefrag = type { %struct.TYPE_4__*, %struct.mbuf*, %struct.ste_chain_onefrag* }
%struct.TYPE_4__ = type { i64 }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@STE_RX_LIST_CNT = common dso_local global i32 0, align 4
@STE_RXSTAT_DMADONE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@STE_RXSTAT_FRAME_ERR = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ste_softc*, i32)* @ste_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_rxeof(%struct.ste_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ste_chain_onefrag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %23 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bus_dmamap_sync(i32 %17, i32 %21, i32 %24)
  %26 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %28, align 8
  store %struct.ste_chain_onefrag* %29, %struct.ste_chain_onefrag** %7, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %109, %2
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @STE_RX_LIST_CNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %115

34:                                               ; preds = %30
  %35 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %36 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @le32toh(i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @STE_RXSTAT_DMADONE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %115

46:                                               ; preds = %34
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %115

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @STE_RXSTAT_FRAME_ERR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %61 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %62 = call i32 @if_inc_counter(%struct.ifnet* %60, i32 %61, i32 1)
  %63 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %64 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %109

67:                                               ; preds = %54
  %68 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %69 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %68, i32 0, i32 1
  %70 = load %struct.mbuf*, %struct.mbuf** %69, align 8
  store %struct.mbuf* %70, %struct.mbuf** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @STE_RX_BYTES(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %74 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %75 = call i64 @ste_newbuf(%struct.ste_softc* %73, %struct.ste_chain_onefrag* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %79 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %80 = call i32 @if_inc_counter(%struct.ifnet* %78, i32 %79, i32 1)
  %81 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %82 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %109

85:                                               ; preds = %67
  %86 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store %struct.ifnet* %86, %struct.ifnet** %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  %96 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %97 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %98 = call i32 @if_inc_counter(%struct.ifnet* %96, i32 %97, i32 1)
  %99 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %100 = call i32 @STE_UNLOCK(%struct.ste_softc* %99)
  %101 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 2
  %103 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %102, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %106 = call i32 %103(%struct.ifnet* %104, %struct.mbuf* %105)
  %107 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %108 = call i32 @STE_LOCK(%struct.ste_softc* %107)
  br label %109

109:                                              ; preds = %85, %77, %59
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %113 = getelementptr inbounds %struct.ste_chain_onefrag, %struct.ste_chain_onefrag* %112, i32 0, i32 2
  %114 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %113, align 8
  store %struct.ste_chain_onefrag* %114, %struct.ste_chain_onefrag** %7, align 8
  br label %30

115:                                              ; preds = %53, %45, %30
  %116 = load i32, i32* %10, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load %struct.ste_chain_onefrag*, %struct.ste_chain_onefrag** %7, align 8
  %120 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store %struct.ste_chain_onefrag* %119, %struct.ste_chain_onefrag** %122, align 8
  %123 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %128 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %132 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @bus_dmamap_sync(i32 %126, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %118, %115
  %136 = load i32, i32* %10, align 4
  ret i32 %136
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @STE_RX_BYTES(i32) #1

declare dso_local i64 @ste_newbuf(%struct.ste_softc*, %struct.ste_chain_onefrag*) #1

declare dso_local i32 @STE_UNLOCK(%struct.ste_softc*) #1

declare dso_local i32 @STE_LOCK(%struct.ste_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
