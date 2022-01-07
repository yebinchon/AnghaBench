; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, %struct.al_eth_ring* }
%struct.al_eth_ring = type { i32, i32, %struct.TYPE_2__*, i32, i32*, i32, i32, i32, i32, %struct.al_udma_q_params }
%struct.TYPE_2__ = type { i32, i32* }
%struct.al_udma_q_params = type { i32*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_IFAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*, i32)* @al_eth_free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_free_tx_resources(%struct.al_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.al_eth_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_eth_ring*, align 8
  %6 = alloca %struct.al_udma_q_params*, align 8
  %7 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 1
  %10 = load %struct.al_eth_ring*, %struct.al_eth_ring** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %10, i64 %12
  store %struct.al_eth_ring* %13, %struct.al_eth_ring** %5, align 8
  %14 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %15 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %14, i32 0, i32 9
  store %struct.al_udma_q_params* %15, %struct.al_udma_q_params** %6, align 8
  br label %16

16:                                               ; preds = %24, %2
  %17 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %18 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %21 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %20, i32 0, i32 8
  %22 = call i64 @taskqueue_cancel(i32 %19, i32* %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %26 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %29 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %28, i32 0, i32 8
  %30 = call i32 @taskqueue_drain(i32 %27, i32* %29)
  br label %16

31:                                               ; preds = %16
  %32 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %33 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @taskqueue_free(i32 %34)
  br label %36

36:                                               ; preds = %44, %31
  %37 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %38 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %41 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %40, i32 0, i32 6
  %42 = call i64 @taskqueue_cancel(i32 %39, i32* %41, i32* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %46 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %49 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %48, i32 0, i32 6
  %50 = call i32 @taskqueue_drain(i32 %47, i32* %49)
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %53 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @taskqueue_free(i32 %54)
  %56 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %57 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %65 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @drbr_flush(i32 %63, i32* %66)
  %68 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %69 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @buf_ring_free(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %60, %51
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %121, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %77 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %74
  %81 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %82 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @m_freem(i32* %88)
  %90 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %91 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %98 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %101 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @bus_dmamap_unload(i32 %99, i32 %107)
  %109 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %110 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %113 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @bus_dmamap_destroy(i32 %111, i32 %119)
  br label %121

121:                                              ; preds = %80
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %74

124:                                              ; preds = %74
  %125 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %126 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @bus_dma_tag_destroy(i32 %127)
  %129 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %130 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* @M_IFAL, align 4
  %133 = call i32 @free(%struct.TYPE_2__* %131, i32 %132)
  %134 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %135 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %134, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %135, align 8
  %136 = load %struct.al_eth_ring*, %struct.al_eth_ring** %5, align 8
  %137 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %136, i32 0, i32 1
  %138 = call i32 @mtx_destroy(i32* %137)
  %139 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %140 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %124
  br label %157

144:                                              ; preds = %124
  %145 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %146 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %149 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %152 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @al_dma_free_coherent(i32 %147, i32 %150, i32* %153)
  %155 = load %struct.al_udma_q_params*, %struct.al_udma_q_params** %6, align 8
  %156 = getelementptr inbounds %struct.al_udma_q_params, %struct.al_udma_q_params* %155, i32 0, i32 0
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %144, %143
  ret void
}

declare dso_local i64 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @drbr_flush(i32, i32*) #1

declare dso_local i32 @buf_ring_free(i32*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @al_dma_free_coherent(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
