; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_xmit_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_xmit_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, %struct.mlx4_en_tx_ring**, %struct.mlx4_en_cq** }
%struct.mlx4_en_tx_ring = type { i32, i32 }
%struct.mlx4_en_cq = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MLX4_EN_TX_POLL_TIMEOUT = common dso_local global i64 0, align 8
@MLX4_EN_TX_POLL_MODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, i32)* @mlx4_en_xmit_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_xmit_poll(%struct.mlx4_en_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_cq*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 3
  %9 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %9, i64 %11
  %13 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %12, align 8
  store %struct.mlx4_en_cq* %13, %struct.mlx4_en_cq** %5, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 2
  %16 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %16, i64 %18
  %20 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %19, align 8
  store %struct.mlx4_en_tx_ring* %20, %struct.mlx4_en_tx_ring** %6, align 8
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %27, i32 0, i32 0
  %29 = call i32 @timer_pending(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %32, i32 0, i32 0
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* @MLX4_EN_TX_POLL_TIMEOUT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @mod_timer(i32* %33, i64 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @MLX4_EN_TX_POLL_MODER, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %48, i32 0, i32 1
  %50 = call i64 @spin_trylock(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %5, align 8
  %57 = call i32 @mlx4_en_process_tx_cq(i32 %55, %struct.mlx4_en_cq* %56)
  %58 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  br label %61

61:                                               ; preds = %52, %47
  br label %62

62:                                               ; preds = %25, %61, %38
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @mlx4_en_process_tx_cq(i32, %struct.mlx4_en_cq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
