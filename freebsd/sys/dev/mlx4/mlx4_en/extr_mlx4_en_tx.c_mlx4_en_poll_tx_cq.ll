; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_poll_tx_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_poll_tx_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_cq = type { i64, i32, i32 }
%struct.mlx4_en_priv = type { i64, %struct.TYPE_2__, %struct.mlx4_en_tx_ring** }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@MLX4_EN_TX_POLL_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_poll_tx_cq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx4_en_cq*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_tx_ring*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.mlx4_en_cq*
  store %struct.mlx4_en_cq* %8, %struct.mlx4_en_cq** %3, align 8
  %9 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx4_en_priv* @netdev_priv(i32 %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %4, align 8
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 2
  %15 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %14, align 8
  %16 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, i64 %18
  %20 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %19, align 8
  store %struct.mlx4_en_tx_ring* %20, %struct.mlx4_en_tx_ring** %5, align 8
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @INC_PERF_COUNTER(i32 %24)
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %78

31:                                               ; preds = %1
  %32 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %32, i32 0, i32 0
  %34 = call i32 @spin_trylock(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %37, i32 0, i32 1
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i64, i64* @MLX4_EN_TX_POLL_TIMEOUT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @mod_timer(i32* %38, i64 %41)
  br label %78

43:                                               ; preds = %31
  %44 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %48 = call i32 @mlx4_en_process_tx_cq(i32 %46, %struct.mlx4_en_cq* %47)
  %49 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %43
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %68, i32 0, i32 1
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* @MLX4_EN_TX_POLL_TIMEOUT, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @mod_timer(i32* %69, i64 %72)
  br label %74

74:                                               ; preds = %67, %62, %43
  %75 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %36, %30
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(i32) #1

declare dso_local i32 @INC_PERF_COUNTER(i32) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @mlx4_en_process_tx_cq(i32, %struct.mlx4_en_cq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
