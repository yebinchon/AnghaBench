; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_eof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { i64, %struct.TYPE_4__, %struct.virtqueue* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.virtqueue = type { i32 }
%struct.vtnet_tx_header = type { %struct.mbuf* }
%struct.mbuf = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@M_MCAST = common dso_local global i32 0, align 4
@vtnet_tx_header_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_txq*)* @vtnet_txq_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_txq_eof(%struct.vtnet_txq* %0) #0 {
  %2 = alloca %struct.vtnet_txq*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vtnet_tx_header*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %2, align 8
  %7 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %8 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %7, i32 0, i32 2
  %9 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  store %struct.virtqueue* %9, %struct.virtqueue** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %11 = call i32 @VTNET_TXQ_LOCK_ASSERT(%struct.vtnet_txq* %10)
  br label %12

12:                                               ; preds = %50, %1
  %13 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %14 = call %struct.vtnet_tx_header* @virtqueue_dequeue(%struct.virtqueue* %13, i32* null)
  store %struct.vtnet_tx_header* %14, %struct.vtnet_tx_header** %4, align 8
  %15 = icmp ne %struct.vtnet_tx_header* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.vtnet_tx_header*, %struct.vtnet_tx_header** %4, align 8
  %18 = getelementptr inbounds %struct.vtnet_tx_header, %struct.vtnet_tx_header* %17, i32 0, i32 0
  %19 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  store %struct.mbuf* %19, %struct.mbuf** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %23 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %32 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @M_MCAST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %16
  %45 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %46 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %16
  %51 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %52 = call i32 @m_freem(%struct.mbuf* %51)
  %53 = load i32, i32* @vtnet_tx_header_zone, align 4
  %54 = load %struct.vtnet_tx_header*, %struct.vtnet_tx_header** %4, align 8
  %55 = call i32 @uma_zfree(i32 %53, %struct.vtnet_tx_header* %54)
  br label %12

56:                                               ; preds = %12
  %57 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %58 = call i64 @virtqueue_empty(%struct.virtqueue* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %62 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @VTNET_TXQ_LOCK_ASSERT(%struct.vtnet_txq*) #1

declare dso_local %struct.vtnet_tx_header* @virtqueue_dequeue(%struct.virtqueue*, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @uma_zfree(i32, %struct.vtnet_tx_header*) #1

declare dso_local i64 @virtqueue_empty(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
