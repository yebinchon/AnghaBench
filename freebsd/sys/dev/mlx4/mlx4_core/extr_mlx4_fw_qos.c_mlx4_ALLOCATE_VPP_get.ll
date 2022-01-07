; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw_qos.c_mlx4_ALLOCATE_VPP_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw_qos.c_mlx4_ALLOCATE_VPP_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_alloc_vpp_param* }
%struct.mlx4_alloc_vpp_param = type { i32*, i32 }

@MLX4_ALLOCATE_VPP_QUERY = common dso_local global i32 0, align 4
@MLX4_CMD_ALLOCATE_VPP = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@MLX4_NUM_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ALLOCATE_VPP_get(%struct.mlx4_dev* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_alloc_vpp_param*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %14)
  store %struct.mlx4_cmd_mailbox* %15, %struct.mlx4_cmd_mailbox** %12, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %17 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %21 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %20)
  store i32 %21, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %24 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %23, i32 0, i32 1
  %25 = load %struct.mlx4_alloc_vpp_param*, %struct.mlx4_alloc_vpp_param** %24, align 8
  store %struct.mlx4_alloc_vpp_param* %25, %struct.mlx4_alloc_vpp_param** %13, align 8
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @MLX4_ALLOCATE_VPP_QUERY, align 4
  %32 = load i32, i32* @MLX4_CMD_ALLOCATE_VPP, align 4
  %33 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %34 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %35 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %26, i32 0, i32 %29, i64 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %66

39:                                               ; preds = %22
  %40 = load %struct.mlx4_alloc_vpp_param*, %struct.mlx4_alloc_vpp_param** %13, align 8
  %41 = getelementptr inbounds %struct.mlx4_alloc_vpp_param, %struct.mlx4_alloc_vpp_param* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @be32_to_cpu(i32 %42)
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %62, %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MLX4_NUM_UP, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.mlx4_alloc_vpp_param*, %struct.mlx4_alloc_vpp_param** %13, align 8
  %51 = getelementptr inbounds %struct.mlx4_alloc_vpp_param, %struct.mlx4_alloc_vpp_param* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be32_to_cpu(i32 %56)
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %45

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %68 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %69 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %67, %struct.mlx4_cmd_mailbox* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %19
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
