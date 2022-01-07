; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_tx_start_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_tx_start_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.vtnet_txq* }
%struct.vtnet_txq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*)* @vtnet_tx_start_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_tx_start_all(%struct.vtnet_softc* %0) #0 {
  %2 = alloca %struct.vtnet_softc*, align 8
  %3 = alloca %struct.vtnet_txq*, align 8
  %4 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %2, align 8
  %5 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %6 = call i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc* %5)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.vtnet_softc*, %struct.vtnet_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %14, i32 0, i32 1
  %16 = load %struct.vtnet_txq*, %struct.vtnet_txq** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %16, i64 %18
  store %struct.vtnet_txq* %19, %struct.vtnet_txq** %3, align 8
  %20 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %21 = call i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq* %20)
  %22 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %23 = call i32 @vtnet_txq_start(%struct.vtnet_txq* %22)
  %24 = load %struct.vtnet_txq*, %struct.vtnet_txq** %3, align 8
  %25 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK_ASSERT(%struct.vtnet_softc*) #1

declare dso_local i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @vtnet_txq_start(%struct.vtnet_txq*) #1

declare dso_local i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
