; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_64_getdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_64_getdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_dma_ring = type { %struct.bwn_dmadesc64*, %struct.bwn_dmadesc_meta* }
%struct.bwn_dmadesc64 = type { i32 }
%struct.bwn_dmadesc_meta = type { i32 }
%struct.bwn_dmadesc_generic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_dma_ring*, i32, %struct.bwn_dmadesc_generic**, %struct.bwn_dmadesc_meta**)* @bwn_dma_64_getdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_64_getdesc(%struct.bwn_dma_ring* %0, i32 %1, %struct.bwn_dmadesc_generic** %2, %struct.bwn_dmadesc_meta** %3) #0 {
  %5 = alloca %struct.bwn_dma_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_dmadesc_generic**, align 8
  %8 = alloca %struct.bwn_dmadesc_meta**, align 8
  %9 = alloca %struct.bwn_dmadesc64*, align 8
  store %struct.bwn_dma_ring* %0, %struct.bwn_dma_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bwn_dmadesc_generic** %2, %struct.bwn_dmadesc_generic*** %7, align 8
  store %struct.bwn_dmadesc_meta** %3, %struct.bwn_dmadesc_meta*** %8, align 8
  %10 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %5, align 8
  %11 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %10, i32 0, i32 1
  %12 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %12, i64 %14
  %16 = load %struct.bwn_dmadesc_meta**, %struct.bwn_dmadesc_meta*** %8, align 8
  store %struct.bwn_dmadesc_meta* %15, %struct.bwn_dmadesc_meta** %16, align 8
  %17 = load %struct.bwn_dma_ring*, %struct.bwn_dma_ring** %5, align 8
  %18 = getelementptr inbounds %struct.bwn_dma_ring, %struct.bwn_dma_ring* %17, i32 0, i32 0
  %19 = load %struct.bwn_dmadesc64*, %struct.bwn_dmadesc64** %18, align 8
  store %struct.bwn_dmadesc64* %19, %struct.bwn_dmadesc64** %9, align 8
  %20 = load %struct.bwn_dmadesc64*, %struct.bwn_dmadesc64** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bwn_dmadesc64, %struct.bwn_dmadesc64* %20, i64 %22
  store %struct.bwn_dmadesc64* %23, %struct.bwn_dmadesc64** %9, align 8
  %24 = load %struct.bwn_dmadesc64*, %struct.bwn_dmadesc64** %9, align 8
  %25 = bitcast %struct.bwn_dmadesc64* %24 to %struct.bwn_dmadesc_generic*
  %26 = load %struct.bwn_dmadesc_generic**, %struct.bwn_dmadesc_generic*** %7, align 8
  store %struct.bwn_dmadesc_generic* %25, %struct.bwn_dmadesc_generic** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
