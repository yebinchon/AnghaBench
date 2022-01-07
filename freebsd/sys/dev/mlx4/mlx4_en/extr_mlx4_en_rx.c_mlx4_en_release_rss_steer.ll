; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_release_rss_steer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_release_rss_steer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_rss_map, %struct.mlx4_en_dev* }
%struct.mlx4_en_rss_map = type { i32, i32*, i32*, i32, i32 }
%struct.mlx4_en_dev = type { i32 }

@MLX4_QP_STATE_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_release_rss_steer(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca %struct.mlx4_en_dev*, align 8
  %4 = alloca %struct.mlx4_en_rss_map*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 2
  %8 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  store %struct.mlx4_en_dev* %8, %struct.mlx4_en_dev** %3, align 8
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 1
  store %struct.mlx4_en_rss_map* %10, %struct.mlx4_en_rss_map** %4, align 8
  %11 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %18 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %18, i32 0, i32 3
  %20 = call i32 @mlx4_qp_modify(i32 %13, i32* null, i32 %16, i32 %17, i32* null, i32 0, i32 0, i32* %19)
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %24, i32 0, i32 3
  %26 = call i32 @mlx4_qp_remove(i32 %23, i32* %25)
  %27 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %30, i32 0, i32 3
  %32 = call i32 @mlx4_qp_free(i32 %29, i32* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %78, %1
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %51 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @mlx4_qp_modify(i32 %42, i32* null, i32 %49, i32 %50, i32* null, i32 0, i32 0, i32* %56)
  %58 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @mlx4_qp_remove(i32 %60, i32* %66)
  %68 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @mlx4_qp_free(i32 %70, i32* %76)
  br label %78

78:                                               ; preds = %39
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %33

81:                                               ; preds = %33
  %82 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_en_rss_map*, %struct.mlx4_en_rss_map** %4, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_rss_map, %struct.mlx4_en_rss_map* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mlx4_qp_release_range(i32 %84, i32 %87, i32 %90)
  ret void
}

declare dso_local i32 @mlx4_qp_modify(i32, i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_qp_remove(i32, i32*) #1

declare dso_local i32 @mlx4_qp_free(i32, i32*) #1

declare dso_local i32 @mlx4_qp_release_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
