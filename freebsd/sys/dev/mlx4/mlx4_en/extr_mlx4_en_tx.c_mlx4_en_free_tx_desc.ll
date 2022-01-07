; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, %struct.mlx4_en_tx_info* }
%struct.mlx4_en_tx_info = type { i64, i32, %struct.mbuf* }
%struct.mbuf = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i64)* @mlx4_en_free_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i64 %2) #0 {
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_tx_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx4_en_tx_info*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %9, i32 0, i32 1
  %11 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %11, i64 %12
  store %struct.mlx4_en_tx_info* %13, %struct.mlx4_en_tx_info** %7, align 8
  %14 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %14, i32 0, i32 2
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = icmp eq %struct.mbuf* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %7, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %28 = call i32 @bus_dmamap_sync(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dmamap_unload(i32 %31, i32 %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %37 = call i32 @m_freem(%struct.mbuf* %36)
  br label %38

38:                                               ; preds = %20, %19
  %39 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  ret i64 %41
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
