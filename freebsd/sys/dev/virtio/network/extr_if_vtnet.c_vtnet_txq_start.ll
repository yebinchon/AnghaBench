; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_txq = type { i32, %struct.vtnet_softc* }
%struct.vtnet_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_txq*)* @vtnet_txq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_txq_start(%struct.vtnet_txq* %0) #0 {
  %2 = alloca %struct.vtnet_txq*, align 8
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.vtnet_txq* %0, %struct.vtnet_txq** %2, align 8
  %5 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %6 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %5, i32 0, i32 1
  %7 = load %struct.vtnet_softc*, %struct.vtnet_softc** %6, align 8
  store %struct.vtnet_softc* %7, %struct.vtnet_softc** %3, align 8
  %8 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %13 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @drbr_empty(%struct.ifnet* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.vtnet_txq*, %struct.vtnet_txq** %2, align 8
  %19 = call i32 @vtnet_txq_mq_start_locked(%struct.vtnet_txq* %18, i32* null)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @drbr_empty(%struct.ifnet*, i32) #1

declare dso_local i32 @vtnet_txq_mq_start_locked(%struct.vtnet_txq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
