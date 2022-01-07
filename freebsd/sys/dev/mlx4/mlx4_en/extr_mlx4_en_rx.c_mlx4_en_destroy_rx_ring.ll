; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_destroy_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_destroy_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }

@TXBB_SIZE = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring** %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_rx_ring**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca %struct.mlx4_en_rx_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.mlx4_en_rx_ring** %1, %struct.mlx4_en_rx_ring*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 0
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %11, align 8
  store %struct.mlx4_en_dev* %12, %struct.mlx4_en_dev** %7, align 8
  %13 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %5, align 8
  %14 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %13, align 8
  store %struct.mlx4_en_rx_ring* %14, %struct.mlx4_en_rx_ring** %8, align 8
  %15 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @mlx4_en_unmap_buffer(i32* %17)
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %22, i32 0, i32 3
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = load i64, i64* @TXBB_SIZE, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @mlx4_free_hwq_res(i32 %21, %struct.TYPE_6__* %23, i64 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %47, %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bus_dmamap_destroy(i32 %37, i32 %45)
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %65 = call i32 @bus_dmamap_sync(i32 %59, i32 %63, i32 %64)
  %66 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bus_dmamap_unload(i32 %68, i32 %72)
  %74 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @m_freem(i32* %77)
  br label %79

79:                                               ; preds = %56, %50
  %80 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bus_dmamap_destroy(i32 %82, i32 %86)
  %88 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @vfree(%struct.TYPE_5__* %90)
  %92 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bus_dma_tag_destroy(i32 %94)
  %96 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %97 = call i32 @kfree(%struct.mlx4_en_rx_ring* %96)
  %98 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %5, align 8
  store %struct.mlx4_en_rx_ring* null, %struct.mlx4_en_rx_ring** %98, align 8
  ret void
}

declare dso_local i32 @mlx4_en_unmap_buffer(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @vfree(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
