; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_alloc_db_pgdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_alloc.c_mlx4_alloc_db_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_db_pgdir = type { i32, i32, i32, i32*, i32 }
%struct.device = type { i32 }

@MLX4_DB_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_db_pgdir* (%struct.device*, i32)* @mlx4_alloc_db_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_db_pgdir* @mlx4_alloc_db_pgdir(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_db_pgdir*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_db_pgdir*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.mlx4_db_pgdir* @kzalloc(i32 32, i32 %7)
  store %struct.mlx4_db_pgdir* %8, %struct.mlx4_db_pgdir** %6, align 8
  %9 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %10 = icmp ne %struct.mlx4_db_pgdir* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mlx4_db_pgdir* null, %struct.mlx4_db_pgdir** %3, align 8
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MLX4_DB_PER_PAGE, align 4
  %17 = sdiv i32 %16, 2
  %18 = call i32 @bitmap_fill(i32 %15, i32 %17)
  %19 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %35, i32 0, i32 1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dma_alloc_coherent(%struct.device* %33, i32 %34, i32* %36, i32 %37)
  %39 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_db_pgdir, %struct.mlx4_db_pgdir* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %12
  %46 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  %47 = call i32 @kfree(%struct.mlx4_db_pgdir* %46)
  store %struct.mlx4_db_pgdir* null, %struct.mlx4_db_pgdir** %3, align 8
  br label %50

48:                                               ; preds = %12
  %49 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %6, align 8
  store %struct.mlx4_db_pgdir* %49, %struct.mlx4_db_pgdir** %3, align 8
  br label %50

50:                                               ; preds = %48, %45, %11
  %51 = load %struct.mlx4_db_pgdir*, %struct.mlx4_db_pgdir** %3, align 8
  ret %struct.mlx4_db_pgdir* %51
}

declare dso_local %struct.mlx4_db_pgdir* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_db_pgdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
