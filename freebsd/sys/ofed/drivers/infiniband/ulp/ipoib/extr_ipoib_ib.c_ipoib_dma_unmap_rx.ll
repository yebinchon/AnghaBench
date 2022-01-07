; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_unmap_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dma_unmap_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }
%struct.ipoib_rx_buf = type { i32*, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.mbuf* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_dma_unmap_rx(%struct.ipoib_dev_priv* %0, %struct.ipoib_rx_buf* %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_rx_buf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store %struct.ipoib_rx_buf* %1, %struct.ipoib_rx_buf** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %4, align 8
  %8 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %7, i32 0, i32 1
  %9 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %9, %struct.mbuf** %5, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %4, align 8
  %18 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @ib_dma_unmap_single(i32 %16, i32 %23, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %13
  %30 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
