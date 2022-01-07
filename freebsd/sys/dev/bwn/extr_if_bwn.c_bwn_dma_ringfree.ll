; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_ringfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_ringfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_dma_ring = type { i32, %struct.bwn_dma_ring*, i32* }

@BWN_TX_SLOTS_PER_FRAME = common dso_local global i32 0, align 4
@BWN_MAXTXHDRSIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_dma_ring**)* @bwn_dma_ringfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_ringfree(%struct.bwn_dma_ring** %0) #0 {
  %2 = alloca %struct.bwn_dma_ring**, align 8
  store %struct.bwn_dma_ring** %0, %struct.bwn_dma_ring*** %2, align 8
  %3 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %4 = icmp eq %struct.bwn_dma_ring** %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %45

6:                                                ; preds = %1
  %7 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %8 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %7, align 8
  %9 = call i32 @bwn_dma_free_descbufs(%struct.bwn_dma_ring* %8)
  %10 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %11 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %10, align 8
  %12 = call i32 @bwn_dma_free_ringmemory(%struct.bwn_dma_ring* %11)
  %13 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %14 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %13, align 8
  %15 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %6
  %19 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %20 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %19, align 8
  %21 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %24 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %23, align 8
  %25 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BWN_TX_SLOTS_PER_FRAME, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* @BWN_MAXTXHDRSIZE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @contigfree(i32* %22, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %18, %6
  %34 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %35 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %34, align 8
  %36 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %35, i32 0, i32 1
  %37 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %36, align 8
  %38 = load i32, i32* @M_DEVBUF, align 4
  %39 = call i32 @free(%struct.bwn_dma_ring* %37, i32 %38)
  %40 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  %41 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %40, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(%struct.bwn_dma_ring* %41, i32 %42)
  %44 = load %struct.bwn_dma_ring**, %struct.bwn_dma_ring*** %2, align 8
  store %struct.bwn_dma_ring* null, %struct.bwn_dma_ring** %44, align 8
  br label %45

45:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @bwn_dma_free_descbufs(%struct.bwn_dma_ring*) #1

declare dso_local i32 @bwn_dma_free_ringmemory(%struct.bwn_dma_ring*) #1

declare dso_local i32 @contigfree(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.bwn_dma_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
