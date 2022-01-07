; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_del_vlan_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_del_vlan_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32**, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i32, i64)* @mlx5e_del_vlan_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_del_vlan_rule(%struct.mlx5e_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %83 [
    i32 128, label %8
    i32 131, label %24
    i32 130, label %40
    i32 129, label %56
  ]

8:                                                ; preds = %3
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @mlx5_del_flow_rule(i32* %18)
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %14, %8
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @mlx5_del_flow_rule(i32* %34)
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  br label %84

40:                                               ; preds = %3
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @mlx5_del_flow_rule(i32* %50)
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %46, %40
  br label %84

56:                                               ; preds = %3
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %56
  %66 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @mlx5_del_flow_rule(i32* %72)
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %65, %56
  %81 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %82 = call i32 @mlx5e_vport_context_update_vlans(%struct.mlx5e_priv* %81)
  br label %84

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %83, %80, %55, %39, %23
  ret void
}

declare dso_local i32 @mlx5_del_flow_rule(i32*) #1

declare dso_local i32 @mlx5e_vport_context_update_vlans(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
