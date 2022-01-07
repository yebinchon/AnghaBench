; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_alloc_proxy_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_alloc_proxy_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_qp = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_ib_qp*)* @alloc_proxy_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_proxy_bufs(%struct.ib_device* %0, %struct.mlx4_ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.mlx4_ib_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %5, align 8
  %7 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  %17 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %17, i32 0, i32 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %136

26:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %96, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %27
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_5__*
  %38 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %34
  br label %100

55:                                               ; preds = %34
  %56 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %57 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @ib_dma_map_single(%struct.ib_device* %56, %struct.TYPE_5__* %64, i32 4, i32 %65)
  %67 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %75 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ib_dma_mapping_error(%struct.ib_device* %74, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %55
  %86 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = call i32 @kfree(%struct.TYPE_5__* %93)
  br label %100

95:                                               ; preds = %55
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %27

99:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %136

100:                                              ; preds = %85, %54
  br label %101

101:                                              ; preds = %104, %100
  %102 = load i32, i32* %6, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  %107 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %108 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %117 = call i32 @ib_dma_unmap_single(%struct.ib_device* %107, i32 %115, i32 4, i32 %116)
  %118 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %119 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = call i32 @kfree(%struct.TYPE_5__* %125)
  br label %101

127:                                              ; preds = %101
  %128 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %129 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = call i32 @kfree(%struct.TYPE_5__* %130)
  %132 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %133 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %132, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %133, align 8
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %127, %99, %23
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
