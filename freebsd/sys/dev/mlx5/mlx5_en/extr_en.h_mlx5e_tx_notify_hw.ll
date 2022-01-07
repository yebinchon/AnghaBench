; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_en.h_mlx5e_tx_notify_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_en.h_mlx5e_tx_notify_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32* }

@MLX5_BF_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_sq*, i32*, i32)* @mlx5e_tx_notify_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tx_notify_hw(%struct.mlx5e_sq* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_sq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @MLX5_BF_OFFSET, align 8
  %9 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %8, %12
  store i64 %13, i64* %7, align 8
  %14 = call i32 (...) @wmb()
  %15 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32 %18, i32* %22, align 4
  %23 = call i32 (...) @wmb()
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @__iowrite64_copy(i64 %32, i32* %33, i32 %34)
  %36 = call i32 (...) @wmb()
  br label %51

37:                                               ; preds = %3
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @MLX5_GET_DOORBELL_LOCK(i32* %48)
  %50 = call i32 @mlx5_write64(i32* %38, i64 %44, i32 %49)
  br label %51

51:                                               ; preds = %37, %26
  %52 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, %54
  store i32 %58, i32* %56, align 4
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @__iowrite64_copy(i64, i32*, i32) #1

declare dso_local i32 @mlx5_write64(i32*, i64, i32) #1

declare dso_local i32 @MLX5_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
