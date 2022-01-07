; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_transmit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_transmit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_tx_ring** }
%struct.mlx4_en_tx_ring = type { i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@MLX4_EN_WATCHDOG_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.mbuf*)* @mlx4_en_transmit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_transmit_locked(%struct.ifnet* %0, i32 %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca %struct.mlx4_en_tx_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = call %struct.mlx4_en_priv* @netdev_priv(%struct.ifnet* %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %8, align 8
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %15, i64 %17
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %18, align 8
  store %struct.mlx4_en_tx_ring* %19, %struct.mlx4_en_tx_ring** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @READ_ONCE(i32 %29)
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %26, %3
  %33 = phi i1 [ true, %3 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i32, i32* @ENETDOWN, align 4
  store i32 %40, i32* %4, align 4
  br label %66

41:                                               ; preds = %32
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @mlx4_en_xmit(%struct.mlx4_en_priv* %42, i32 %43, %struct.mbuf** %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = call i32 @m_freem(%struct.mbuf* %47)
  %49 = load i32, i32* @ENOBUFS, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i64, i64* @ticks, align 8
  %56 = load i64, i64* @MLX4_EN_WATCHDOG_TIMEOUT, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46
  br label %64

61:                                               ; preds = %41
  %62 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %37
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.ifnet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @mlx4_en_xmit(%struct.mlx4_en_priv*, i32, %struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
