; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { %struct.al_eth_ring* }
%struct.al_eth_ring = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.al_udma_q_params }
%struct.TYPE_2__ = type { i32, i32* }
%struct.al_udma_q_params = type { i64, i32*, i32, i32, i32*, i32, i32 }

@M_IFAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*, i32)* @al_eth_free_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_free_rx_resources(%struct.al_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.al_eth_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_eth_ring*, align 8
  %6 = alloca %struct.al_udma_q_params*, align 8
  %7 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 0
  %10 = load %struct.al_eth_ring*, %struct.al_eth_ring** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %10, i64 %12
  store %struct.al_eth_ring* %13, %struct.al_eth_ring** %5, align 8
  %14 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %15 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %14, i32 0, i32 6
  store %struct.al_udma_q_params* %15, %struct.al_udma_q_params** %6, align 8
  br label %16

16:                                               ; preds = %24, %2
  %17 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %18 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %21 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %20, i32 0, i32 5
  %22 = call i64 @taskqueue_cancel(i32 %19, i32* %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %26 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %29 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %28, i32 0, i32 5
  %30 = call i32 @taskqueue_drain(i32 %27, i32* %29)
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %33 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @taskqueue_free(i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %83, %31
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %39 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %44 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @m_freem(i32* %50)
  %52 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %53 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %60 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %63 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bus_dmamap_unload(i32 %61, i32 %69)
  %71 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %72 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %75 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bus_dmamap_destroy(i32 %73, i32 %81)
  br label %83

83:                                               ; preds = %42
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %36

86:                                               ; preds = %36
  %87 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %88 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bus_dma_tag_destroy(i32 %89)
  %91 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %92 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* @M_IFAL, align 4
  %95 = call i32 @free(%struct.TYPE_2__* %93, i32 %94)
  %96 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %97 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %96, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %97, align 8
  %98 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %99 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %137

103:                                              ; preds = %86
  %104 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %105 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %108 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %111 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @al_dma_free_coherent(i32 %106, i32 %109, i32* %112)
  %114 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %115 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %114, i32 0, i32 4
  store i32* null, i32** %115, align 8
  %116 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %117 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %103
  br label %137

121:                                              ; preds = %103
  %122 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %123 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %126 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %129 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @al_dma_free_coherent(i32 %124, i32 %127, i32* %130)
  %132 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %133 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %135 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %134, i32 0, i32 1
  %136 = call i32 @tcp_lro_free(i32* %135)
  br label %137

137:                                              ; preds = %121, %120, %102
  ret void
}

declare dso_local i64 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @al_dma_free_coherent(i32, i32, i32*) #1

declare dso_local i32 @tcp_lro_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
