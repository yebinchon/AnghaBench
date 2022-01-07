; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_core_access_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_core_access_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@access_register_out = common dso_local global i32 0, align 4
@access_register_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@register_data = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_ACCESS_REG = common dso_local global i32 0, align 4
@op_mod = common dso_local global i32 0, align 4
@argument = common dso_local global i32 0, align 4
@register_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* @access_register_out, align 4
  %24 = call i32 @MLX5_ST_SZ_BYTES(i32 %23)
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* @access_register_in, align 4
  %28 = call i32 @MLX5_ST_SZ_BYTES(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %19, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %33 = load i32, i32* %18, align 4
  %34 = call i32* @mlx5_vzalloc(i32 %33)
  store i32* %34, i32** %21, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32* @mlx5_vzalloc(i32 %35)
  store i32* %36, i32** %20, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %8
  %40 = load i32*, i32** %20, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %8
  br label %93

43:                                               ; preds = %39
  %44 = load i32, i32* @access_register_in, align 4
  %45 = load i32*, i32** %21, align 8
  %46 = load i32, i32* @register_data, align 4
  %47 = call i8* @MLX5_ADDR_OF(i32 %44, i32* %45, i32 %46)
  store i8* %47, i8** %22, align 8
  %48 = load i8*, i8** %22, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i32, i32* @access_register_in, align 4
  %53 = load i32*, i32** %21, align 8
  %54 = load i32, i32* @opcode, align 4
  %55 = load i32, i32* @MLX5_CMD_OP_ACCESS_REG, align 4
  %56 = call i32 @MLX5_SET(i32 %52, i32* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @access_register_in, align 4
  %58 = load i32*, i32** %21, align 8
  %59 = load i32, i32* @op_mod, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @MLX5_SET(i32 %57, i32* %58, i32 %59, i32 %63)
  %65 = load i32, i32* @access_register_in, align 4
  %66 = load i32*, i32** %21, align 8
  %67 = load i32, i32* @argument, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @MLX5_SET(i32 %65, i32* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @access_register_in, align 4
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* @register_id, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @MLX5_SET(i32 %70, i32* %71, i32 %72, i32 %73)
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32*, i32** %20, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %75, i32* %76, i32 %77, i32* %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %43
  br label %93

84:                                               ; preds = %43
  %85 = load i32, i32* @access_register_out, align 4
  %86 = load i32*, i32** %20, align 8
  %87 = load i32, i32* @register_data, align 4
  %88 = call i8* @MLX5_ADDR_OF(i32 %85, i32* %86, i32 %87)
  store i8* %88, i8** %22, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %22, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @memcpy(i8* %89, i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %83, %42
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 @kvfree(i32* %94)
  %96 = load i32*, i32** %21, align 8
  %97 = call i32 @kvfree(i32* %96)
  %98 = load i32, i32* %19, align 4
  ret i32 %98
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
