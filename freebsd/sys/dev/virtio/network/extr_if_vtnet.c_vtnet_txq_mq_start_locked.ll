; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_mq_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_mq_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { i32, i32, %struct.TYPE_2__, %struct.buf_ring*, %struct.virtqueue*, %struct.vtnet_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.buf_ring = type { i32 }
%struct.virtqueue = type { i32 }
%struct.vtnet_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@VTNET_NOTIFY_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_txq*, %struct.mbuf*)* @vtnet_txq_mq_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_txq_mq_start_locked(%struct.vtnet_txq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtnet_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.vtnet_softc*, align 8
  %7 = alloca %struct.virtqueue*, align 8
  %8 = alloca %struct.buf_ring*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %13 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %14 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %13, i32 0, i32 5
  %15 = load %struct.vtnet_softc*, %struct.vtnet_softc** %14, align 8
  store %struct.vtnet_softc* %15, %struct.vtnet_softc** %6, align 8
  %16 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %17 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %16, i32 0, i32 4
  %18 = load %struct.virtqueue*, %struct.virtqueue** %17, align 8
  store %struct.virtqueue* %18, %struct.virtqueue** %7, align 8
  %19 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %20 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %19, i32 0, i32 3
  %21 = load %struct.buf_ring*, %struct.buf_ring** %20, align 8
  store %struct.buf_ring* %21, %struct.buf_ring** %8, align 8
  %22 = load %struct.vtnet_softc*, %struct.vtnet_softc** %6, align 8
  %23 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %22, i32 0, i32 1
  %24 = load %struct.ifnet*, %struct.ifnet** %23, align 8
  store %struct.ifnet* %24, %struct.ifnet** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %26 = call i32 @VTNET_TXQ_LOCK_ASSERT(%struct.vtnet_txq* %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.vtnet_softc*, %struct.vtnet_softc** %6, align 8
  %35 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33, %2
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = icmp ne %struct.mbuf* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %43 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = call i32 @drbr_enqueue(%struct.ifnet* %42, %struct.buf_ring* %43, %struct.mbuf* %44)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %3, align 4
  br label %132

48:                                               ; preds = %33
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = icmp ne %struct.mbuf* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %53 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = call i32 @drbr_enqueue(%struct.ifnet* %52, %struct.buf_ring* %53, %struct.mbuf* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %3, align 4
  br label %132

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %63 = call i32 @vtnet_txq_eof(%struct.vtnet_txq* %62)
  br label %64

64:                                               ; preds = %118, %61
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %97, %64
  %66 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %67 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %68 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %66, %struct.buf_ring* %67)
  store %struct.mbuf* %68, %struct.mbuf** %5, align 8
  %69 = icmp ne %struct.mbuf* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %65
  %71 = load %struct.virtqueue*, %struct.virtqueue** %7, align 8
  %72 = call i64 @virtqueue_full(%struct.virtqueue* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %76 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %78 = call i32 @drbr_putback(%struct.ifnet* %75, %struct.buf_ring* %76, %struct.mbuf* %77)
  br label %106

79:                                               ; preds = %70
  %80 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %81 = load i32, i32* @M_NOWAIT, align 4
  %82 = call i64 @vtnet_txq_encap(%struct.vtnet_txq* %80, %struct.mbuf** %5, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = icmp ne %struct.mbuf* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %89 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %91 = call i32 @drbr_putback(%struct.ifnet* %88, %struct.buf_ring* %89, %struct.mbuf* %90)
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %94 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %95 = call i32 @drbr_advance(%struct.ifnet* %93, %struct.buf_ring* %94)
  br label %96

96:                                               ; preds = %92, %87
  br label %106

97:                                               ; preds = %79
  %98 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %99 = load %struct.buf_ring*, %struct.buf_ring** %8, align 8
  %100 = call i32 @drbr_advance(%struct.ifnet* %98, %struct.buf_ring* %99)
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %105 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %103, %struct.mbuf* %104)
  br label %65

106:                                              ; preds = %96, %74, %65
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %106
  %110 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %111 = call i64 @vtnet_txq_notify(%struct.vtnet_txq* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @VTNET_NOTIFY_RETRIES, align 4
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %64

119:                                              ; preds = %113
  %120 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %121 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %126 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %129 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %128, i32 0, i32 0
  %130 = call i32 @taskqueue_enqueue(i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %119, %109, %106
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %58, %46
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @VTNET_TXQ_LOCK_ASSERT(%struct.vtnet_txq*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i32 @vtnet_txq_eof(%struct.vtnet_txq*) #1

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i64 @virtqueue_full(%struct.virtqueue*) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i64 @vtnet_txq_encap(%struct.vtnet_txq*, %struct.mbuf**, i32) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, %struct.buf_ring*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i64 @vtnet_txq_notify(%struct.vtnet_txq*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
