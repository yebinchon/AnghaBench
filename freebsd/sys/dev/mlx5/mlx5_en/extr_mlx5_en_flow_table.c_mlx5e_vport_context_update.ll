; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_vport_context_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_vport_context_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5e_eth_addr_db }
%struct.mlx5e_eth_addr_db = type { i32, i32 }

@MLX5_NIC_VPORT_LIST_TYPE_UC = common dso_local global i32 0, align 4
@MLX5_NIC_VPORT_LIST_TYPE_MC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_vport_context_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_vport_context_update(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5e_eth_addr_db*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 1
  store %struct.mlx5e_eth_addr_db* %5, %struct.mlx5e_eth_addr_db** %3, align 8
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %7 = load i32, i32* @MLX5_NIC_VPORT_LIST_TYPE_UC, align 4
  %8 = call i32 @mlx5e_vport_context_update_addr_list(%struct.mlx5e_priv* %6, i32 %7)
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %10 = load i32, i32* @MLX5_NIC_VPORT_LIST_TYPE_MC, align 4
  %11 = call i32 @mlx5e_vport_context_update_addr_list(%struct.mlx5e_priv* %9, i32 %10)
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx5e_eth_addr_db*, %struct.mlx5e_eth_addr_db** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_eth_addr_db, %struct.mlx5e_eth_addr_db* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5_modify_nic_vport_promisc(i32 %14, i32 0, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @mlx5e_vport_context_update_addr_list(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_promisc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
