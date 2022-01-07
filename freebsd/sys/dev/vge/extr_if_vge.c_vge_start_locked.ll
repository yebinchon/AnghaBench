; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.vge_softc* }
%struct.vge_softc = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.vge_txdesc* }
%struct.vge_txdesc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }

@VGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@VGE_TX_DESC_CNT = common dso_local global i32 0, align 4
@VGE_TXDESC_Q = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@VGE_TXQCSRS = common dso_local global i32 0, align 4
@VGE_TXQCSR_WAK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @vge_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.vge_txdesc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 2
  %10 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  store %struct.vge_softc* %10, %struct.vge_softc** %3, align 8
  %11 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %12 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %11)
  %13 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VGE_FLAG_LINK, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19, %1
  br label %126

30:                                               ; preds = %19
  %31 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @VGE_TX_DESC_DEC(i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %78, %30
  %38 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = call i32 @IFQ_DRV_IS_EMPTY(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VGE_TX_DESC_CNT, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br label %50

50:                                               ; preds = %42, %37
  %51 = phi i1 [ false, %37 ], [ %49, %42 ]
  br i1 %51, label %52, label %104

52:                                               ; preds = %50
  %53 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = call i32 @IFQ_DRV_DEQUEUE(i32* %54, %struct.mbuf* %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = icmp eq %struct.mbuf* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %104

60:                                               ; preds = %52
  %61 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %62 = call i64 @vge_encap(%struct.vge_softc* %61, %struct.mbuf** %5)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = icmp eq %struct.mbuf* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %104

68:                                               ; preds = %64
  %69 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 1
  %71 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %72 = call i32 @IFQ_DRV_PREPEND(i32* %70, %struct.mbuf* %71)
  %73 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %104

78:                                               ; preds = %60
  %79 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %80 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load %struct.vge_txdesc*, %struct.vge_txdesc** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %82, i64 %84
  store %struct.vge_txdesc* %85, %struct.vge_txdesc** %4, align 8
  %86 = load i32, i32* @VGE_TXDESC_Q, align 4
  %87 = call i32 @htole32(i32 %86)
  %88 = load %struct.vge_txdesc*, %struct.vge_txdesc** %4, align 8
  %89 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %87
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @VGE_TX_DESC_INC(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  %101 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %103 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %101, %struct.mbuf* %102)
  br label %37

104:                                              ; preds = %68, %67, %59, %50
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %109 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %113 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %117 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @bus_dmamap_sync(i32 %111, i32 %115, i32 %118)
  %120 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %121 = load i32, i32* @VGE_TXQCSRS, align 4
  %122 = load i32, i32* @VGE_TXQCSR_WAK0, align 4
  %123 = call i32 @CSR_WRITE_2(%struct.vge_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %125 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %124, i32 0, i32 1
  store i32 5, i32* %125, align 4
  br label %126

126:                                              ; preds = %29, %107, %104
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @VGE_TX_DESC_DEC(i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @vge_encap(%struct.vge_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @VGE_TX_DESC_INC(i32) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
