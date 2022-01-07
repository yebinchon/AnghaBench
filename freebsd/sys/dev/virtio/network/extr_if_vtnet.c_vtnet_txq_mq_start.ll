; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_mq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_mq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vtnet_softc* }
%struct.vtnet_softc = type { i32, %struct.vtnet_txq* }
%struct.vtnet_txq = type { i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@curcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @vtnet_txq_mq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_txq_mq_start(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.vtnet_softc*, align 8
  %6 = alloca %struct.vtnet_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load %struct.vtnet_softc*, %struct.vtnet_softc** %11, align 8
  store %struct.vtnet_softc* %12, %struct.vtnet_softc** %5, align 8
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %14 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %16)
  %18 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @curcpu, align 4
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %33 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %32, i32 0, i32 1
  %34 = load %struct.vtnet_txq*, %struct.vtnet_txq** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %34, i64 %36
  store %struct.vtnet_txq* %37, %struct.vtnet_txq** %6, align 8
  %38 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %39 = call i64 @VTNET_TXQ_TRYLOCK(%struct.vtnet_txq* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = call i32 @vtnet_txq_mq_start_locked(%struct.vtnet_txq* %42, %struct.mbuf* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %46 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %45)
  br label %60

47:                                               ; preds = %31
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %50 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %53 = call i32 @drbr_enqueue(%struct.ifnet* %48, i32 %51, %struct.mbuf* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %55 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %58 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %57, i32 0, i32 0
  %59 = call i32 @taskqueue_enqueue(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %47, %41
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i64 @VTNET_TXQ_TRYLOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @vtnet_txq_mq_start_locked(%struct.vtnet_txq*, %struct.mbuf*) #1

declare dso_local i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
