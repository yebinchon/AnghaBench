; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_close_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_close_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32, i32, i32, i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@MLX5_INTERFACE_PROTOCOL_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_close_locked(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  store %struct.mlx5e_priv* %7, %struct.mlx5e_priv** %4, align 8
  %8 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 3
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 3
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %20 = call i32 @mlx5e_set_rx_mode_core(%struct.mlx5e_priv* %19)
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %22 = call i32 @mlx5e_del_all_vlan_rules(%struct.mlx5e_priv* %21)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LINK_STATE_DOWN, align 4
  %27 = call i32 @if_link_state_change(i32 %25, i32 %26)
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %29 = call i32 @mlx5e_close_flow_table(%struct.mlx5e_priv* %28)
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %31 = call i32 @mlx5e_close_tirs(%struct.mlx5e_priv* %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = call i32 @mlx5e_close_rqt(%struct.mlx5e_priv* %32)
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %35 = call i32 @mlx5e_close_channels(%struct.mlx5e_priv* %34)
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_ETH, align 4
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx5_vport_dealloc_q_counter(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %45 = call i32 @mlx5e_close_tises(%struct.mlx5e_priv* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %14, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_set_rx_mode_core(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_del_all_vlan_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @mlx5e_close_flow_table(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_close_tirs(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_close_rqt(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_close_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_vport_dealloc_q_counter(i32, i32, i32) #1

declare dso_local i32 @mlx5e_close_tises(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
