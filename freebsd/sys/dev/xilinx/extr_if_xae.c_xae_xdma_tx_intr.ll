; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_xdma_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_xdma_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.xae_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @xae_xdma_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xae_xdma_tx_intr(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.xae_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.xae_softc*
  store %struct.xae_softc* %11, %struct.xae_softc** %6, align 8
  %12 = load %struct.xae_softc*, %struct.xae_softc** %6, align 8
  %13 = call i32 @XAE_LOCK(%struct.xae_softc* %12)
  %14 = load %struct.xae_softc*, %struct.xae_softc** %6, align 8
  %15 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %14, i32 0, i32 1
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  br label %17

17:                                               ; preds = %33, %2
  %18 = load %struct.xae_softc*, %struct.xae_softc** %6, align 8
  %19 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @xdma_dequeue_mbuf(i32 %20, %struct.mbuf** %8, %struct.TYPE_4__* %5)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %36

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %32 = call i32 @if_inc_counter(%struct.ifnet* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  br label %17

36:                                               ; preds = %24
  %37 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.xae_softc*, %struct.xae_softc** %6, align 8
  %44 = call i32 @XAE_UNLOCK(%struct.xae_softc* %43)
  ret i32 0
}

declare dso_local i32 @XAE_LOCK(%struct.xae_softc*) #1

declare dso_local i32 @xdma_dequeue_mbuf(i32, %struct.mbuf**, %struct.TYPE_4__*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @XAE_UNLOCK(%struct.xae_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
