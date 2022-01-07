; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_vport_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_query_vport_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@query_vport_counter_in = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_VPORT_COUNTER = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_vport_counter(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @query_vport_counter_in, align 4
  %17 = call i32 @MLX5_ST_SZ_BYTES(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %19 = load i32, i32* @vport_group_manager, align 4
  %20 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i8* @mlx5_vzalloc(i32 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %75

28:                                               ; preds = %5
  %29 = load i32, i32* @query_vport_counter_in, align 4
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* @opcode, align 4
  %32 = load i32, i32* @MLX5_CMD_OP_QUERY_VPORT_COUNTER, align 4
  %33 = call i32 @MLX5_SET(i32 %29, i8* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* @query_vport_counter_in, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* @other_vport, align 4
  %43 = call i32 @MLX5_SET(i32 %40, i8* %41, i32 %42, i32 1)
  %44 = load i32, i32* @query_vport_counter_in, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* @vport_number, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @MLX5_SET(i32 %44, i8* %45, i32 %46, i32 %47)
  br label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %71

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %55 = load i32, i32* @num_ports, align 4
  %56 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %54, i32 %55)
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @query_vport_counter_in, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @MLX5_SET(i32 %59, i8* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %65, i8* %66, i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %64, %49
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @kvfree(i8* %72)
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %25
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
