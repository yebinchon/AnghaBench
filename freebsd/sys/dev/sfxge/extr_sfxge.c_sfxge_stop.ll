; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SFXGE_STARTED = common dso_local global i64 0, align 8
@SFXGE_REGISTERED = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*)* @sfxge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_stop(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %3 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %4 = call i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc* %3)
  %5 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SFXGE_STARTED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load i64, i64* @SFXGE_REGISTERED, align 8
  %13 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %16 = call i32 @sfxge_tx_stop(%struct.sfxge_softc* %15)
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %18 = call i32 @sfxge_rx_stop(%struct.sfxge_softc* %17)
  %19 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %20 = call i32 @sfxge_port_stop(%struct.sfxge_softc* %19)
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %22 = call i32 @sfxge_ev_stop(%struct.sfxge_softc* %21)
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %24 = call i32 @sfxge_intr_stop(%struct.sfxge_softc* %23)
  %25 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %26 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @efx_nic_fini(i32 %27)
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_tx_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_rx_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_port_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_ev_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_intr_stop(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
