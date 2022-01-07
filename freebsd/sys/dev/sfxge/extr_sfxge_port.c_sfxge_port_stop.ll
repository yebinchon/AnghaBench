; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32*, %struct.sfxge_port }
%struct.sfxge_port = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SFXGE_PORT_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"port not started\00", align 1
@SFXGE_PORT_INITIALIZED = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EFX_LINK_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_port_stop(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_port*, align 8
  %4 = alloca i32*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %5 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %5, i32 0, i32 1
  store %struct.sfxge_port* %6, %struct.sfxge_port** %3, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %11 = call i32 @SFXGE_PORT_LOCK(%struct.sfxge_port* %10)
  %12 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SFXGE_PORT_STARTED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @SFXGE_PORT_INITIALIZED, align 8
  %20 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %21 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %23 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @B_TRUE, align 4
  %27 = call i32 @efx_mac_drain(i32* %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %30 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @B_FALSE, align 4
  %33 = call i32 @efx_mac_stats_periodic(i32* %28, i32* %31, i32 0, i32 %32)
  %34 = load i32, i32* @EFX_LINK_UNKNOWN, align 4
  %35 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %36 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @efx_port_fini(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @efx_filter_fini(i32* %39)
  %41 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %42 = call i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port* %41)
  ret void
}

declare dso_local i32 @SFXGE_PORT_LOCK(%struct.sfxge_port*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_mac_drain(i32*, i32) #1

declare dso_local i32 @efx_mac_stats_periodic(i32*, i32*, i32, i32) #1

declare dso_local i32 @efx_port_fini(i32*) #1

declare dso_local i32 @efx_filter_fini(i32*) #1

declare dso_local i32 @SFXGE_PORT_UNLOCK(%struct.sfxge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
