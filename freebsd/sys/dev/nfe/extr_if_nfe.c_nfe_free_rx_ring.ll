; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }
%struct.nfe_rx_ring = type { i32*, i32*, i32*, i32, i32*, i32*, %struct.nfe_rx_data* }
%struct.nfe_rx_data = type { i32*, i32* }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_RX_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, %struct.nfe_rx_ring*)* @nfe_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_free_rx_ring(%struct.nfe_softc* %0, %struct.nfe_rx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_rx_ring*, align 8
  %5 = alloca %struct.nfe_rx_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_rx_ring* %1, %struct.nfe_rx_ring** %4, align 8
  %8 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %6, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %19, %14
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NFE_RX_RING_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %30, i32 0, i32 6
  %32 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %32, i64 %34
  store %struct.nfe_rx_data* %35, %struct.nfe_rx_data** %5, align 8
  %36 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %37 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %42 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %45 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_dmamap_destroy(i32* %43, i32* %46)
  %48 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %49 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %40, %29
  %51 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %52 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %57 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @m_freem(i32* %58)
  %60 = load %struct.nfe_rx_data*, %struct.nfe_rx_data** %5, align 8
  %61 = getelementptr inbounds %struct.nfe_rx_data, %struct.nfe_rx_data* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %78 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @bus_dmamap_destroy(i32* %79, i32* %82)
  %84 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %85 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %84, i32 0, i32 5
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %76, %71
  %87 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %88 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_dma_tag_destroy(i32* %89)
  %91 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %66
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %98 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %101 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dmamap_unload(i32* %99, i32 %102)
  %104 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %105 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %109 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @bus_dmamem_free(i32* %106, i8* %107, i32 %110)
  %112 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %113 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %115 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  br label %116

116:                                              ; preds = %96, %93
  %117 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %118 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %123 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @bus_dma_tag_destroy(i32* %124)
  %126 = load %struct.nfe_rx_ring*, %struct.nfe_rx_ring** %4, align 8
  %127 = getelementptr inbounds %struct.nfe_rx_ring, %struct.nfe_rx_ring* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %121, %116
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
