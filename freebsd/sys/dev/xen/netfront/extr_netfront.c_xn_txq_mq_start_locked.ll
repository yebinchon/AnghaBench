; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_mq_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_mq_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_txq = type { i32, i32, i32, %struct.buf_ring*, %struct.netfront_info* }
%struct.buf_ring = type { i32 }
%struct.netfront_info = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_txq*, %struct.mbuf*)* @xn_txq_mq_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xn_txq_mq_start_locked(%struct.netfront_txq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfront_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.netfront_info*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.buf_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.netfront_txq* %0, %struct.netfront_txq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %12 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %11, i32 0, i32 4
  %13 = load %struct.netfront_info*, %struct.netfront_info** %12, align 8
  store %struct.netfront_info* %13, %struct.netfront_info** %6, align 8
  %14 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %15 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %14, i32 0, i32 3
  %16 = load %struct.buf_ring*, %struct.buf_ring** %15, align 8
  store %struct.buf_ring* %16, %struct.buf_ring** %8, align 8
  %17 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %18 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %17, i32 0, i32 0
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %21 = call i32 @XN_TX_LOCK_ASSERT(%struct.netfront_txq* %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %30 = call i32 @netfront_carrier_ok(%struct.netfront_info* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %37 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = call i32 @drbr_enqueue(%struct.ifnet* %36, %struct.buf_ring* %37, %struct.mbuf* %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %105

42:                                               ; preds = %28
  %43 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %44 = icmp ne %struct.mbuf* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %47 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = call i32 @drbr_enqueue(%struct.ifnet* %46, %struct.buf_ring* %47, %struct.mbuf* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %105

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %92, %55
  %57 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %58 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %59 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %57, %struct.buf_ring* %58)
  store %struct.mbuf* %59, %struct.mbuf** %5, align 8
  %60 = icmp ne %struct.mbuf* %59, null
  br i1 %60, label %61, label %96

61:                                               ; preds = %56
  %62 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %63 = call i32 @xn_tx_slot_available(%struct.netfront_txq* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %67 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %69 = call i32 @drbr_putback(%struct.ifnet* %66, %struct.buf_ring* %67, %struct.mbuf* %68)
  br label %96

70:                                               ; preds = %61
  %71 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %73 = call i32 @xn_assemble_tx_request(%struct.netfront_txq* %71, %struct.mbuf* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %78 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %79 = call i32 @drbr_advance(%struct.ifnet* %77, %struct.buf_ring* %78)
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %82 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %81, i32 0, i32 1
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(i32* %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %89 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @xen_intr_signal(i32 %90)
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %94 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %95 = call i32 @drbr_advance(%struct.ifnet* %93, %struct.buf_ring* %94)
  br label %56

96:                                               ; preds = %76, %65, %56
  %97 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %98 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %97, i32 0, i32 1
  %99 = call i64 @RING_FULL(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %103 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %96
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %52, %40
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @XN_TX_LOCK_ASSERT(%struct.netfront_txq*) #1

declare dso_local i32 @netfront_carrier_ok(%struct.netfront_info*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @xn_tx_slot_available(%struct.netfront_txq*) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i32 @xn_assemble_tx_request(%struct.netfront_txq*, %struct.mbuf*) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(i32*, i32) #1

declare dso_local i32 @xen_intr_signal(i32) #1

declare dso_local i64 @RING_FULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
