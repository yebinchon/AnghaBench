; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5e_port_set_priority2buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_port.c_mlx5e_port_set_priority2buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@pptb_reg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@local_port = common dso_local global i32 0, align 4
@MLX5_REG_PPTB = common dso_local global i32 0, align 4
@pm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_port_set_priority2buffer(%struct.mlx5_core_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @pptb_reg, align 4
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
  store i32 %26, i32* %10, align 4
  br label %85

27:                                               ; preds = %21
  %28 = load i32, i32* @pptb_reg, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @local_port, align 4
  %31 = call i32 @MLX5_SET(i32 %28, i8* %29, i32 %30, i32 1)
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MLX5_REG_PPTB, align 4
  %38 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %32, i8* %33, i32 %34, i8* %35, i32 %36, i32 %37, i32 0, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %85

42:                                               ; preds = %27
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  %47 = load i32, i32* @pptb_reg, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @local_port, align 4
  %50 = call i32 @MLX5_SET(i32 %47, i8* %48, i32 %49, i32 1)
  %51 = load i32, i32* @pptb_reg, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @pm, align 4
  %54 = call i32 @MLX5_SET(i32 %51, i8* %52, i32 %53, i32 255)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %69, %42
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 4, %64
  %66 = shl i32 %63, %65
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load i32, i32* @pptb_reg, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @MLX5_SET(i32 %73, i8* %74, i32 %75, i32 %76)
  %78 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @MLX5_REG_PPTB, align 4
  %84 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %78, i8* %79, i32 %80, i8* %81, i32 %82, i32 %83, i32 0, i32 1)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %72, %41, %24
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @kfree(i8* %86)
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
