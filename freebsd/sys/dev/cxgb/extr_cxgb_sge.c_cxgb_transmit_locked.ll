; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_transmit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_transmit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sge_qset = type { %struct.sge_txq*, %struct.port_info* }
%struct.sge_txq = type { i32, i32, %struct.TYPE_7__, i32, i32, i64, %struct.buf_ring* }
%struct.TYPE_7__ = type { i32 }
%struct.buf_ring = type { i32 }
%struct.port_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@TXQ_ETH = common dso_local global i64 0, align 8
@TX_MAX_DESC = common dso_local global i32 0, align 4
@cxgb_tx_reclaim_threshold = common dso_local global i32 0, align 4
@cxgb_tx_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sge_qset*, %struct.mbuf*)* @cxgb_transmit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_transmit_locked(%struct.ifnet* %0, %struct.sge_qset* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.sge_qset*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.sge_txq*, align 8
  %10 = alloca %struct.buf_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %13 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %14 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i32 0, i32 1
  %15 = load %struct.port_info*, %struct.port_info** %14, align 8
  store %struct.port_info* %15, %struct.port_info** %8, align 8
  %16 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %17 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %16, i32 0, i32 0
  %18 = load %struct.sge_txq*, %struct.sge_txq** %17, align 8
  %19 = load i64, i64* @TXQ_ETH, align 8
  %20 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %18, i64 %19
  store %struct.sge_txq* %20, %struct.sge_txq** %9, align 8
  %21 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %22 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %21, i32 0, i32 6
  %23 = load %struct.buf_ring*, %struct.buf_ring** %22, align 8
  store %struct.buf_ring* %23, %struct.buf_ring** %10, align 8
  %24 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %25 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %32 = call i32 @TXQ_LOCK_ASSERT(%struct.sge_qset* %31)
  %33 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %34 = call i64 @check_pkt_coalesce(%struct.sge_qset* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %3
  %37 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %38 = call i32 @TXQ_RING_NEEDS_ENQUEUE(%struct.sge_qset* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %87, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @TX_MAX_DESC, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %40
  %45 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %46 = call i64 @t3_encap(%struct.sge_qset* %45, %struct.mbuf** %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = icmp ne %struct.mbuf* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %53 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %55 = call i32 @drbr_enqueue(%struct.ifnet* %52, %struct.buf_ring* %53, %struct.mbuf* %54)
  store i32 %55, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %143

59:                                               ; preds = %51, %48
  br label %86

60:                                               ; preds = %44
  %61 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %62 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.port_info*, %struct.port_info** %8, align 8
  %67 = getelementptr inbounds %struct.port_info, %struct.port_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %70 = call i32 @check_ring_tx_db(i32 %68, %struct.sge_txq* %69, i32 1)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %71, %59
  br label %96

87:                                               ; preds = %40, %36, %3
  %88 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %89 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = call i32 @drbr_enqueue(%struct.ifnet* %88, %struct.buf_ring* %89, %struct.mbuf* %90)
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %143

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %86
  %97 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %98 = load i32, i32* @cxgb_tx_reclaim_threshold, align 4
  %99 = load i64, i64* @TXQ_ETH, align 8
  %100 = call i32 @reclaim_completed_tx(%struct.sge_qset* %97, i32 %98, i64 %99)
  %101 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %102 = call i32 @TXQ_RING_EMPTY(%struct.sge_qset* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %96
  %105 = load %struct.port_info*, %struct.port_info** %8, align 8
  %106 = getelementptr inbounds %struct.port_info, %struct.port_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %112 = call i64 @check_pkt_coalesce(%struct.sge_qset* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %116 = load %struct.buf_ring*, %struct.buf_ring** %10, align 8
  %117 = call i32 @drbr_inuse(%struct.ifnet* %115, %struct.buf_ring* %116)
  %118 = icmp sge i32 %117, 7
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %110
  %120 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %121 = call i32 @cxgb_start_locked(%struct.sge_qset* %120)
  br label %142

122:                                              ; preds = %114, %104, %96
  %123 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %124 = call i32 @TXQ_RING_EMPTY(%struct.sge_qset* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %122
  %127 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %128 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %127, i32 0, i32 2
  %129 = call i32 @callout_pending(%struct.TYPE_7__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %126
  %132 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %133 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %132, i32 0, i32 2
  %134 = load i32, i32* @cxgb_tx_timeout, align 4
  %135 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %136 = load %struct.sge_txq*, %struct.sge_txq** %9, align 8
  %137 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @callout_reset_on(%struct.TYPE_7__* %133, i32 1, i32 %134, %struct.sge_qset* %135, i32 %139)
  br label %141

141:                                              ; preds = %131, %126, %122
  br label %142

142:                                              ; preds = %141, %119
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %93, %57
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @TXQ_LOCK_ASSERT(%struct.sge_qset*) #1

declare dso_local i64 @check_pkt_coalesce(%struct.sge_qset*) #1

declare dso_local i32 @TXQ_RING_NEEDS_ENQUEUE(%struct.sge_qset*) #1

declare dso_local i64 @t3_encap(%struct.sge_qset*, %struct.mbuf**) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i32 @check_ring_tx_db(i32, %struct.sge_txq*, i32) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge_qset*, i32, i64) #1

declare dso_local i32 @TXQ_RING_EMPTY(%struct.sge_qset*) #1

declare dso_local i32 @drbr_inuse(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @cxgb_start_locked(%struct.sge_qset*) #1

declare dso_local i32 @callout_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @callout_reset_on(%struct.TYPE_7__*, i32, i32, %struct.sge_qset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
