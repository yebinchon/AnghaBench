; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_cxgb_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, %struct.port_info*, %struct.sge_txq* }
%struct.port_info = type { %struct.TYPE_4__, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.sge_txq = type { i64, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { i32 }

@TXQ_ETH = common dso_local global i64 0, align 8
@QS_FLUSHING = common dso_local global i32 0, align 4
@QS_TIMEOUT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@cxgb_tx_reclaim_threshold = common dso_local global i32 0, align 4
@TX_MAX_DESC = common dso_local global i64 0, align 8
@cxgb_tx_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_qset*)* @cxgb_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_start_locked(%struct.sge_qset* %0) #0 {
  %2 = alloca %struct.sge_qset*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  %7 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %8 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %7, i32 0, i32 2
  %9 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %10 = load i64, i64* @TXQ_ETH, align 8
  %11 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i64 %10
  store %struct.sge_txq* %11, %struct.sge_txq** %4, align 8
  %12 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %13 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %12, i32 0, i32 1
  %14 = load %struct.port_info*, %struct.port_info** %13, align 8
  store %struct.port_info* %14, %struct.port_info** %5, align 8
  %15 = load %struct.port_info*, %struct.port_info** %5, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 2
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %6, align 8
  %18 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %19 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QS_FLUSHING, align 4
  %22 = load i32, i32* @QS_TIMEOUT, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %28 = load i64, i64* @TXQ_ETH, align 8
  %29 = call i32 @reclaim_completed_tx(%struct.sge_qset* %27, i32 0, i64 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.port_info*, %struct.port_info** %5, align 8
  %32 = getelementptr inbounds %struct.port_info, %struct.port_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %38 = call i32 @TXQ_RING_FLUSH(%struct.sge_qset* %37)
  br label %132

39:                                               ; preds = %30
  %40 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %41 = call i32 @TXQ_LOCK_ASSERT(%struct.sge_qset* %40)
  br label %42

42:                                               ; preds = %89, %39
  %43 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %44 = call i32 @TXQ_RING_EMPTY(%struct.sge_qset* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.port_info*, %struct.port_info** %5, align 8
  %55 = getelementptr inbounds %struct.port_info, %struct.port_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %46, %42
  %60 = phi i1 [ false, %46 ], [ false, %42 ], [ %58, %53 ]
  br i1 %60, label %61, label %90

61:                                               ; preds = %59
  %62 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %63 = load i32, i32* @cxgb_tx_reclaim_threshold, align 4
  %64 = load i64, i64* @TXQ_ETH, align 8
  %65 = call i32 @reclaim_completed_tx(%struct.sge_qset* %62, i32 %63, i64 %64)
  %66 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %67 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %70 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load i64, i64* @TX_MAX_DESC, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %90

76:                                               ; preds = %61
  %77 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %78 = call %struct.mbuf* @cxgb_dequeue(%struct.sge_qset* %77)
  store %struct.mbuf* %78, %struct.mbuf** %3, align 8
  %79 = icmp eq %struct.mbuf* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %90

81:                                               ; preds = %76
  %82 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %83 = call i64 @t3_encap(%struct.sge_qset* %82, %struct.mbuf** %3)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %87 = icmp eq %struct.mbuf* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %81
  br label %90

89:                                               ; preds = %85
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %42

90:                                               ; preds = %88, %80, %75, %59
  %91 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %92 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.port_info*, %struct.port_info** %5, align 8
  %97 = getelementptr inbounds %struct.port_info, %struct.port_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %100 = call i32 @check_ring_tx_db(i32 %98, %struct.sge_txq* %99, i32 1)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %103 = call i32 @TXQ_RING_EMPTY(%struct.sge_qset* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %101
  %106 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %107 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %106, i32 0, i32 2
  %108 = call i64 @callout_pending(%struct.TYPE_5__* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.port_info*, %struct.port_info** %5, align 8
  %112 = getelementptr inbounds %struct.port_info, %struct.port_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %118 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %117, i32 0, i32 2
  %119 = load i32, i32* @cxgb_tx_timeout, align 4
  %120 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %121 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %122 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @callout_reset_on(%struct.TYPE_5__* %118, i32 1, i32 %119, %struct.sge_qset* %120, i32 %124)
  br label %126

126:                                              ; preds = %116, %110, %105, %101
  %127 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %128 = icmp ne %struct.mbuf* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %131 = call i32 @m_freem(%struct.mbuf* %130)
  br label %132

132:                                              ; preds = %36, %129, %126
  ret void
}

declare dso_local i32 @reclaim_completed_tx(%struct.sge_qset*, i32, i64) #1

declare dso_local i32 @TXQ_RING_FLUSH(%struct.sge_qset*) #1

declare dso_local i32 @TXQ_LOCK_ASSERT(%struct.sge_qset*) #1

declare dso_local i32 @TXQ_RING_EMPTY(%struct.sge_qset*) #1

declare dso_local %struct.mbuf* @cxgb_dequeue(%struct.sge_qset*) #1

declare dso_local i64 @t3_encap(%struct.sge_qset*, %struct.mbuf**) #1

declare dso_local i32 @check_ring_tx_db(i32, %struct.sge_txq*, i32) #1

declare dso_local i64 @callout_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @callout_reset_on(%struct.TYPE_5__*, i32, i32, %struct.sge_qset*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
