; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_alloc_sq_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_alloc_sq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@M_MLX5EN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_alloc_sq_db(%struct.mlx5e_sq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_sq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %3, align 8
  %7 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %7, i32 0, i32 2
  %9 = call i32 @mlx5_wq_cyc_get_size(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @M_MLX5EN, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.TYPE_3__* @malloc(i32 %13, i32 %14, i32 %17)
  %19 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %66, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @bus_dmamap_create(i32 %28, i32 0, i32* %35)
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_dmamap_destroy(i32 %48, i32 %56)
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %60 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* @M_MLX5EN, align 4
  %63 = call i32 @free(%struct.TYPE_3__* %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %70

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %21

69:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @mlx5_wq_cyc_get_size(i32*) #1

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
