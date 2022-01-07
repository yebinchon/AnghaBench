; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_free_login_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_free_login_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@M_ISER_INITIATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_free_login_buf(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %4 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %5 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  store %struct.iser_device* %7, %struct.iser_device** %3, align 8
  %8 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %20 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %23 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @ib_dma_unmap_single(i32 %21, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %13
  %29 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %30 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %35 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %38 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @ib_dma_unmap_single(i32 %36, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @M_ISER_INITIATOR, align 4
  %48 = call i32 @free(i32* %46, i32 %47)
  %49 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %50 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %52 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %54 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %43, %12
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
