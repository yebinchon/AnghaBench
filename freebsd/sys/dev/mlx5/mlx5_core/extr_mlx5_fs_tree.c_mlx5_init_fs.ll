; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_init_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_mlx5_init_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@nic_flow_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_init_fs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load i32, i32* @nic_flow_table, align 4
  %7 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = call i32 @init_root_ns(%struct.mlx5_core_dev* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %47

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = call i32 @init_fdb_root_ns(%struct.mlx5_core_dev* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %47

22:                                               ; preds = %16
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %24 = call i32 @init_egress_acl_root_ns(%struct.mlx5_core_dev* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %47

28:                                               ; preds = %22
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %30 = call i32 @init_ingress_acl_root_ns(%struct.mlx5_core_dev* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %47

34:                                               ; preds = %28
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = call i32 @init_sniffer_tx_root_ns(%struct.mlx5_core_dev* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %47

40:                                               ; preds = %34
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = call i32 @init_sniffer_rx_root_ns(%struct.mlx5_core_dev* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %45, %39, %33, %27, %21, %14
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %49 = call i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @init_fdb_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @init_egress_acl_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @init_ingress_acl_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @init_sniffer_tx_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @init_sniffer_rx_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
