; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_set_cc_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cong.c_mlx5_ib_set_cc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@modify_cong_params_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_CONG_PARAMS = common dso_local global i32 0, align 4
@cong_protocol = common dso_local global i32 0, align 4
@congestion_parameters = common dso_local global i32 0, align 4
@field_select = common dso_local global i32 0, align 4
@field_select_r_roce_rp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, i32)* @mlx5_ib_set_cc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_set_cc_params(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @modify_cong_params_in, align 4
  %15 = call i32 @MLX5_ST_SZ_BYTES(i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load i32, i32* @modify_cong_params_in, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @opcode, align 4
  %28 = load i32, i32* @MLX5_CMD_OP_MODIFY_CONG_PARAMS, align 4
  %29 = call i32 @MLX5_SET(i32 %25, i8* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mlx5_ib_param_to_node(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @modify_cong_params_in, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* @cong_protocol, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @MLX5_SET(i32 %32, i8* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @modify_cong_params_in, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* @congestion_parameters, align 4
  %40 = call i8* @MLX5_ADDR_OF(i32 %37, i8* %38, i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mlx5_ib_set_cc_param_mask_val(i8* %41, i32 %42, i32 %43, i32* %10)
  %45 = load i32, i32* @modify_cong_params_in, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @field_select, align 4
  %48 = call i8* @MLX5_ADDR_OF(i32 %45, i8* %46, i32 %47)
  store i8* %48, i8** %11, align 8
  %49 = load i32, i32* @field_select_r_roce_rp, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @field_select_r_roce_rp, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @MLX5_SET(i32 %49, i8* %50, i32 %51, i32 %52)
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @mlx5_cmd_modify_cong_params(i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @kfree(i8* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %24, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_ib_param_to_node(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5_ib_set_cc_param_mask_val(i8*, i32, i32, i32*) #1

declare dso_local i32 @mlx5_cmd_modify_cong_params(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
