; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_core_query_vport_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vport.c_mlx5_core_query_vport_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@query_vport_counter_in = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_VPORT_COUNTER = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_query_vport_counter(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @query_vport_counter_in, align 4
  %19 = call i32 @MLX5_ST_SZ_BYTES(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %21 = load i32, i32* @vport_group_manager, align 4
  %22 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i8* @mlx5_vzalloc(i32 %23)
  store i8* %24, i8** %16, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %7, align 4
  br label %79

31:                                               ; preds = %6
  %32 = load i32, i32* @query_vport_counter_in, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = load i32, i32* @opcode, align 4
  %35 = load i32, i32* @MLX5_CMD_OP_QUERY_VPORT_COUNTER, align 4
  %36 = call i32 @MLX5_SET(i32 %32, i8* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* @query_vport_counter_in, align 4
  %44 = load i8*, i8** %16, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @MLX5_SET(i32 %43, i8* %44, i32 %45, i32 1)
  %47 = load i32, i32* @query_vport_counter_in, align 4
  %48 = load i8*, i8** %16, align 8
  %49 = load i32, i32* @vport_number, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @MLX5_SET(i32 %47, i8* %48, i32 %49, i32 %51)
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %17, align 4
  br label %75

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %59 = load i32, i32* @num_ports, align 4
  %60 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %58, i32 %59)
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @query_vport_counter_in, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @MLX5_SET(i32 %63, i8* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %69, i8* %70, i32 %71, i8* %72, i64 %73)
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %68, %53
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @kvfree(i8* %76)
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %27
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i64) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
