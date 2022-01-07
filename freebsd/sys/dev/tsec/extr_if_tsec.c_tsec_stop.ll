; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i64, i64, %struct.TYPE_2__*, i32, i64, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TSEC_TX_NUM_DESC = common dso_local global i32 0, align 4
@TSEC_REG_MACCFG1 = common dso_local global i32 0, align 4
@TSEC_MACCFG1_RX_EN = common dso_local global i32 0, align 4
@TSEC_MACCFG1_TX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_stop(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %5 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %6 = call i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc* %5)
  %7 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %8 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %7, i32 0, i32 6
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %11 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %10, i32 0, i32 5
  %12 = call i32 @callout_stop(i32* %11)
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %22 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %24 = call i32 @tsec_intrs_ctl(%struct.tsec_softc* %23, i32 0)
  %25 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %26 = call i32 @tsec_dma_ctl(%struct.tsec_softc* %25, i32 0)
  br label %27

27:                                               ; preds = %35, %1
  %28 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %29 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %32 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %27
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %40 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %43 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32 %38, i32 %47, i32 %48)
  %50 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %51 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %54 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %57 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bus_dmamap_unload(i32 %52, i32 %61)
  %63 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %64 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %67 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @m_freem(i32 %71)
  %73 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %74 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  %77 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = and i64 %76, %79
  %81 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %82 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %27

83:                                               ; preds = %27
  %84 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %85 = load i32, i32* @TSEC_REG_MACCFG1, align 4
  %86 = call i32 @TSEC_READ(%struct.tsec_softc* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @TSEC_MACCFG1_RX_EN, align 4
  %88 = load i32, i32* @TSEC_MACCFG1_TX_EN, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %94 = load i32, i32* @TSEC_REG_MACCFG1, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @TSEC_WRITE(%struct.tsec_softc* %93, i32 %94, i32 %95)
  %97 = call i32 @DELAY(i32 10)
  ret void
}

declare dso_local i32 @TSEC_GLOBAL_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @tsec_intrs_ctl(%struct.tsec_softc*, i32) #1

declare dso_local i32 @tsec_dma_ctl(%struct.tsec_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
