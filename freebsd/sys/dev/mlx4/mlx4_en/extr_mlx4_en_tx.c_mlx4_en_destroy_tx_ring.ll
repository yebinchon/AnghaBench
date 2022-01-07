; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_destroy_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_tx.c_mlx4_en_destroy_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_tx_ring = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__*, i32, %struct.TYPE_8__, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Destroying tx ring, qpn: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring** %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_tx_ring**, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  %7 = alloca i64, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_tx_ring** %1, %struct.mlx4_en_tx_ring*** %4, align 8
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 0
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  store %struct.mlx4_en_dev* %10, %struct.mlx4_en_dev** %5, align 8
  %11 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %4, align 8
  %12 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %11, align 8
  store %struct.mlx4_en_tx_ring* %12, %struct.mlx4_en_tx_ring** %6, align 8
  %13 = load i32, i32* @DRV, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %15 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @en_dbg(i32 %13, %struct.mlx4_en_priv* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %27, i32 0, i32 9
  %29 = call i32 @mlx4_bf_free(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %34, i32 0, i32 8
  %36 = call i32 @mlx4_qp_remove(i32 %33, i32* %35)
  %37 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %40, i32 0, i32 8
  %42 = call i32 @mlx4_qp_free(i32 %39, i32* %41)
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 0
  %45 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %44, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx4_qp_release_range(i32 %47, i32 %50, i32 1)
  %52 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @mlx4_en_unmap_buffer(i32* %54)
  %56 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %59, i32 0, i32 6
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mlx4_free_hwq_res(i32 %58, %struct.TYPE_8__* %60, i32 %63)
  store i64 0, i64* %7, align 8
  br label %65

65:                                               ; preds = %83, %30
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %75, i32 0, i32 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bus_dmamap_destroy(i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %71
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i32 @vfree(%struct.TYPE_7__* %89)
  %91 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = call i32 @mtx_destroy(i32* %93)
  %95 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @mtx_destroy(i32* %97)
  %99 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bus_dma_tag_destroy(i32 %101)
  %103 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %104 = call i32 @kfree(%struct.mlx4_en_tx_ring* %103)
  %105 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %4, align 8
  store %struct.mlx4_en_tx_ring* null, %struct.mlx4_en_tx_ring** %105, align 8
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_bf_free(i32, i32*) #1

declare dso_local i32 @mlx4_qp_remove(i32, i32*) #1

declare dso_local i32 @mlx4_qp_free(i32, i32*) #1

declare dso_local i32 @mlx4_qp_release_range(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_unmap_buffer(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_7__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
