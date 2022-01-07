; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_send_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.icl_iser_pdu = type { %struct.iser_tx_desc, %struct.TYPE_4__ }
%struct.iser_tx_desc = type { i32, %struct.ib_sge*, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ISCSI_TX_CONTROL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"conn %p failed err %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_send_control(%struct.iser_conn* %0, %struct.icl_iser_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.icl_iser_pdu*, align 8
  %6 = alloca %struct.iser_tx_desc*, align 8
  %7 = alloca %struct.iser_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_sge*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %4, align 8
  store %struct.icl_iser_pdu* %1, %struct.icl_iser_pdu** %5, align 8
  %11 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %12 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %5, align 8
  %16 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %15, i32 0, i32 0
  store %struct.iser_tx_desc* %16, %struct.iser_tx_desc** %6, align 8
  %17 = load i32, i32* @ISCSI_TX_CONTROL, align 4
  %18 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %6, align 8
  %19 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %21 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %6, align 8
  %22 = call i32 @iser_create_send_desc(%struct.iser_conn* %20, %struct.iser_tx_desc* %21)
  %23 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.iser_device*, %struct.iser_device** %25, align 8
  store %struct.iser_device* %26, %struct.iser_device** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %2
  %30 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %6, align 8
  %31 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %30, i32 0, i32 1
  %32 = load %struct.ib_sge*, %struct.ib_sge** %31, align 8
  %33 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %32, i64 1
  store %struct.ib_sge* %33, %struct.ib_sge** %10, align 8
  %34 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %35 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %38 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @ib_dma_sync_single_for_cpu(i32 %36, i32 %39, i64 %40, i32 %41)
  %43 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %44 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %47 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @ib_dma_sync_single_for_device(i32 %45, i32 %48, i64 %49, i32 %50)
  %52 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %53 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %56 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %59 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %61 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %66 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %6, align 8
  %68 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %67, i32 0, i32 0
  store i32 2, i32* %68, align 8
  br label %69

69:                                               ; preds = %29, %2
  %70 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %71 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %76 = call i32 @iser_post_recvl(%struct.iser_conn* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %90

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %69
  %82 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %83 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %82, i32 0, i32 0
  %84 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %6, align 8
  %85 = call i32 @iser_post_send(%struct.TYPE_6__* %83, %struct.iser_tx_desc* %84, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %95

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ISER_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %88
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @iser_create_send_desc(%struct.iser_conn*, %struct.iser_tx_desc*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i64, i32) #1

declare dso_local i32 @iser_post_recvl(%struct.iser_conn*) #1

declare dso_local i32 @iser_post_send(%struct.TYPE_6__*, %struct.iser_tx_desc*, i32) #1

declare dso_local i32 @ISER_ERR(i8*, %struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
