; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_cmd_init_hca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fw.c_mlx5_cmd_init_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@init_hca_in = common dso_local global i32 0, align 4
@init_hca_out = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_INIT_HCA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_init_hca(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load i32, i32* @init_hca_in, align 4
  %7 = call i32 @MLX5_ST_SZ_DW(i32 %6)
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @init_hca_out, align 4
  %12 = call i32 @MLX5_ST_SZ_DW(i32 %11)
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = mul nuw i64 4, %8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i32* %10, i32 0, i32 %16)
  %18 = load i32, i32* @init_hca_in, align 4
  %19 = load i32, i32* @opcode, align 4
  %20 = load i32, i32* @MLX5_CMD_OP_INIT_HCA, align 4
  %21 = call i32 @MLX5_SET(i32 %18, i32* %10, i32 %19, i32 %20)
  %22 = mul nuw i64 4, %13
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %14, i32 0, i32 %23)
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %26 = mul nuw i64 4, %8
  %27 = trunc i64 %26 to i32
  %28 = mul nuw i64 4, %13
  %29 = trunc i64 %28 to i32
  %30 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %25, i32* %10, i32 %27, i32* %14, i32 %29)
  %31 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %31)
  ret i32 %30
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
