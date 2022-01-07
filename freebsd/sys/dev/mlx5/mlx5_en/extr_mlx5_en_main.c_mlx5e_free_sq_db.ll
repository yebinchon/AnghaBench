; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_free_sq_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_free_sq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@M_MLX5EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_free_sq_db(%struct.mlx5e_sq* %0) #0 {
  %2 = alloca %struct.mlx5e_sq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %2, align 8
  %5 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %5, i32 0, i32 2
  %7 = call i32 @mlx5_wq_cyc_get_size(i32* %6)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %57, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %12
  %23 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamap_unload(i32 %25, i32 %33)
  %35 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @m_freem(i32* %42)
  br label %44

44:                                               ; preds = %22, %12
  %45 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %49 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bus_dmamap_destroy(i32 %47, i32 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %8

60:                                               ; preds = %8
  %61 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %62 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @M_MLX5EN, align 4
  %65 = call i32 @free(%struct.TYPE_2__* %63, i32 %64)
  ret void
}

declare dso_local i32 @mlx5_wq_cyc_get_size(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
