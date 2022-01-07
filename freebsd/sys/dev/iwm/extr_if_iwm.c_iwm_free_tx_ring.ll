; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_tx_ring = type { i32*, %struct.iwm_tx_data*, i32, i32 }
%struct.iwm_tx_data = type { i32*, i32* }

@IWM_TX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_tx_ring*)* @iwm_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_free_tx_ring(%struct.iwm_softc* %0, %struct.iwm_tx_ring* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_tx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwm_tx_data*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_tx_ring* %1, %struct.iwm_tx_ring** %4, align 8
  %7 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %7, i32 0, i32 3
  %9 = call i32 @iwm_dma_contig_free(i32* %8)
  %10 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %11 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %10, i32 0, i32 2
  %12 = call i32 @iwm_dma_contig_free(i32* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %66, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IWM_TX_RING_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  %18 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %18, i32 0, i32 1
  %20 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %20, i64 %22
  store %struct.iwm_tx_data* %23, %struct.iwm_tx_data** %6, align 8
  %24 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %25 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %17
  %29 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %33 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %36 = call i32 @bus_dmamap_sync(i32* %31, i32* %34, i32 %35)
  %37 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %38 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %41 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_dmamap_unload(i32* %39, i32* %42)
  %44 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %45 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @m_freem(i32* %46)
  %48 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %49 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %28, %17
  %51 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %52 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %60 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_dmamap_destroy(i32* %58, i32* %61)
  %63 = load %struct.iwm_tx_data*, %struct.iwm_tx_data** %6, align 8
  %64 = getelementptr inbounds %struct.iwm_tx_data, %struct.iwm_tx_data* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %55, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %13

69:                                               ; preds = %13
  %70 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %71 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %76 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bus_dma_tag_destroy(i32* %77)
  %79 = load %struct.iwm_tx_ring*, %struct.iwm_tx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.iwm_tx_ring, %struct.iwm_tx_ring* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @iwm_dma_contig_free(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
