; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_free_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_free_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, %struct.iser_rx_desc*, %struct.ib_conn }
%struct.iser_rx_desc = type { i32 }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@M_ISER_INITIATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_free_rx_descriptors(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_rx_desc*, align 8
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 2
  store %struct.ib_conn* %8, %struct.ib_conn** %5, align 8
  %9 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %10 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %9, i32 0, i32 0
  %11 = load %struct.iser_device*, %struct.iser_device** %10, align 8
  store %struct.iser_device* %11, %struct.iser_device** %6, align 8
  %12 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %13 = call i32 @iser_free_fastreg_pool(%struct.ib_conn* %12)
  %14 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 1
  %16 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %15, align 8
  store %struct.iser_rx_desc* %16, %struct.iser_rx_desc** %4, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %25 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %28 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = call i32 @ib_dma_unmap_single(i32 %26, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %37 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %36, i32 1
  store %struct.iser_rx_desc* %37, %struct.iser_rx_desc** %4, align 8
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %40 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %39, i32 0, i32 1
  %41 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %40, align 8
  %42 = load i32, i32* @M_ISER_INITIATOR, align 4
  %43 = call i32 @free(%struct.iser_rx_desc* %41, i32 %42)
  %44 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 1
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %45, align 8
  ret void
}

declare dso_local i32 @iser_free_fastreg_pool(%struct.ib_conn*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.iser_rx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
