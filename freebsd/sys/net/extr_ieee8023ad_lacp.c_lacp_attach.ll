; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { %struct.TYPE_2__*, %struct.lacp_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.lacp_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.lagg_softc* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@lacp_default_strict_mode = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lacp_attach(%struct.lagg_softc* %0) #0 {
  %2 = alloca %struct.lagg_softc*, align 8
  %3 = alloca %struct.lacp_softc*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %2, align 8
  %4 = load i32, i32* @M_DEVBUF, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.lacp_softc* @malloc(i32 48, i32 %4, i32 %7)
  store %struct.lacp_softc* %8, %struct.lacp_softc** %3, align 8
  %9 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %10 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %11 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %10, i32 0, i32 1
  store %struct.lacp_softc* %9, %struct.lacp_softc** %11, align 8
  %12 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %13 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %14 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %13, i32 0, i32 8
  store %struct.lagg_softc* %12, %struct.lagg_softc** %14, align 8
  %15 = call i32 (...) @m_ether_tcpip_hash_init()
  %16 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %17 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %19 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %18, i32 0, i32 6
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @lacp_default_strict_mode, align 4
  %21 = call i32 @VNET(i32 %20)
  %22 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %25 = call i32 @LACP_LOCK_INIT(%struct.lacp_softc* %24)
  %26 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %26, i32 0, i32 4
  %28 = call i32 @TAILQ_INIT(i32* %27)
  %29 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %30 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %29, i32 0, i32 3
  %31 = call i32 @LIST_INIT(i32* %30)
  %32 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %33 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %32, i32 0, i32 2
  %34 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %35 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %34, i32 0, i32 0
  %36 = call i32 @callout_init_mtx(i32* %33, i32* %35, i32 0)
  %37 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %38 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %37, i32 0, i32 1
  %39 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %40 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %39, i32 0, i32 0
  %41 = call i32 @callout_init_mtx(i32* %38, i32* %40, i32 0)
  %42 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %43 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %52 = call i32 @lacp_init(%struct.lagg_softc* %51)
  br label %53

53:                                               ; preds = %50, %1
  ret void
}

declare dso_local %struct.lacp_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @m_ether_tcpip_hash_init(...) #1

declare dso_local i32 @VNET(i32) #1

declare dso_local i32 @LACP_LOCK_INIT(%struct.lacp_softc*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @lacp_init(%struct.lagg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
