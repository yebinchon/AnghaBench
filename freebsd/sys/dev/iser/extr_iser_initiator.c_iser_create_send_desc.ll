; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_create_send_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_create_send_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.iser_tx_desc = type { i32, %struct.TYPE_5__*, %struct.TYPE_8__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sdesc %p lkey mismatch, fixing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_create_send_desc(%struct.iser_conn* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  store %struct.iser_device* %9, %struct.iser_device** %5, align 8
  %10 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %11 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %14 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @ib_dma_sync_single_for_cpu(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %20 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %19, i32 0, i32 2
  %21 = call i32 @memset(%struct.TYPE_8__* %20, i32 0, i32 4)
  %22 = load i32, i32* @ISER_VER, align 4
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %24 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %27 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %29 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %35 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %2
  %41 = load %struct.iser_device*, %struct.iser_device** %5, align 8
  %42 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %47 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %52 = call i32 @ISER_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.iser_tx_desc* %51)
  br label %53

53:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ISER_DBG(i8*, %struct.iser_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
