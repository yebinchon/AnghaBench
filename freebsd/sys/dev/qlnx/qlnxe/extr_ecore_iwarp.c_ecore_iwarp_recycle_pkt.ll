; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_recycle_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_recycle_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_iwarp_fpdu = type { i32, i64 }
%struct.ecore_iwarp_ll2_buff = type { i32 }
%struct.ecore_ll2_tx_pkt_info = type { i32, i32, i32, i64, %struct.ecore_iwarp_ll2_buff*, i32 }

@ECORE_LL2_TX_DEST_DROP = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"MPA_ALIGN: send drop tx packet [%lx, 0x%x], buf=%p, rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't drop packet rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_ll2_buff*)* @ecore_iwarp_recycle_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_recycle_pkt(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_fpdu* %1, %struct.ecore_iwarp_ll2_buff* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %6 = alloca %struct.ecore_iwarp_ll2_buff*, align 8
  %7 = alloca %struct.ecore_ll2_tx_pkt_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_iwarp_fpdu* %1, %struct.ecore_iwarp_fpdu** %5, align 8
  store %struct.ecore_iwarp_ll2_buff* %2, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %10 = call i32 @OSAL_MEM_ZERO(%struct.ecore_ll2_tx_pkt_info* %7, i32 40)
  %11 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @ECORE_LL2_TX_DEST_DROP, align 4
  %13 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 2
  %18 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 3
  store i64 %21, i64* %22, align 8
  %23 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @OSAL_NULL, align 4
  %28 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 4
  store %struct.ecore_iwarp_ll2_buff* %30, %struct.ecore_iwarp_ll2_buff** %31, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ecore_ll2_prepare_tx_packet(%struct.ecore_hwfn* %38, i32 %39, %struct.ecore_ll2_tx_pkt_info* %7, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %43 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %41, i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, %struct.ecore_iwarp_ll2_buff* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %3
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %55 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %54, i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %3
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @ecore_ll2_prepare_tx_packet(%struct.ecore_hwfn*, i32, %struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
