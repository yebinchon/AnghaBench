; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_dma_map_mr_pas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_dma_map_mr_pas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ib_umem = type { i32 }

@MLX5_UMR_MTT_ALIGNMENT = common dso_local global i32 0, align 4
@MLX5_UMR_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_IB_MTT_PRESENT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_umem*, i32, i32, i32*, i32**, i32*)* @dma_map_mr_pas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_map_mr_pas(%struct.mlx5_ib_dev* %0, %struct.ib_umem* %1, i32 %2, i32 %3, i32* %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.ib_umem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.device*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store %struct.ib_umem* %1, %struct.ib_umem** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %17, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @MLX5_UMR_MTT_ALIGNMENT, align 4
  %27 = call i32 @ALIGN(i32 %25, i32 %26)
  %28 = load i32*, i32** %13, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @MLX5_UMR_ALIGN, align 8
  %33 = add nsw i64 %31, %32
  %34 = sub nsw i64 %33, 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kmalloc(i64 %34, i32 %35)
  %37 = load i32**, i32*** %14, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32**, i32*** %14, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %7
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %87

44:                                               ; preds = %7
  %45 = load i32**, i32*** %14, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @MLX5_UMR_ALIGN, align 8
  %48 = call i32* @PTR_ALIGN(i32* %46, i64 %47)
  store i32* %48, i32** %16, align 8
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %50 = load %struct.ib_umem*, %struct.ib_umem** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* @MLX5_IB_MTT_PRESENT, align 4
  %54 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %49, %struct.ib_umem* %50, i32 %51, i32* %52, i32 %53)
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = sub i64 %61, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %58, i32 0, i32 %66)
  %68 = load %struct.device*, %struct.device** %17, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_map_single(%struct.device* %68, i32* %69, i32 %71, i32 %72)
  %74 = load i32*, i32** %15, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.device*, %struct.device** %17, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @dma_mapping_error(%struct.device* %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %44
  %81 = load i32**, i32*** %14, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @kfree(i32* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %87

86:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %80, %41
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, %struct.ib_umem*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
