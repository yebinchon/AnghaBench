; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_get_prio_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_get_prio_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }

@ets = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5E_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5e_get_prio_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_get_prio_tc(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 1
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %11 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %10)
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 1
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %15 = load i32, i32* @ets, align 4
  %16 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %20 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %19)
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MLX5E_MAX_PRIORITY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @mlx5_query_port_prio_tc(%struct.mlx5_core_dev* %28, i32 %29, i64 %36)
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %23

46:                                               ; preds = %41, %23
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %48 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_query_port_prio_tc(%struct.mlx5_core_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
