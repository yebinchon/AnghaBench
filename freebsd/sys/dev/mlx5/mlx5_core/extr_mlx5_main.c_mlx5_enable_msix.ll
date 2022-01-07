; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_enable_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, %struct.mlx5_priv }
%struct.mlx5_priv = type { %struct.TYPE_3__*, %struct.mlx5_eq_table }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_eq_table = type { i32 }

@log_max_eq = common dso_local global i32 0, align 4
@MLX5_EQ_VEC_COMP_BASE = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_enable_msix(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_priv*, align 8
  %5 = alloca %struct.mlx5_eq_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 2
  store %struct.mlx5_priv* %11, %struct.mlx5_priv** %4, align 8
  %12 = load %struct.mlx5_priv*, %struct.mlx5_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %12, i32 0, i32 1
  store %struct.mlx5_eq_table* %13, %struct.mlx5_eq_table** %5, align 8
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = load i32, i32* @log_max_eq, align 4
  %16 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %14, i32 %15)
  %17 = shl i32 1, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @MLX5_EQ_VEC_COMP_BASE, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %30 = load i32, i32* @num_ports, align 4
  %31 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %29, i32 %30)
  %32 = call i32 (...) @num_online_cpus()
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 256
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 256, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MLX5_EQ_VEC_COMP_BASE, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %99

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.TYPE_3__* @kzalloc(i32 %57, i32 %58)
  %60 = load %struct.mlx5_priv*, %struct.mlx5_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %60, i32 0, i32 0
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %61, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %75, %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mlx5_priv*, %struct.mlx5_priv** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %80 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx5_priv*, %struct.mlx5_priv** %4, align 8
  %83 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* @MLX5_EQ_VEC_COMP_BASE, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @pci_enable_msix_range(i32 %81, %struct.TYPE_3__* %84, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %78
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @MLX5_EQ_VEC_COMP_BASE, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %91, %50
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
