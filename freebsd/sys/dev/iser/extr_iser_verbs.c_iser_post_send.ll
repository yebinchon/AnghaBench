; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_tx_desc = type { i32, i32, i32 }
%struct.ib_send_wr = type { i64, i32, i32, i32, i32, i32* }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ib_post_send failed, ret:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_send(%struct.ib_conn* %0, %struct.iser_tx_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_conn*, align 8
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_send_wr, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  store %struct.ib_conn* %0, %struct.ib_conn** %4, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %11 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %16 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %19 = load i32, i32* @DMA_TO_DEVICE, align 4
  %20 = call i32 @ib_dma_sync_single_for_device(i32 %14, i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %23 = ptrtoint %struct.iser_tx_desc* %22 to i64
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %26 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %30 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @IB_WR_SEND, align 4
  %34 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @IB_SEND_SIGNALED, align 4
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %44 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ib_post_send(i32 %45, %struct.ib_send_wr* %8, %struct.ib_send_wr** %9)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ISER_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

declare dso_local i32 @ISER_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
