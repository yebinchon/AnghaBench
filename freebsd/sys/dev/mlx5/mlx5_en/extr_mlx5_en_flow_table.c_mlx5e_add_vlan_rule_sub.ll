; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_add_vlan_rule_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_add_vlan_rule_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.mlx5e_priv = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule* }
%struct.mlx5_flow_rule = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32 }

@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FS_ETH_FLOW_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"add rule failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, i64, i32*, i32*)* @mlx5e_add_vlan_rule_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_add_vlan_rule_sub(%struct.mlx5e_priv* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlx5_flow_table*, align 8
  %12 = alloca %struct.mlx5_flow_destination, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_flow_rule**, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %19, align 8
  store %struct.mlx5_flow_table* %20, %struct.mlx5_flow_table** %11, align 8
  %21 = bitcast %struct.mlx5_flow_destination* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %23 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %64 [
    i32 128, label %32
    i32 130, label %40
    i32 129, label %52
  ]

32:                                               ; preds = %5
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  store %struct.mlx5_flow_rule** %35, %struct.mlx5_flow_rule*** %14, align 8
  %36 = load i32, i32* @fte_match_param, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 1), align 4
  %39 = call i32 @MLX5_SET_TO_ONES(i32 %36, i32* %37, i32 %38)
  br label %90

40:                                               ; preds = %5
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store %struct.mlx5_flow_rule** %43, %struct.mlx5_flow_rule*** %14, align 8
  %44 = load i32, i32* @fte_match_param, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 1), align 4
  %47 = call i32 @MLX5_SET_TO_ONES(i32 %44, i32* %45, i32 %46)
  %48 = load i32, i32* @fte_match_param, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 1), align 4
  %51 = call i32 @MLX5_SET(i32 %48, i32* %49, i32 %50, i64 1)
  br label %90

52:                                               ; preds = %5
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store %struct.mlx5_flow_rule** %55, %struct.mlx5_flow_rule*** %14, align 8
  %56 = load i32, i32* @fte_match_param, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 2), align 4
  %59 = call i32 @MLX5_SET_TO_ONES(i32 %56, i32* %57, i32 %58)
  %60 = load i32, i32* @fte_match_param, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 2), align 4
  %63 = call i32 @MLX5_SET(i32 %60, i32* %61, i32 %62, i64 1)
  br label %90

64:                                               ; preds = %5
  %65 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %68, i64 %69
  store %struct.mlx5_flow_rule** %70, %struct.mlx5_flow_rule*** %14, align 8
  %71 = load i32, i32* @fte_match_param, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 1), align 4
  %74 = call i32 @MLX5_SET_TO_ONES(i32 %71, i32* %72, i32 %73)
  %75 = load i32, i32* @fte_match_param, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 1), align 4
  %78 = call i32 @MLX5_SET(i32 %75, i32* %76, i32 %77, i64 1)
  %79 = load i32, i32* @fte_match_param, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 0), align 4
  %82 = call i32 @MLX5_SET_TO_ONES(i32 %79, i32* %80, i32 %81)
  %83 = load i32, i32* @fte_match_param, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @outer_headers, i32 0, i32 0), align 4
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @MLX5_SET(i32 %83, i32* %84, i32 %85, i64 %86)
  %88 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %89 = call i32 @mlx5e_vport_context_update_vlans(%struct.mlx5e_priv* %88)
  br label %90

90:                                               ; preds = %64, %52, %40, %32
  %91 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %96 = load i32, i32* @MLX5_FS_ETH_FLOW_TAG, align 4
  %97 = call %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table* %91, i32 %92, i32* %93, i32* %94, i32 %95, i32 %96, %struct.mlx5_flow_destination* %12)
  %98 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* %97, %struct.mlx5_flow_rule** %98, align 8
  %99 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %100 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %99, align 8
  %101 = call i64 @IS_ERR(%struct.mlx5_flow_rule* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %90
  %104 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  %105 = load %struct.mlx5_flow_rule*, %struct.mlx5_flow_rule** %104, align 8
  %106 = call i32 @PTR_ERR(%struct.mlx5_flow_rule* %105)
  store i32 %106, i32* %15, align 4
  %107 = load %struct.mlx5_flow_rule**, %struct.mlx5_flow_rule*** %14, align 8
  store %struct.mlx5_flow_rule* null, %struct.mlx5_flow_rule** %107, align 8
  %108 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %109 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @mlx5_en_err(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %103, %90
  %113 = load i32, i32* %15, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32*, i32) #2

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i64) #2

declare dso_local i32 @mlx5e_vport_context_update_vlans(%struct.mlx5e_priv*) #2

declare dso_local %struct.mlx5_flow_rule* @mlx5_add_flow_rule(%struct.mlx5_flow_table*, i32, i32*, i32*, i32, i32, %struct.mlx5_flow_destination*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_rule*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_rule*) #2

declare dso_local i32 @mlx5_en_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
