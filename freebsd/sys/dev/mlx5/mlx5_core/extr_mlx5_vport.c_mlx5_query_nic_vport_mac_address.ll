; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_nic_vport_mac_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_nic_vport_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@query_nic_vport_context_out = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nic_vport_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_nic_vport_mac_address(%struct.mlx5_core_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @query_nic_vport_context_out, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32* @mlx5_vzalloc(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32, i32* @query_nic_vport_context_out, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nic_vport_context, i32 0, i32 0), align 4
  %25 = call i32* @MLX5_ADDR_OF(i32 %22, i32* %23, i32 %24)
  store i32* %25, i32** %10, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mlx5_query_nic_vport_context(%struct.mlx5_core_dev* %26, i32 %27, i32* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %39

34:                                               ; preds = %21
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call i32 @ether_addr_copy(i32* %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @kvfree(i32* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @mlx5_query_nic_vport_context(%struct.mlx5_core_dev*, i32, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
