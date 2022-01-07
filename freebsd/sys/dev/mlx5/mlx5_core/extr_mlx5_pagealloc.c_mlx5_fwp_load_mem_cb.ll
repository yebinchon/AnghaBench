; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_fwp_load_mem_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_fwp_load_mem_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mlx5_fw_page = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Number of segments is different from 1\00", align 1
@MLX5_LOAD_ST_SUCCESS = common dso_local global i32 0, align 4
@MLX5_LOAD_ST_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @mlx5_fwp_load_mem_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fwp_load_mem_cb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_fw_page*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mlx5_fw_page*
  store %struct.mlx5_fw_page* %12, %struct.mlx5_fw_page** %9, align 8
  %13 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %14 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MLX5_DMA_OWNED(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %21 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MLX5_DMA_LOCK(i32 %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %36 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MLX5_LOAD_ST_SUCCESS, align 4
  %38 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %39 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %24
  %41 = load i32, i32* @MLX5_LOAD_ST_FAILURE, align 4
  %42 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %27
  %45 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %46 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MLX5_DMA_DONE(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.mlx5_fw_page*, %struct.mlx5_fw_page** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5_fw_page, %struct.mlx5_fw_page* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MLX5_DMA_UNLOCK(i32 %54)
  br label %56

56:                                               ; preds = %51, %44
  ret void
}

declare dso_local i32 @MLX5_DMA_OWNED(i32) #1

declare dso_local i32 @MLX5_DMA_LOCK(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MLX5_DMA_DONE(i32) #1

declare dso_local i32 @MLX5_DMA_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
