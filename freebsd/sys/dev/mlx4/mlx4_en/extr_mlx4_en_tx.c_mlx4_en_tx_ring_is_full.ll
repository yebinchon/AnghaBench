; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_tx_ring_is_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_tx_ring_is_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_tx_ring = type { i32, i32, i32 }

@HEADROOM = common dso_local global i32 0, align 4
@MLX4_EN_TX_WQE_MAX_WQEBBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_tx_ring*)* @mlx4_en_tx_ring_is_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_tx_ring_is_full(%struct.mlx4_en_tx_ring* %0) #0 {
  %2 = alloca %struct.mlx4_en_tx_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_en_tx_ring* %0, %struct.mlx4_en_tx_ring** %2, align 8
  %4 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %2, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = sub nsw i32 %6, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @HEADROOM, align 4
  %17 = load i32, i32* @MLX4_EN_TX_WQE_MAX_WQEBBS, align 4
  %18 = mul nsw i32 2, %17
  %19 = add nsw i32 %16, %18
  %20 = icmp slt i32 %15, %19
  %21 = zext i1 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
