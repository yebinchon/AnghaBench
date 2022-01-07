; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_alloc_4k.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_alloc_4k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fw_page = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32*, i32)* @alloc_4k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_4k(%struct.mlx5_core_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fw_page*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlx5_fw_page* @mlx5_fwp_alloc(%struct.mlx5_core_dev* %10, i32 %11, i32 1)
  store %struct.mlx5_fw_page* %12, %struct.mlx5_fw_page** %8, align 8
  %13 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %14 = icmp eq %struct.mlx5_fw_page* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %23 = call i32 @MLX5_DMA_LOCK(%struct.mlx5_core_dev* %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %25 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %26 = call i32 @mlx5_insert_fw_page_locked(%struct.mlx5_core_dev* %24, %struct.mlx5_fw_page* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %28 = call i32 @MLX5_DMA_UNLOCK(%struct.mlx5_core_dev* %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %33 = call i32 @mlx5_fwp_free(%struct.mlx5_fw_page* %32)
  br label %41

34:                                               ; preds = %18
  %35 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %36 = call i32 @mlx5_fwp_invalidate(%struct.mlx5_fw_page* %35)
  %37 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.mlx5_fw_page* @mlx5_fwp_alloc(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @MLX5_DMA_LOCK(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_insert_fw_page_locked(%struct.mlx5_core_dev*, %struct.mlx5_fw_page*) #1

declare dso_local i32 @MLX5_DMA_UNLOCK(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fwp_free(%struct.mlx5_fw_page*) #1

declare dso_local i32 @mlx5_fwp_invalidate(%struct.mlx5_fw_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
