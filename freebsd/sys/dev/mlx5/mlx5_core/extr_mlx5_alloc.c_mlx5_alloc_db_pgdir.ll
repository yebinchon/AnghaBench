; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_alloc.c_mlx5_alloc_db_pgdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_alloc.c_mlx5_alloc_db_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_db_pgdir = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_DB_PER_PAGE = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_db_pgdir* (%struct.mlx5_core_dev*, i32)* @mlx5_alloc_db_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_db_pgdir* @mlx5_alloc_db_pgdir(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_db_pgdir*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_db_pgdir*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mlx5_db_pgdir* @kzalloc(i32 24, i32 %7)
  store %struct.mlx5_db_pgdir* %8, %struct.mlx5_db_pgdir** %6, align 8
  %9 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MLX5_DB_PER_PAGE, align 4
  %13 = call i32 @bitmap_fill(i32 %11, i32 %12)
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_3__* @mlx5_fwp_alloc(%struct.mlx5_core_dev* %14, i32 %15, i32 1)
  %17 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %17, i32 0, i32 1
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %18, align 8
  %19 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MLX5_ADAPTER_PAGE_SIZE, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  %43 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @mlx5_fwp_flush(%struct.TYPE_3__* %45)
  br label %47

47:                                               ; preds = %23, %2
  %48 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  %54 = call i32 @kfree(%struct.mlx5_db_pgdir* %53)
  store %struct.mlx5_db_pgdir* null, %struct.mlx5_db_pgdir** %3, align 8
  br label %57

55:                                               ; preds = %47
  %56 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %6, align 8
  store %struct.mlx5_db_pgdir* %56, %struct.mlx5_db_pgdir** %3, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %3, align 8
  ret %struct.mlx5_db_pgdir* %58
}

declare dso_local %struct.mlx5_db_pgdir* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local %struct.TYPE_3__* @mlx5_fwp_alloc(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx5_fwp_flush(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.mlx5_db_pgdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
