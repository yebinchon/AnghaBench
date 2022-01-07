; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_decompress_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_rx.c_mlx5e_decompress_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5_cqe64 = type { i32, i64, i32, i32, i32 }
%struct.mlx5_mini_cqe8 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_cq*, %struct.mlx5_cqe64*, %struct.mlx5_mini_cqe8*, i32, i32)* @mlx5e_decompress_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_decompress_cqe(%struct.mlx5e_cq* %0, %struct.mlx5_cqe64* %1, %struct.mlx5_mini_cqe8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5e_cq*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  %8 = alloca %struct.mlx5_mini_cqe8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %6, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %7, align 8
  store %struct.mlx5_mini_cqe8* %2, %struct.mlx5_mini_cqe8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.mlx5_mini_cqe8*, %struct.mlx5_mini_cqe8** %8, align 8
  %12 = getelementptr inbounds %struct.mlx5_mini_cqe8, %struct.mlx5_mini_cqe8* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %18, %22
  %24 = call i32 @cpu_to_be16(i32 %23)
  %25 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5_mini_cqe8*, %struct.mlx5_mini_cqe8** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_mini_cqe8, %struct.mlx5_mini_cqe8* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 240
  %38 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %43, %47
  %49 = and i32 %48, 1
  %50 = or i32 %37, %49
  %51 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %52 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
