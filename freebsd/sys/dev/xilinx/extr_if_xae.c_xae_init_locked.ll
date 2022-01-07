; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@XAE_TC = common dso_local global i32 0, align 4
@TC_TX = common dso_local global i32 0, align 4
@XAE_RCW1 = common dso_local global i32 0, align 4
@RCW1_RX = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@xae_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xae_softc*)* @xae_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_init_locked(%struct.xae_softc* %0) #0 {
  %2 = alloca %struct.xae_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.xae_softc* %0, %struct.xae_softc** %2, align 8
  %4 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %5 = call i32 @XAE_ASSERT_LOCKED(%struct.xae_softc* %4)
  %6 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %6, i32 0, i32 2
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %23 = call i32 @xae_setup_rxfilter(%struct.xae_softc* %22)
  %24 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %25 = load i32, i32* @XAE_TC, align 4
  %26 = load i32, i32* @TC_TX, align 4
  %27 = call i32 @WRITE4(%struct.xae_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %29 = load i32, i32* @XAE_RCW1, align 4
  %30 = load i32, i32* @RCW1_RX, align 4
  %31 = call i32 @WRITE4(%struct.xae_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %33 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mii_mediachg(i32 %34)
  %36 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %37 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %36, i32 0, i32 0
  %38 = load i32, i32* @hz, align 4
  %39 = load i32, i32* @xae_tick, align 4
  %40 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %41 = call i32 @callout_reset(i32* %37, i32 %38, i32 %39, %struct.xae_softc* %40)
  br label %42

42:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @XAE_ASSERT_LOCKED(%struct.xae_softc*) #1

declare dso_local i32 @xae_setup_rxfilter(%struct.xae_softc*) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @mii_mediachg(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.xae_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
