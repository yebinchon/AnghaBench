; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_free_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_rx_ring = type { i32 }
%struct.mlx4_en_rx_mbuf = type { i32*, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_mbuf*)* @mlx4_en_free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_free_buf(%struct.mlx4_en_rx_ring* %0, %struct.mlx4_en_rx_mbuf* %1) #0 {
  %3 = alloca %struct.mlx4_en_rx_ring*, align 8
  %4 = alloca %struct.mlx4_en_rx_mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_rx_ring* %0, %struct.mlx4_en_rx_ring** %3, align 8
  store %struct.mlx4_en_rx_mbuf* %1, %struct.mlx4_en_rx_mbuf** %4, align 8
  %6 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %4, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %14 = call i32 @bus_dmamap_sync(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bus_dmamap_unload(i32 %17, i32 %18)
  %20 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @m_freem(i32* %22)
  %24 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
