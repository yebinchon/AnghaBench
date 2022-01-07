; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_priv = type { i64, i32, %struct.mlx4_en_tx_ring** }
%struct.mlx4_en_tx_ring = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.ifnet* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = call i32 @m_freem(%struct.mbuf* %17)
  %19 = load i32, i32* @ENETDOWN, align 4
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %21)
  %23 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %29, 128
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = srem i32 %30, %33
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %20
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = call i32 @mlx4_en_select_queue(%struct.ifnet* %36, %struct.mbuf* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 2
  %42 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %42, i64 %44
  %46 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %45, align 8
  store %struct.mlx4_en_tx_ring* %46, %struct.mlx4_en_tx_ring** %7, align 8
  %47 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %53 = call i32 @mlx4_en_transmit_locked(%struct.ifnet* %50, i32 %51, %struct.mbuf* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @mlx4_en_xmit_poll(%struct.mlx4_en_priv* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %39, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.ifnet*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @mlx4_en_select_queue(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx4_en_transmit_locked(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_en_xmit_poll(%struct.mlx4_en_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
