; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_free_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_free_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }
%struct.nfe_tx_ring = type { i32*, i32*, i32*, i32*, i32*, %struct.nfe_tx_data* }
%struct.nfe_tx_data = type { i32*, i32* }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_TX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, %struct.nfe_tx_ring*)* @nfe_free_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_free_tx_ring(%struct.nfe_softc* %0, %struct.nfe_tx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_tx_ring*, align 8
  %5 = alloca %struct.nfe_tx_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_tx_ring* %1, %struct.nfe_tx_ring** %4, align 8
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %10 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %6, align 8
  store i32 4, i32* %8, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to i8*
  store i8* %24, i8** %6, align 8
  store i32 4, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %15
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %79, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NFE_TX_RING_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %31, i32 0, i32 5
  %33 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %33, i64 %35
  store %struct.nfe_tx_data* %36, %struct.nfe_tx_data** %5, align 8
  %37 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %38 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %30
  %42 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %46 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32* %44, i32* %47, i32 %48)
  %50 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %54 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_dmamap_unload(i32* %52, i32* %55)
  %57 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %58 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @m_freem(i32* %59)
  %61 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %62 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %41, %30
  %64 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %65 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %70 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %73 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @bus_dmamap_destroy(i32* %71, i32* %74)
  %76 = load %struct.nfe_tx_data*, %struct.nfe_tx_data** %5, align 8
  %77 = getelementptr inbounds %struct.nfe_tx_data, %struct.nfe_tx_data* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %68, %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %26

82:                                               ; preds = %26
  %83 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %84 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %89 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @bus_dma_tag_destroy(i32* %90)
  %92 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %93 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %92, i32 0, i32 4
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %131

97:                                               ; preds = %94
  %98 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %99 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %102 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %105 = call i32 @bus_dmamap_sync(i32* %100, i32* %103, i32 %104)
  %106 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %107 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %110 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @bus_dmamap_unload(i32* %108, i32* %111)
  %113 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %114 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %118 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @bus_dmamem_free(i32* %115, i8* %116, i32* %119)
  %121 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %122 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %124 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %126 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @bus_dma_tag_destroy(i32* %127)
  %129 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %130 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  br label %131

131:                                              ; preds = %97, %94
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
