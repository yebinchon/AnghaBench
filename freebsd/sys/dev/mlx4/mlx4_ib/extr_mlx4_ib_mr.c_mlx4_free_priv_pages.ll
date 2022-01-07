; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_free_priv_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_free_priv_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_mr = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_mr*)* @mlx4_free_priv_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_free_priv_pages(%struct.mlx4_ib_mr* %0) #0 {
  %2 = alloca %struct.mlx4_ib_mr*, align 8
  %3 = alloca %struct.ib_device*, align 8
  store %struct.mlx4_ib_mr* %0, %struct.mlx4_ib_mr** %2, align 8
  %4 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  store %struct.ib_device* %12, %struct.ib_device** %3, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %14 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %2, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_unmap_single(i32 %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %2, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = call i32 @free_page(i64 %27)
  %29 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %2, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
