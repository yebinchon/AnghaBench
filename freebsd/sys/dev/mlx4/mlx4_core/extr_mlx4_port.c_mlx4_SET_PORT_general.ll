; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT_general.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_general_context* }
%struct.mlx4_set_port_general_context = type { i32, i32, i32, i32, i32, i32, i32 }

@SET_PORT_GEN_ALL_VALID = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 = common dso_local global i32 0, align 4
@SET_PORT_ROCE_2_FLAGS = common dso_local global i32 0, align 4
@MLX4_SET_PORT_ROCE_V1_V2 = common dso_local global i32 0, align 4
@MLX4_SET_PORT_GENERAL = common dso_local global i32 0, align 4
@MLX4_SET_PORT_ETH_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_general(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %17 = alloca %struct.mlx4_set_port_general_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %21 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %20)
  store %struct.mlx4_cmd_mailbox* %21, %struct.mlx4_cmd_mailbox** %16, align 8
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %23 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %27 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %26)
  store i32 %27, i32* %8, align 4
  br label %101

28:                                               ; preds = %7
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %30 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %29, i32 0, i32 1
  %31 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %30, align 8
  store %struct.mlx4_set_port_general_context* %31, %struct.mlx4_set_port_general_context** %17, align 8
  %32 = load i32, i32* @SET_PORT_GEN_ALL_VALID, align 4
  %33 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %34 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %38 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = mul nsw i32 %39, %43
  %45 = shl i32 %44, 7
  %46 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %47 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %50 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = mul nsw i32 %51, %55
  %57 = shl i32 %56, 7
  %58 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %59 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %62 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ROCE_V1_V2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %28
  %71 = load i32, i32* @SET_PORT_ROCE_2_FLAGS, align 4
  %72 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %73 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @MLX4_SET_PORT_ROCE_V1_V2, align 4
  %77 = shl i32 %76, 4
  %78 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %17, align 8
  %79 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %70, %28
  %83 = load i32, i32* @MLX4_SET_PORT_GENERAL, align 4
  %84 = shl i32 %83, 8
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %88 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %89 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @MLX4_SET_PORT_ETH_OPCODE, align 4
  %93 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %94 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %95 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %96 = call i32 @mlx4_cmd(%struct.mlx4_dev* %87, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %18, align 4
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %98 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %16, align 8
  %99 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %97, %struct.mlx4_cmd_mailbox* %98)
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %82, %25
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
