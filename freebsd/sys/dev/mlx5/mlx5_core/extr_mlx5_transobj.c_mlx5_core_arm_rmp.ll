; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_transobj.c_mlx5_core_arm_rmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_transobj.c_mlx5_core_arm_rmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@modify_rmp_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@rmp_state = common dso_local global i32 0, align 4
@MLX5_RMPC_STATE_RDY = common dso_local global i32 0, align 4
@rmp_bitmask = common dso_local global i8* null, align 8
@state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_arm_rmp(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** @modify_rmp_in, align 8
  %14 = call i32 @MLX5_ST_SZ_BYTES(i8* %13)
  %15 = call i8* @mlx5_vzalloc(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load i8*, i8** @modify_rmp_in, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** @ctx, align 8
  %25 = call i8* @MLX5_ADDR_OF(i8* %22, i8* %23, i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** @modify_rmp_in, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i8* @MLX5_ADDR_OF(i8* %26, i8* %27, i8* %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @MLX5_ADDR_OF(i8* %30, i8* %31, i8* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** @modify_rmp_in, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @rmp_state, align 4
  %37 = load i32, i32* @MLX5_RMPC_STATE_RDY, align 4
  %38 = call i32 @MLX5_SET(i8* %34, i8* %35, i32 %36, i32 %37)
  %39 = load i8*, i8** @modify_rmp_in, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @MLX5_SET(i8* %39, i8* %40, i32 %41, i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MLX5_SET(i8* %44, i8* %45, i32 %46, i32 %47)
  %49 = load i8*, i8** @rmp_bitmask, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @MLX5_SET(i8* %49, i8* %50, i32 %51, i32 1)
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @state, align 4
  %56 = load i32, i32* @MLX5_RMPC_STATE_RDY, align 4
  %57 = call i32 @MLX5_SET(i8* %53, i8* %54, i32 %55, i32 %56)
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** @modify_rmp_in, align 8
  %61 = call i32 @MLX5_ST_SZ_BYTES(i8* %60)
  %62 = call i32 @mlx5_core_modify_rmp(%struct.mlx5_core_dev* %58, i8* %59, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @kvfree(i8* %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %21, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_rmp(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
