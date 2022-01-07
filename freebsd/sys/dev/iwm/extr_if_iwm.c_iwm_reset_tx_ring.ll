; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_reset_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_reset_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i64 }
%struct.iwm_tx_ring = type { i32, i64, i64, %struct.TYPE_2__, i32, i32, %struct.iwm_tx_data* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.iwm_tx_data = type { i32*, i32 }

@IWM_TX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IWM_MVM_CMD_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_tx_ring*)* @iwm_reset_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_reset_tx_ring(%struct.iwm_softc* %0, %struct.iwm_tx_ring* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_tx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_tx_data*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_tx_ring* %1, %struct.iwm_tx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IWM_TX_RING_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %12, i32 0, i32 6
  %14 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %14, i64 %16
  store %struct.iwm_tx_data* %17, %struct.iwm_tx_data** %6, align 8
  %18 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %19 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %11
  %23 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %27 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = call i32 @bus_dmamap_sync(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %35 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_dmamap_unload(i32 %33, i32 %36)
  %38 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %39 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @m_freem(i32* %40)
  %42 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %43 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %22, %11
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memset(i32 %51, i32 0, i32 %55)
  %57 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %66 = call i32 @bus_dmamap_sync(i32 %60, i32 %64, i32 %65)
  %67 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %73 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %79 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IWM_MVM_CMD_QUEUE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %48
  %86 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %87 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %92 = call i32 @iwm_pcie_clear_cmd_in_flight(%struct.iwm_softc* %91)
  br label %93

93:                                               ; preds = %90, %85, %48
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @iwm_pcie_clear_cmd_in_flight(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
