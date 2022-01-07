; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_alloc_priv_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_alloc_priv_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_mr = type { i32*, i32, i32 }

@MLX4_MR_PAGES_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_ib_mr*, i32)* @mlx4_alloc_priv_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_priv_pages(%struct.ib_device* %0, %struct.mlx4_ib_mr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.mlx4_ib_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.mlx4_ib_mr* %1, %struct.mlx4_ib_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @MLX4_MR_PAGES_ALIGN, align 4
  %14 = call i32 @roundup(i32 %12, i32 %13)
  %15 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %3
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_map_single(i32 %32, i32* %35, i32 %38, i32 %39)
  %41 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @dma_mapping_error(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %55

54:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %62

55:                                               ; preds = %51
  %56 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = call i32 @free_page(i64 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %54, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
