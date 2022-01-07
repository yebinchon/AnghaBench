; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_send_fpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_send_fpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_iwarp_fpdu = type { i32, i64, i64, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.ecore_iwarp_ll2_buff* }
%struct.unaligned_opaque_data = type { i64 }
%struct.ecore_iwarp_ll2_buff = type { i64 }
%struct.ecore_ll2_tx_pkt_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i64, i32, i32 }

@ECORE_IWARP_MPA_PKT_UNALIGNED = common dso_local global i32 0, align 4
@ECORE_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@IWARP_LL2_ALIGNED_TX_QUEUE = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"MPA_ALIGN: Sent FPDU num_bds=%d [%lx, 0x%x], [0x%lx, 0x%x], [0x%lx, 0x%x] (cookie %p) rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.ecore_iwarp_ll2_buff*, i64, i32)* @ecore_iwarp_send_fpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_send_fpdu(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_fpdu* %1, %struct.unaligned_opaque_data* %2, %struct.ecore_iwarp_ll2_buff* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %9 = alloca %struct.unaligned_opaque_data*, align 8
  %10 = alloca %struct.ecore_iwarp_ll2_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ecore_ll2_tx_pkt_info, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_iwarp_fpdu* %1, %struct.ecore_iwarp_fpdu** %8, align 8
  store %struct.unaligned_opaque_data* %2, %struct.unaligned_opaque_data** %9, align 8
  store %struct.ecore_iwarp_ll2_buff* %3, %struct.ecore_iwarp_ll2_buff** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = call i32 @OSAL_MEM_ZERO(%struct.ecore_ll2_tx_pkt_info* %13, i32 48)
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @ECORE_IWARP_MPA_PKT_UNALIGNED, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 3, i32 2
  %22 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @ECORE_LL2_TX_DEST_LB, align 4
  %24 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 9
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 2
  %29 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ECORE_IWARP_MPA_PKT_UNALIGNED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %6
  %40 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %41 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 6
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %46 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 7
  store i64 %47, i64* %48, align 8
  %49 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %50 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 3
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 4
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 5
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @IWARP_LL2_ALIGNED_TX_QUEUE, align 4
  %57 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 8
  store i32 %56, i32* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %60 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %65 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %66 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %65, i32 0, i32 5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store %struct.ecore_iwarp_ll2_buff* %64, %struct.ecore_iwarp_ll2_buff** %68, align 8
  br label %69

69:                                               ; preds = %63, %44
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %71 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @ecore_ll2_prepare_tx_packet(%struct.ecore_hwfn* %76, i32 %77, %struct.ecore_ll2_tx_pkt_info* %13, i32 1)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %119

82:                                               ; preds = %69
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %86 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %89 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ecore_ll2_set_fragment_of_tx_packet(%struct.ecore_hwfn* %83, i32 %84, i64 %87, i64 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %119

95:                                               ; preds = %82
  %96 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %97 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %104 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %107 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %111 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ecore_ll2_set_fragment_of_tx_packet(%struct.ecore_hwfn* %101, i32 %102, i64 %109, i64 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  br label %119

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118, %116, %94, %81
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %121 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %122 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %129 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %132 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %135 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %138 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %136, %139
  %141 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %142 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %13, i32 0, i32 6
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %120, i32 %121, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %123, i64 %125, i32 %127, i64 %130, i64 %133, i64 %140, i64 %143, %struct.TYPE_6__* %145, i32 %146)
  %148 = load i32, i32* %14, align 4
  ret i32 %148
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @ecore_ll2_prepare_tx_packet(%struct.ecore_hwfn*, i32, %struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @ecore_ll2_set_fragment_of_tx_packet(%struct.ecore_hwfn*, i32, i64, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
