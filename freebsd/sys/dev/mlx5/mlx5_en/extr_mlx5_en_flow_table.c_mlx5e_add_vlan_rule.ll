; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_add_vlan_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_add_vlan_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, i32)* @mlx5e_add_vlan_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_add_vlan_rule(%struct.mlx5e_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @fte_match_param, align 4
  %11 = call i32 @MLX5_ST_SZ_BYTES(i32 %10)
  %12 = call i32* @mlx5_vzalloc(i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @fte_match_param, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  %15 = call i32* @mlx5_vzalloc(i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx5_en_err(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @mlx5e_add_vlan_rule_sub(%struct.mlx5e_priv* %29, i32 %30, i32 %31, i32* %32, i32* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @kvfree(i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @kvfree(i32* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5_en_err(i32, i8*) #1

declare dso_local i32 @mlx5e_add_vlan_rule_sub(%struct.mlx5e_priv*, i32, i32, i32*, i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
