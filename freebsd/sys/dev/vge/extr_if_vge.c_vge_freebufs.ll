; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_freebufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_freebufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, %struct.vge_txdesc*, i32, %struct.vge_rxdesc* }
%struct.vge_txdesc = type { i32*, i32 }
%struct.vge_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@VGE_RX_DESC_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@VGE_TX_DESC_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_freebufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_freebufs(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.vge_txdesc*, align 8
  %4 = alloca %struct.vge_rxdesc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %7 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %8 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %7)
  %9 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %20, i64 %22
  store %struct.vge_rxdesc* %23, %struct.vge_rxdesc** %4, align 8
  %24 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %4, align 8
  %25 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %16
  %29 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %4, align 8
  %34 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %37 = call i32 @bus_dmamap_sync(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %4, align 8
  %43 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamap_unload(i32 %41, i32 %44)
  %46 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %4, align 8
  %47 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @m_freem(i32* %48)
  %50 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %4, align 8
  %51 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %28, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %101, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @VGE_TX_DESC_CNT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %63 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.vge_txdesc*, %struct.vge_txdesc** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %65, i64 %67
  store %struct.vge_txdesc* %68, %struct.vge_txdesc** %3, align 8
  %69 = load %struct.vge_txdesc*, %struct.vge_txdesc** %3, align 8
  %70 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %100

73:                                               ; preds = %61
  %74 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %75 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vge_txdesc*, %struct.vge_txdesc** %3, align 8
  %79 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %84 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vge_txdesc*, %struct.vge_txdesc** %3, align 8
  %88 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bus_dmamap_unload(i32 %86, i32 %89)
  %91 = load %struct.vge_txdesc*, %struct.vge_txdesc** %3, align 8
  %92 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @m_freem(i32* %93)
  %95 = load %struct.vge_txdesc*, %struct.vge_txdesc** %3, align 8
  %96 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %98 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %73, %61
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %57

104:                                              ; preds = %57
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
