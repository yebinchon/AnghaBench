; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rxq_tq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_rxq_tq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.vtnet_rxq = type { i32, i32, %struct.TYPE_2__, %struct.vtnet_softc* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vtnet_rxq_tq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_rxq_tq_intr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtnet_softc*, align 8
  %6 = alloca %struct.vtnet_rxq*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.vtnet_rxq*
  store %struct.vtnet_rxq* %10, %struct.vtnet_rxq** %6, align 8
  %11 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %12 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %11, i32 0, i32 3
  %13 = load %struct.vtnet_softc*, %struct.vtnet_softc** %12, align 8
  store %struct.vtnet_softc* %13, %struct.vtnet_softc** %5, align 8
  %14 = load %struct.vtnet_softc*, %struct.vtnet_softc** %5, align 8
  %15 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %14, i32 0, i32 0
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  %17 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %18 = call i32 @VTNET_RXQ_LOCK(%struct.vtnet_rxq* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %27 = call i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq* %26)
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %30 = call i32 @vtnet_rxq_eof(%struct.vtnet_rxq* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %35 = call i64 @vtnet_rxq_enable_intr(%struct.vtnet_rxq* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %42 = call i32 @vtnet_rxq_disable_intr(%struct.vtnet_rxq* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %45 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %50 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %53 = getelementptr inbounds %struct.vtnet_rxq, %struct.vtnet_rxq* %52, i32 0, i32 0
  %54 = call i32 @taskqueue_enqueue(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %43, %33
  %56 = load %struct.vtnet_rxq*, %struct.vtnet_rxq** %6, align 8
  %57 = call i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq* %56)
  br label %58

58:                                               ; preds = %55, %25
  ret void
}

declare dso_local i32 @VTNET_RXQ_LOCK(%struct.vtnet_rxq*) #1

declare dso_local i32 @VTNET_RXQ_UNLOCK(%struct.vtnet_rxq*) #1

declare dso_local i32 @vtnet_rxq_eof(%struct.vtnet_rxq*) #1

declare dso_local i64 @vtnet_rxq_enable_intr(%struct.vtnet_rxq*) #1

declare dso_local i32 @vtnet_rxq_disable_intr(%struct.vtnet_rxq*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
