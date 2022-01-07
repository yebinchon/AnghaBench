; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32, i32, i32, %struct.ifnet*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mlx5e_open_tises failed, %d\0A\00", align 1
@MLX5_INTERFACE_PROTOCOL_ETH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"mlx5_vport_alloc_q_counter failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"mlx5e_open_channels failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"mlx5e_open_rqt failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"mlx5e_open_tir failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"mlx5e_open_flow_table failed, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"mlx5e_add_all_vlan_rules failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_locked(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %4, align 8
  %10 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

16:                                               ; preds = %1
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %18 = call i32 @mlx5e_open_tises(%struct.mlx5e_priv* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mlx5_en_err(%struct.ifnet* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %122

26:                                               ; preds = %16
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_ETH, align 4
  %31 = call i32 @mlx5_vport_alloc_q_counter(i32 %29, i32 %30, i32* %6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %35, i32 0, i32 3
  %37 = load %struct.ifnet*, %struct.ifnet** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mlx5_en_err(%struct.ifnet* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %118

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %45 = call i32 @mlx5e_open_channels(%struct.mlx5e_priv* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @mlx5_en_err(%struct.ifnet* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %109

52:                                               ; preds = %40
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %54 = call i32 @mlx5e_open_rqt(%struct.mlx5e_priv* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @mlx5_en_err(%struct.ifnet* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %106

61:                                               ; preds = %52
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %63 = call i32 @mlx5e_open_tirs(%struct.mlx5e_priv* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @mlx5_en_err(%struct.ifnet* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %103

70:                                               ; preds = %61
  %71 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %72 = call i32 @mlx5e_open_flow_table(%struct.mlx5e_priv* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mlx5_en_err(%struct.ifnet* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %100

79:                                               ; preds = %70
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %81 = call i32 @mlx5e_add_all_vlan_rules(%struct.mlx5e_priv* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @mlx5_en_err(%struct.ifnet* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  br label %97

88:                                               ; preds = %79
  %89 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %90 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %91 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %90, i32 0, i32 2
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  %93 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %94 = call i32 @mlx5e_update_carrier(%struct.mlx5e_priv* %93)
  %95 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %96 = call i32 @mlx5e_set_rx_mode_core(%struct.mlx5e_priv* %95)
  store i32 0, i32* %2, align 4
  br label %122

97:                                               ; preds = %84
  %98 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %99 = call i32 @mlx5e_close_flow_table(%struct.mlx5e_priv* %98)
  br label %100

100:                                              ; preds = %97, %75
  %101 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %102 = call i32 @mlx5e_close_tirs(%struct.mlx5e_priv* %101)
  br label %103

103:                                              ; preds = %100, %66
  %104 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %105 = call i32 @mlx5e_close_rqt(%struct.mlx5e_priv* %104)
  br label %106

106:                                              ; preds = %103, %57
  %107 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %108 = call i32 @mlx5e_close_channels(%struct.mlx5e_priv* %107)
  br label %109

109:                                              ; preds = %106, %48
  %110 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_ETH, align 4
  %114 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %115 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mlx5_vport_dealloc_q_counter(i32 %112, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %34
  %119 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %120 = call i32 @mlx5e_close_tises(%struct.mlx5e_priv* %119)
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %88, %21, %15
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_open_tises(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_en_err(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @mlx5_vport_alloc_q_counter(i32, i32, i32*) #1

declare dso_local i32 @mlx5e_open_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_rqt(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_tirs(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_open_flow_table(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_add_all_vlan_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_update_carrier(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_set_rx_mode_core(%struct.mlx5e_priv*) #1

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
