; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_destroy_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_destroy_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@M_MLX5EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_destroy_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_destroy_rq(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %5 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @sysctl_ctx_free(i32* %7)
  %9 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %9, i32 0, i32 4
  %11 = call i32 @tcp_lro_free(i32* %10)
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 3
  %14 = call i32 @mlx5_wq_ll_get_size(i32* %13)
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %64, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %19
  %30 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %34 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bus_dmamap_unload(i32 %32, i32 %40)
  %42 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %43 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @m_freem(i32* %49)
  br label %51

51:                                               ; preds = %29, %19
  %52 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %56 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_dmamap_destroy(i32 %54, i32 %62)
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %15

67:                                               ; preds = %15
  %68 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %69 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* @M_MLX5EN, align 4
  %72 = call i32 @free(%struct.TYPE_4__* %70, i32 %71)
  %73 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %74 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %73, i32 0, i32 1
  %75 = call i32 @mlx5_wq_destroy(i32* %74)
  %76 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %77 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bus_dma_tag_destroy(i32 %78)
  ret void
}

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @tcp_lro_free(i32*) #1

declare dso_local i32 @mlx5_wq_ll_get_size(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
