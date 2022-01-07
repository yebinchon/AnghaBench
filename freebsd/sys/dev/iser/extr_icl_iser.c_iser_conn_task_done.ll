; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_task_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_task_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.icl_pdu = type { i32 }
%struct.icl_iser_pdu = type { i32*, i64*, %struct.iser_tx_desc, %struct.TYPE_4__* }
%struct.iser_tx_desc = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_HEADERS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_task_done(%struct.icl_conn* %0, i8* %1) #0 {
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.icl_pdu*, align 8
  %6 = alloca %struct.icl_iser_pdu*, align 8
  %7 = alloca %struct.iser_device*, align 8
  %8 = alloca %struct.iser_tx_desc*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.icl_pdu*
  store %struct.icl_pdu* %10, %struct.icl_pdu** %5, align 8
  %11 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %12 = call %struct.icl_iser_pdu* @icl_to_iser_pdu(%struct.icl_pdu* %11)
  store %struct.icl_iser_pdu* %12, %struct.icl_iser_pdu** %6, align 8
  %13 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %14 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.iser_device*, %struct.iser_device** %17, align 8
  store %struct.iser_device* %18, %struct.iser_device** %7, align 8
  %19 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %20 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %19, i32 0, i32 2
  store %struct.iser_tx_desc* %20, %struct.iser_tx_desc** %8, align 8
  %21 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %22 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @ISER_DIR_IN, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %30 = load i64, i64* @ISER_DIR_IN, align 8
  %31 = call i32 @iser_unreg_rdma_mem(%struct.icl_iser_pdu* %29, i64 %30)
  %32 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %33 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %34 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @ISER_DIR_IN, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @iser_dma_unmap_task_data(%struct.icl_iser_pdu* %32, i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %2
  %41 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %42 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @ISER_DIR_OUT, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %50 = load i64, i64* @ISER_DIR_OUT, align 8
  %51 = call i32 @iser_unreg_rdma_mem(%struct.icl_iser_pdu* %49, i64 %50)
  %52 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %53 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %54 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @ISER_DIR_OUT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @iser_dma_unmap_task_data(%struct.icl_iser_pdu* %52, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %40
  %61 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %62 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %68 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %71 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @ib_dma_unmap_single(i32 %69, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %77 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %60
  %79 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %80 = load %struct.icl_pdu*, %struct.icl_pdu** %5, align 8
  %81 = call i32 @iser_pdu_free(%struct.icl_conn* %79, %struct.icl_pdu* %80)
  ret void
}

declare dso_local %struct.icl_iser_pdu* @icl_to_iser_pdu(%struct.icl_pdu*) #1

declare dso_local i32 @iser_unreg_rdma_mem(%struct.icl_iser_pdu*, i64) #1

declare dso_local i32 @iser_dma_unmap_task_data(%struct.icl_iser_pdu*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @iser_pdu_free(%struct.icl_conn*, %struct.icl_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
