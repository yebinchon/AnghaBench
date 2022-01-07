; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_port.c_mlx4_en_QUERY_PORT.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_port.c_mlx4_en_QUERY_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, i32* }
%struct.mlx4_en_query_port_context = type { i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.mlx4_en_port_state }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_en_query_port_context*, i32 }

@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@MLX4_EN_LINK_UP_MASK = common dso_local global i32 0, align 4
@MLX4_EN_SPEED_MASK = common dso_local global i32 0, align 4
@MLX4_EN_ANC_MASK = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANC = common dso_local global i32 0, align 4
@MLX4_EN_AUTONEG_MASK = common dso_local global i32 0, align 4
@MLX4_EN_PORT_ANE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_QUERY_PORT(%struct.mlx4_en_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx4_en_query_port_context*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_port_state*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx4_en_priv* @netdev_priv(i32 %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %7, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 0
  store %struct.mlx4_en_port_state* %19, %struct.mlx4_en_port_state** %8, align 8
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %22)
  store %struct.mlx4_cmd_mailbox* %23, %struct.mlx4_cmd_mailbox** %9, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %25 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %28)
  store i32 %29, i32* %3, align 4
  br label %131

30:                                               ; preds = %2
  %31 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %35 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %39 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %40 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %41 = call i32 @mlx4_cmd_box(i32 %33, i32 0, i32 %36, i64 %37, i32 0, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %124

45:                                               ; preds = %30
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %46, i32 0, i32 0
  %48 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %47, align 8
  store %struct.mlx4_en_query_port_context* %48, %struct.mlx4_en_query_port_context** %6, align 8
  %49 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX4_EN_LINK_UP_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MLX4_EN_SPEED_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %83 [
    i32 134, label %65
    i32 131, label %68
    i32 133, label %71
    i32 132, label %71
    i32 130, label %74
    i32 129, label %77
    i32 128, label %80
  ]

65:                                               ; preds = %45
  %66 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %66, i32 0, i32 1
  store i32 100, i32* %67, align 4
  br label %86

68:                                               ; preds = %45
  %69 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %69, i32 0, i32 1
  store i32 1000, i32* %70, align 4
  br label %86

71:                                               ; preds = %45, %45
  %72 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %72, i32 0, i32 1
  store i32 10000, i32* %73, align 4
  br label %86

74:                                               ; preds = %45
  %75 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %75, i32 0, i32 1
  store i32 20000, i32* %76, align 4
  br label %86

77:                                               ; preds = %45
  %78 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %78, i32 0, i32 1
  store i32 40000, i32* %79, align 4
  br label %86

80:                                               ; preds = %45
  %81 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %81, i32 0, i32 1
  store i32 56000, i32* %82, align 4
  br label %86

83:                                               ; preds = %45
  %84 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80, %77, %74, %71, %68, %65
  %87 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MLX4_EN_ANC_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %86
  %101 = load i32, i32* @MLX4_EN_PORT_ANC, align 4
  br label %103

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.mlx4_en_query_port_context*, %struct.mlx4_en_query_port_context** %6, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_query_port_context, %struct.mlx4_en_query_port_context* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MLX4_EN_AUTONEG_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @MLX4_EN_PORT_ANE, align 4
  br label %118

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %116, %115 ], [ 0, %117 ]
  %120 = load %struct.mlx4_en_port_state*, %struct.mlx4_en_port_state** %8, align 8
  %121 = getelementptr inbounds %struct.mlx4_en_port_state, %struct.mlx4_en_port_state* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %44
  %125 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %126 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %129 = call i32 @mlx4_free_cmd_mailbox(i32 %127, %struct.mlx4_cmd_mailbox* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %27
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(i32) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
