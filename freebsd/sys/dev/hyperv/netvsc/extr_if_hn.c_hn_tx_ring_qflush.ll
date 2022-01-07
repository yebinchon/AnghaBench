; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_tx_ring_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_tx_ring_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_tx_ring*)* @hn_tx_ring_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_tx_ring_qflush(%struct.hn_tx_ring* %0) #0 {
  %2 = alloca %struct.hn_tx_ring*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %2, align 8
  %4 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %5 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  br label %7

7:                                                ; preds = %13, %1
  %8 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %9 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mbuf* @buf_ring_dequeue_sc(i32 %10)
  store %struct.mbuf* %11, %struct.mbuf** %3, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = call i32 @m_freem(%struct.mbuf* %14)
  br label %7

16:                                               ; preds = %7
  %17 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %18 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mbuf* @buf_ring_dequeue_sc(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
