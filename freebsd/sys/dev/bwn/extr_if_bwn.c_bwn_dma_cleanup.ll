; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_dma_ring = type { i64, i32, i32, i64 }

@BHND_DMA_ADDR_64BIT = common dso_local global i64 0, align 8
@BWN_DMA64_TXRINGLO = common dso_local global i32 0, align 4
@BWN_DMA64_TXRINGHI = common dso_local global i32 0, align 4
@BWN_DMA32_TXRING = common dso_local global i32 0, align 4
@BWN_DMA64_RXRINGLO = common dso_local global i32 0, align 4
@BWN_DMA64_RXRINGHI = common dso_local global i32 0, align 4
@BWN_DMA32_RXRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_dma_ring*)* @bwn_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_cleanup(%struct.bwn_dma_ring* %0) #0 {
  %2 = alloca %struct.bwn_dma_ring*, align 8
  store %struct.bwn_dma_ring* %0, %struct.bwn_dma_ring** %2, align 8
  %3 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %4 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %9 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %12 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %15 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @bwn_dma_tx_reset(i32 %10, i32 %13, i64 %16)
  %18 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %19 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BHND_DMA_ADDR_64BIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %25 = load i32, i32* @BWN_DMA64_TXRINGLO, align 4
  %26 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %24, i32 %25, i32 0)
  %27 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %28 = load i32, i32* @BWN_DMA64_TXRINGHI, align 4
  %29 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %27, i32 %28, i32 0)
  br label %34

30:                                               ; preds = %7
  %31 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %32 = load i32, i32* @BWN_DMA32_TXRING, align 4
  %33 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %23
  br label %63

35:                                               ; preds = %1
  %36 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %37 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %40 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %43 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bwn_dma_rx_reset(i32 %38, i32 %41, i64 %44)
  %46 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %47 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BHND_DMA_ADDR_64BIT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %35
  %52 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %53 = load i32, i32* @BWN_DMA64_RXRINGLO, align 4
  %54 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %52, i32 %53, i32 0)
  %55 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %56 = load i32, i32* @BWN_DMA64_RXRINGHI, align 4
  %57 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %55, i32 %56, i32 0)
  br label %62

58:                                               ; preds = %35
  %59 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %2, align 8
  %60 = load i32, i32* @BWN_DMA32_RXRING, align 4
  %61 = call i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %34
  ret void
}

declare dso_local i32 @bwn_dma_tx_reset(i32, i32, i64) #1

declare dso_local i32 @BWN_DMA_WRITE(%struct.bwn_dma_ring*, i32, i32) #1

declare dso_local i32 @bwn_dma_rx_reset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
