; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_alloc.c_mlx5_alloc_db_from_pgdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_alloc.c_mlx5_alloc_db_from_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_db_pgdir = type { i64, i64*, i32 }
%struct.mlx5_db = type { i32, i64*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_db_pgdir* }

@MLX5_DB_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_db_pgdir*, %struct.mlx5_db*)* @mlx5_alloc_db_from_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_alloc_db_from_pgdir(%struct.mlx5_db_pgdir* %0, %struct.mlx5_db* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_db_pgdir*, align 8
  %5 = alloca %struct.mlx5_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_db_pgdir* %0, %struct.mlx5_db_pgdir** %4, align 8
  store %struct.mlx5_db* %1, %struct.mlx5_db** %5, align 8
  %8 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLX5_DB_PER_PAGE, align 4
  %12 = call i32 @find_first_bit(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MLX5_DB_PER_PAGE, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__clear_bit(i32 %20, i32 %23)
  %25 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %26 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.mlx5_db_pgdir* %25, %struct.mlx5_db_pgdir** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @L1_CACHE_BYTES, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %44, i32 0, i32 1
  store i64* %43, i64** %45, align 8
  %46 = load %struct.mlx5_db_pgdir*, %struct.mlx5_db_pgdir** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_db_pgdir, %struct.mlx5_db_pgdir* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.mlx5_db*, %struct.mlx5_db** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5_db, %struct.mlx5_db* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 0, i64* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %19, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
