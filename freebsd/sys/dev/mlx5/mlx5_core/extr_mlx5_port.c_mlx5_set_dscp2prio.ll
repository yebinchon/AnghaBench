; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_set_dscp2prio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5_set_dscp2prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@qpdpm_reg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@MLX5_REG_QPDPM = common dso_local global i32 0, align 4
@MLX5_MAX_SUPPORTED_DSCP = common dso_local global i32 0, align 4
@dscp = common dso_local global i32* null, align 8
@qpdpm_dscp_reg = common dso_local global i32 0, align 4
@prio = common dso_local global i32 0, align 4
@e = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_set_dscp2prio(%struct.mlx5_core_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @qpdpm_reg, align 4
  %12 = call i32 @MLX5_ST_SZ_BYTES(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %88

27:                                               ; preds = %21
  %28 = load i32, i32* @qpdpm_reg, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @local_port, align 4
  %31 = call i32 @MLX5_SET(i32 %28, i8* %29, i32 %30, i32 1)
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MLX5_REG_QPDPM, align 4
  %38 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %32, i8* %33, i32 %34, i8* %35, i32 %36, i32 %37, i32 0, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %88

42:                                               ; preds = %27
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  %47 = load i32, i32* @qpdpm_reg, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @local_port, align 4
  %50 = call i32 @MLX5_SET(i32 %47, i8* %48, i32 %49, i32 1)
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %77, %42
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @MLX5_MAX_SUPPORTED_DSCP, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i32, i32* @qpdpm_reg, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32*, i32** @dscp, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @MLX5_ADDR_OF(i32 %56, i8* %57, i32 %62)
  store i8* %63, i8** %6, align 8
  %64 = load i32, i32* @qpdpm_dscp_reg, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @prio, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MLX5_SET16(i32 %64, i8* %65, i32 %66, i32 %71)
  %73 = load i32, i32* @qpdpm_dscp_reg, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* @e, align 4
  %76 = call i32 @MLX5_SET16(i32 %73, i8* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %51

80:                                               ; preds = %51
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MLX5_REG_QPDPM, align 4
  %87 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %81, i8* %82, i32 %83, i8* %84, i32 %85, i32 %86, i32 0, i32 1)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %80, %41, %24
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @kfree(i8* %89)
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @kfree(i8* %91)
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET16(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
