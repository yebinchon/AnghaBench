; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_ADAPTER.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_ADAPTER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_adapter = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, i32* }

@MLX4_CMD_QUERY_ADAPTER = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_ADAPTER_INTA_PIN_OFFSET = common dso_local global i32 0, align 4
@QUERY_ADAPTER_VSD_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_ADAPTER(%struct.mlx4_dev* %0, %struct.mlx4_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_adapter*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_adapter* %1, %struct.mlx4_adapter** %5, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %9)
  store %struct.mlx4_cmd_mailbox* %10, %struct.mlx4_cmd_mailbox** %6, align 8
  %11 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %12 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %15)
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLX4_CMD_QUERY_ADAPTER, align 4
  %26 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %27 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %28 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %21, i32 0, i32 %24, i32 0, i32 0, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %44

32:                                               ; preds = %17
  %33 = load %struct.mlx4_adapter*, %struct.mlx4_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @MLX4_GET(i32 %35, i32* %36, i32 16)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load %struct.mlx4_adapter*, %struct.mlx4_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_adapter, %struct.mlx4_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @get_board_id(i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %32, %31
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %46 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %47 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %45, %struct.mlx4_cmd_mailbox* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32*, i32) #1

declare dso_local i32 @get_board_id(i32*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
