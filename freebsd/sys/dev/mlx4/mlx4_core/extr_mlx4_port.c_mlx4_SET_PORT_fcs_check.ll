; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT_fcs_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT_fcs_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_port_general_context* }
%struct.mlx4_set_port_general_context = type { i32, i32 }

@MLX4_FLAG_V_IGNORE_FCS_MASK = common dso_local global i32 0, align 4
@MLX4_IGNORE_FCS_MASK = common dso_local global i32 0, align 4
@MLX4_SET_PORT_GENERAL = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_fcs_check(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_set_port_general_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %12)
  store %struct.mlx4_cmd_mailbox* %13, %struct.mlx4_cmd_mailbox** %8, align 8
  %14 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %15 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %18)
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 1
  %23 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %22, align 8
  store %struct.mlx4_set_port_general_context* %23, %struct.mlx4_set_port_general_context** %9, align 8
  %24 = load i32, i32* @MLX4_FLAG_V_IGNORE_FCS_MASK, align 4
  %25 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %9, align 8
  %26 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* @MLX4_IGNORE_FCS_MASK, align 4
  %33 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %44

37:                                               ; preds = %20
  %38 = load i32, i32* @MLX4_IGNORE_FCS_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %9, align 8
  %41 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* @MLX4_SET_PORT_GENERAL, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %50 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %51 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %55 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %56 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %57 = call i32 @mlx4_cmd(%struct.mlx4_dev* %49, i32 %52, i32 %53, i32 1, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %59 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %60 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %58, %struct.mlx4_cmd_mailbox* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %44, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
