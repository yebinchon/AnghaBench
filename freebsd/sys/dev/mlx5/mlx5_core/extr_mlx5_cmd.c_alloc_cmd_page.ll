; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_alloc_cmd_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_alloc_cmd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_cmd = type { i32, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"MLX5-DMA-SX\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MLX5-DMA-MTX\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"MLX5-DMA-CV\00", align 1
@MLX5_ADAPTER_PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_cmd*)* @alloc_cmd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cmd_page(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_cmd* %1, %struct.mlx5_cmd** %5, align 8
  %7 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %8 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %7, i32 0, i32 0
  %9 = call i32 @sx_init(i32* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %10, i32 0, i32 1
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %12)
  %14 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %14, i32 0, i32 2
  %16 = call i32 @cv_init(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_get_dma_tag(i32 %22)
  %24 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %27 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %28 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %29 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %29, i32 0, i32 3
  %31 = call i32 @bus_dma_tag_create(i32 %23, i32 %24, i32 0, i32 %25, i32 %26, i32* null, i32* null, i32 %27, i32 1, i32 %28, i32 0, i32* null, i32* null, i32* %30)
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %67

36:                                               ; preds = %2
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @mlx5_fwp_alloc(%struct.mlx5_core_dev* %37, i32 %38, i32 1)
  %40 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %36
  %50 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @mlx5_fwp_get_dma(i32* %52, i32 0)
  %54 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @mlx5_fwp_get_virt(i32* %58, i32 0)
  %60 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %78

62:                                               ; preds = %46
  %63 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bus_dma_tag_destroy(i32 %65)
  br label %67

67:                                               ; preds = %62, %35
  %68 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %68, i32 0, i32 2
  %70 = call i32 @cv_destroy(i32* %69)
  %71 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %71, i32 0, i32 1
  %73 = call i32 @mtx_destroy(i32* %72)
  %74 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %74, i32 0, i32 0
  %76 = call i32 @sx_destroy(i32* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %49
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32* @mlx5_fwp_alloc(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @mlx5_fwp_get_dma(i32*, i32) #1

declare dso_local i32 @mlx5_fwp_get_virt(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
