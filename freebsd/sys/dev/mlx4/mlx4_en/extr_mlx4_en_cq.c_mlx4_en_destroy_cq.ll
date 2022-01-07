; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_cq.c_mlx4_en_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_cq.c_mlx4_en_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev*, i32 }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_cq = type { i64, i32*, i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq** %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_cq**, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_cq** %1, %struct.mlx4_en_cq*** %4, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 0
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %5, align 8
  %10 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %4, align 8
  %11 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %10, align 8
  store %struct.mlx4_en_cq* %11, %struct.mlx4_en_cq** %6, align 8
  %12 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %15, i32 0, i32 6
  %17 = call i32 @taskqueue_drain(i32 %14, i32* %16)
  %18 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @taskqueue_free(i32 %20)
  %22 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mlx4_en_unmap_buffer(i32* %24)
  %26 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %29, i32 0, i32 4
  %31 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @mlx4_free_hwq_res(i32 %28, %struct.TYPE_2__* %30, i64 %33)
  %35 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @mlx4_is_eq_vector_valid(i32 %37, i32 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %2
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 0
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %54, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mlx4_release_eq(i32 %57, i64 %60)
  br label %62

62:                                               ; preds = %52, %46, %2
  %63 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %70 = call i32 @kfree(%struct.mlx4_en_cq* %69)
  %71 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %4, align 8
  store %struct.mlx4_en_cq* null, %struct.mlx4_en_cq** %71, align 8
  ret void
}

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @mlx4_en_unmap_buffer(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_2__*, i64) #1

declare dso_local i64 @mlx4_is_eq_vector_valid(i32, i32, i64) #1

declare dso_local i32 @mlx4_release_eq(i32, i64) #1

declare dso_local i32 @kfree(%struct.mlx4_en_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
