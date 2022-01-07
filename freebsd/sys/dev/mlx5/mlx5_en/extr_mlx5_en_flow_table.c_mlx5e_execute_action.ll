; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_execute_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_execute_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_eth_addr_hash_node = type { i32, i32, i32 }

@MLX5E_FULLMATCH = common dso_local global i32 0, align 4
@MLX5E_ACTION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_eth_addr_hash_node*)* @mlx5e_execute_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_execute_action(%struct.mlx5e_priv* %0, %struct.mlx5e_eth_addr_hash_node* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_eth_addr_hash_node*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_eth_addr_hash_node* %1, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %5 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %37 [
    i32 129, label %8
    i32 128, label %17
  ]

8:                                                ; preds = %2
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %10, i32 0, i32 2
  %12 = load i32, i32* @MLX5E_FULLMATCH, align 4
  %13 = call i32 @mlx5e_add_eth_addr_rule(%struct.mlx5e_priv* %9, i32* %11, i32 %12)
  %14 = load i32, i32* @MLX5E_ACTION_NONE, align 4
  %15 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %19, i32 0, i32 2
  %21 = call i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv* %18, i32* %20)
  %22 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5e_eth_addr_hash_node, %struct.mlx5e_eth_addr_hash_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_mpfs_del_mac(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %26, %17
  %35 = load %struct.mlx5e_eth_addr_hash_node*, %struct.mlx5e_eth_addr_hash_node** %4, align 8
  %36 = call i32 @mlx5e_del_eth_addr_from_hash(%struct.mlx5e_eth_addr_hash_node* %35)
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %34, %8
  ret void
}

declare dso_local i32 @mlx5e_add_eth_addr_rule(%struct.mlx5e_priv*, i32*, i32) #1

declare dso_local i32 @mlx5e_del_eth_addr_from_flow_table(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5_mpfs_del_mac(i32, i32) #1

declare dso_local i32 @mlx5e_del_eth_addr_from_hash(%struct.mlx5e_eth_addr_hash_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
