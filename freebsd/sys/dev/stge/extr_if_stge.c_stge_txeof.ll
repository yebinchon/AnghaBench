; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.stge_txdesc = type { i32*, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@TFD_TFDDone = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@tx_q = common dso_local global i32 0, align 4
@STGE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_txeof(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.stge_txdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %7 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %8 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %7)
  %9 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = call %struct.stge_txdesc* @STAILQ_FIRST(i32* %14)
  store %struct.stge_txdesc* %15, %struct.stge_txdesc** %4, align 8
  %16 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %17 = icmp eq %struct.stge_txdesc* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %21 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %28)
  %30 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %107, %19
  %35 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %112

41:                                               ; preds = %34
  %42 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %43 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le64toh(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @TFD_TFDDone, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %112

57:                                               ; preds = %41
  %58 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %59 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %74 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %77 = call i32 @bus_dmamap_sync(i32 %72, i32 %75, i32 %76)
  %78 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %79 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %83 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bus_dmamap_unload(i32 %81, i32 %84)
  %86 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %87 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @m_freem(i32* %88)
  %90 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %91 = getelementptr inbounds %struct.stge_txdesc, %struct.stge_txdesc* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  %92 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %93 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* @tx_q, align 4
  %96 = call i32 @STAILQ_REMOVE_HEAD(i32* %94, i32 %95)
  %97 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %98 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load %struct.stge_txdesc*, %struct.stge_txdesc** %4, align 8
  %101 = load i32, i32* @tx_q, align 4
  %102 = call i32 @STAILQ_INSERT_TAIL(i32* %99, %struct.stge_txdesc* %100, i32 %101)
  %103 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %104 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = call %struct.stge_txdesc* @STAILQ_FIRST(i32* %105)
  store %struct.stge_txdesc* %106, %struct.stge_txdesc** %4, align 8
  br label %107

107:                                              ; preds = %57
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @STGE_TX_RING_CNT, align 4
  %111 = srem i32 %109, %110
  store i32 %111, i32* %6, align 4
  br label %34

112:                                              ; preds = %56, %40
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %115 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %118 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %124 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %112
  %126 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %127 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %131 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %135 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @bus_dmamap_sync(i32 %129, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %125, %18
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local %struct.stge_txdesc* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.stge_txdesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
