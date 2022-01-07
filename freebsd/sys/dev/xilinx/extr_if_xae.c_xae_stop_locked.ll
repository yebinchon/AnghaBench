; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@XAE_TC = common dso_local global i32 0, align 4
@TC_TX = common dso_local global i32 0, align 4
@XAE_RCW1 = common dso_local global i32 0, align 4
@RCW1_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xae_softc*)* @xae_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_stop_locked(%struct.xae_softc* %0) #0 {
  %2 = alloca %struct.xae_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.xae_softc* %0, %struct.xae_softc** %2, align 8
  %5 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %6 = call i32 @XAE_ASSERT_LOCKED(%struct.xae_softc* %5)
  %7 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %8 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %19 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %18, i32 0, i32 0
  %20 = call i32 @callout_stop(i32* %19)
  %21 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %22 = load i32, i32* @XAE_TC, align 4
  %23 = call i32 @READ4(%struct.xae_softc* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @TC_TX, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %29 = load i32, i32* @XAE_TC, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WRITE4(%struct.xae_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %33 = load i32, i32* @XAE_RCW1, align 4
  %34 = call i32 @READ4(%struct.xae_softc* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @RCW1_RX, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.xae_softc*, %struct.xae_softc** %2, align 8
  %40 = load i32, i32* @XAE_RCW1, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @WRITE4(%struct.xae_softc* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @XAE_ASSERT_LOCKED(%struct.xae_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @READ4(%struct.xae_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
