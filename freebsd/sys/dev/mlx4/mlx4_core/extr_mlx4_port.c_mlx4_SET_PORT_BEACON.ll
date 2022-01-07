; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT_BEACON.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT_BEACON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }

@MLX4_SET_PORT_BEACON_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT_BEACON(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %11 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %10)
  store %struct.mlx4_cmd_mailbox* %11, %struct.mlx4_cmd_mailbox** %9, align 8
  %12 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %13 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %17 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %16)
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32 %20, i32* %24, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MLX4_SET_PORT_BEACON_OPCODE, align 4
  %31 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %32 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %33 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %34 = call i32 @mlx4_cmd(%struct.mlx4_dev* %25, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %37 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %35, %struct.mlx4_cmd_mailbox* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %18, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
