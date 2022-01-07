; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_tx_vq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_tx_vq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i64, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.vtnet_txq = type { i64, %struct.vtnet_softc* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NM_IRQ_PASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtnet_tx_vq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_tx_vq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.vtnet_txq*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtnet_txq*
  store %struct.vtnet_txq* %7, %struct.vtnet_txq** %4, align 8
  %8 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %9 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %8, i32 0, i32 1
  %10 = load %struct.vtnet_softc*, %struct.vtnet_softc** %9, align 8
  store %struct.vtnet_softc* %10, %struct.vtnet_softc** %3, align 8
  %11 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %11, i32 0, i32 1
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %15 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @__predict_false(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %26 = call i32 @vtnet_txq_disable_intr(%struct.vtnet_txq* %25)
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %29 = call i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq* %28)
  %30 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %38 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %37)
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %41 = call i32 @vtnet_txq_eof(%struct.vtnet_txq* %40)
  %42 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %43 = call i32 @vtnet_txq_start(%struct.vtnet_txq* %42)
  %44 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %45 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %44)
  br label %46

46:                                               ; preds = %39, %36, %24
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vtnet_txq_disable_intr(%struct.vtnet_txq*) #1

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
