; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_handle_hca_cap_atomic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_handle_hca_cap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@set_hca_cap_in = common dso_local global i32 0, align 4
@atomic = common dso_local global i32 0, align 4
@supported_atomic_req_8B_endianess_mode_1 = common dso_local global i32 0, align 4
@MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@op_mod = common dso_local global i32 0, align 4
@MLX5_SET_HCA_CAP_OP_MOD_ATOMIC = common dso_local global i32 0, align 4
@capability = common dso_local global i32 0, align 4
@atomic_caps = common dso_local global i32 0, align 4
@atomic_req_8B_endianess_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @handle_hca_cap_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hca_cap_atomic(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %9 = load i32, i32* @set_hca_cap_in, align 4
  %10 = call i32 @MLX5_ST_SZ_BYTES(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = load i32, i32* @atomic, align 4
  %13 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %17 = call i32 @mlx5_core_get_caps(%struct.mlx5_core_dev* %16, i32 (%struct.mlx5_core_dev*, i32)* @MLX5_CAP_ATOMIC)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

24:                                               ; preds = %22
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = load i32, i32* @supported_atomic_req_8B_endianess_mode_1, align 4
  %27 = call i32 @MLX5_CAP_ATOMIC(%struct.mlx5_core_dev* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 %33, i32 %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %32
  %42 = load i32, i32* @set_hca_cap_in, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @op_mod, align 4
  %45 = load i32, i32* @MLX5_SET_HCA_CAP_OP_MOD_ATOMIC, align 4
  %46 = shl i32 %45, 1
  %47 = call i32 @MLX5_SET(i32 %42, i8* %43, i32 %44, i32 %46)
  %48 = load i32, i32* @set_hca_cap_in, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @capability, align 4
  %51 = call i8* @MLX5_ADDR_OF(i32 %48, i8* %49, i32 %50)
  store i8* %51, i8** %5, align 8
  %52 = load i32, i32* @atomic_caps, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @atomic_req_8B_endianess_mode, align 4
  %55 = load i32, i32* @MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS, align 4
  %56 = call i32 @MLX5_SET(i32 %52, i8* %53, i32 %54, i32 %55)
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @set_caps(%struct.mlx5_core_dev* %57, i8* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %41, %38, %31, %23, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_get_caps(%struct.mlx5_core_dev*, i32 (%struct.mlx5_core_dev*, i32)*) #1

declare dso_local i32 @MLX5_CAP_ATOMIC(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @set_caps(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
