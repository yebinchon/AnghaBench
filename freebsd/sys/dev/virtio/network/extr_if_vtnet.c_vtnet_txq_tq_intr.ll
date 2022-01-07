; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_tq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_txq_tq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.vtnet_txq = type { %struct.vtnet_softc* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vtnet_txq_tq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_txq_tq_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtnet_softc*, align 8
  %6 = alloca %struct.vtnet_txq*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.vtnet_txq*
  store %struct.vtnet_txq* %9, %struct.vtnet_txq** %6, align 8
  %10 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %11 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %10, i32 0, i32 0
  %12 = load %struct.vtnet_softc*, %struct.vtnet_softc** %11, align 8
  store %struct.vtnet_softc* %12, %struct.vtnet_softc** %5, align 8
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %14 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %13, i32 0, i32 0
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %7, align 8
  %16 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %17 = call i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq* %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %26 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %25)
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %29 = call i32 @vtnet_txq_eof(%struct.vtnet_txq* %28)
  %30 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %31 = call i32 @vtnet_txq_start(%struct.vtnet_txq* %30)
  %32 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %33 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %32)
  br label %34

34:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @vtnet_txq_eof(%struct.vtnet_txq*) #1

declare dso_local i32 @vtnet_txq_start(%struct.vtnet_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
