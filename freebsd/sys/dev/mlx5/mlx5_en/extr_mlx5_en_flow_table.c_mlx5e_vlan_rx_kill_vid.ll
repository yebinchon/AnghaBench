; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@MLX5E_VLAN_RULE_TYPE_MATCH_VID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_vlan_rx_kill_vid(i8* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mlx5e_priv*
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %7, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 2
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %14 = icmp ne %struct.ifnet* %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %18 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %19, i32 %23)
  %25 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %32 = load i32, i32* @MLX5E_VLAN_RULE_TYPE_MATCH_VID, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @mlx5e_del_vlan_rule(%struct.mlx5e_priv* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %16
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %37 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %36)
  br label %38

38:                                               ; preds = %35, %15
  ret void
}

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_del_vlan_rule(%struct.mlx5e_priv*, i32, i32) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
