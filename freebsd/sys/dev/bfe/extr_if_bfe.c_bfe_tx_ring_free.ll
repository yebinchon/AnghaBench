; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_tx_ring_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_tx_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@BFE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BFE_TX_LIST_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_tx_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_tx_ring_free(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %61, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @BFE_TX_LIST_CNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %64

8:                                                ; preds = %4
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %60

18:                                               ; preds = %8
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %31 = call i32 @bus_dmamap_sync(i32 %21, i32 %29, i32 %30)
  %32 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_dmamap_unload(i32 %34, i32 %42)
  %44 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @m_freem(i32* %51)
  %53 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %54 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %18, %8
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %4

64:                                               ; preds = %4
  %65 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BFE_TX_LIST_SIZE, align 4
  %69 = call i32 @bzero(i32 %67, i32 %68)
  %70 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %71 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %77 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @bus_dmamap_sync(i32 %72, i32 %75, i32 %78)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
