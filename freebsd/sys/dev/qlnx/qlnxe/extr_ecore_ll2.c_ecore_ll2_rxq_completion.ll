; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_rxq_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_rxq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.core_rx_cqe_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ll2_info = type { %struct.ecore_ll2_rx_queue }
%struct.ecore_ll2_rx_queue = type { i32, i32, i32* }

@OSAL_NULL = common dso_local global %union.core_rx_cqe_union* null, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"LL2 [sw. cons %04x, fw. at %04x] - Got Packet of type %02x\0A\00", align 1
@ECORE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i8*)* @ecore_ll2_rxq_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_ll2_rxq_completion(%struct.ecore_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_ll2_info*, align 8
  %6 = alloca %struct.ecore_ll2_rx_queue*, align 8
  %7 = alloca %union.core_rx_cqe_union*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ecore_ll2_info*
  store %struct.ecore_ll2_info* %14, %struct.ecore_ll2_info** %5, align 8
  %15 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %15, i32 0, i32 0
  store %struct.ecore_ll2_rx_queue* %16, %struct.ecore_ll2_rx_queue** %6, align 8
  %17 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** @OSAL_NULL, align 8
  store %union.core_rx_cqe_union* %17, %union.core_rx_cqe_union** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @OSAL_SPIN_LOCK_IRQSAVE(i32* %20, i64 %21)
  %23 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @OSAL_LE16_TO_CPU(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %28, i32 0, i32 1
  %30 = call i64 @ecore_chain_get_cons_idx(i32* %29)
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %73, %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %40, i32 0, i32 1
  %42 = call i64 @ecore_chain_consume(i32* %41)
  %43 = inttoptr i64 %42 to %union.core_rx_cqe_union*
  store %union.core_rx_cqe_union* %43, %union.core_rx_cqe_union** %7, align 8
  %44 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %44, i32 0, i32 1
  %46 = call i64 @ecore_chain_get_cons_idx(i32* %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %48 = load i32, i32* @ECORE_MSG_LL2, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %52 = bitcast %union.core_rx_cqe_union* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %47, i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50, i32 %54)
  %56 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %57 = bitcast %union.core_rx_cqe_union* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %71 [
    i32 128, label %60
    i32 130, label %65
    i32 129, label %65
  ]

60:                                               ; preds = %35
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %62 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %63 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %64 = call i32 @ecore_ll2_handle_slowpath(%struct.ecore_hwfn* %61, %struct.ecore_ll2_info* %62, %union.core_rx_cqe_union* %63, i64* %10)
  store i32 %64, i32* %11, align 4
  br label %73

65:                                               ; preds = %35, %35
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %67 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %5, align 8
  %68 = load %union.core_rx_cqe_union*, %union.core_rx_cqe_union** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ecore_ll2_rxq_handle_completion(%struct.ecore_hwfn* %66, %struct.ecore_ll2_info* %67, %union.core_rx_cqe_union* %68, i64* %10, i32 %69)
  store i32 %70, i32* %11, align 4
  br label %73

71:                                               ; preds = %35
  %72 = load i32, i32* @ECORE_IO, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %65, %60
  br label %31

74:                                               ; preds = %31
  %75 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %6, align 8
  %76 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @OSAL_SPIN_UNLOCK_IRQSAVE(i32* %76, i64 %77)
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i32 @OSAL_SPIN_LOCK_IRQSAVE(i32*, i64) #1

declare dso_local i64 @OSAL_LE16_TO_CPU(i32) #1

declare dso_local i64 @ecore_chain_get_cons_idx(i32*) #1

declare dso_local i64 @ecore_chain_consume(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @ecore_ll2_handle_slowpath(%struct.ecore_hwfn*, %struct.ecore_ll2_info*, %union.core_rx_cqe_union*, i64*) #1

declare dso_local i32 @ecore_ll2_rxq_handle_completion(%struct.ecore_hwfn*, %struct.ecore_ll2_info*, %union.core_rx_cqe_union*, i64*, i32) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK_IRQSAVE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
