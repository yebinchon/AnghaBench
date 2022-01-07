; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_query_node_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_query_node_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_reg_node_desc = type { i32 }

@MLX5_REG_NODE_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i8*)* @mlx5_query_node_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_query_node_desc(%struct.mlx5_ib_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlx5_reg_node_desc, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %8 = call i64 @mlx5_use_mad_ifc(%struct.mlx5_ib_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @mlx5_query_mad_ifc_node_desc(%struct.mlx5_ib_dev* %11, i8* %12)
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = call i32 @memset(%struct.mlx5_reg_node_desc* %6, i32 0, i32 4)
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @MLX5_REG_NODE_DESC, align 4
  %21 = call i32 @mlx5_core_access_reg(i32 %18, %struct.mlx5_reg_node_desc* %6, i32 4, i8* %19, i32 4, i32 %20, i32 0, i32 0)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @mlx5_use_mad_ifc(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_query_mad_ifc_node_desc(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @memset(%struct.mlx5_reg_node_desc*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(i32, %struct.mlx5_reg_node_desc*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
