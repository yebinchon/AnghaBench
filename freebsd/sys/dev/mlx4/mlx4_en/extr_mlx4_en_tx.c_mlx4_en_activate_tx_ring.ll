; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_activate_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_activate_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, i32, i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@MLX4_QP_STATE_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %17, i32 0, i32 17
  store i64 0, i64* %18, align 8
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %23, i32 0, i32 16
  store i64 0, i64* %24, align 8
  %25 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memset(i32 %27, i32 0, i32 %30)
  %32 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %35 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %45 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %58, i32 0, i32 6
  %60 = call i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv* %44, i32 %47, i32 %50, i32 1, i32 0, i32 %53, i32 %56, i32 %57, %struct.TYPE_10__* %59)
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %4
  %66 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cpu_to_be32(i32 %71)
  %73 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %65, %4
  %77 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %83, i32 0, i32 6
  %85 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %85, i32 0, i32 5
  %87 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %87, i32 0, i32 4
  %89 = call i32 @mlx4_qp_to_ready(i32 %79, i32* %82, %struct.TYPE_10__* %84, %struct.TYPE_11__* %86, i32* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_qp_to_ready(i32, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
