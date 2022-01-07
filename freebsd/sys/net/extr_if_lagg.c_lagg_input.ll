; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.lagg_port* }
%struct.lagg_port = type { i64, %struct.lagg_softc* }
%struct.lagg_softc = type { i64, %struct.ifnet* }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LAGG_PROTO_NONE = common dso_local global i64 0, align 8
@IFF_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.ifnet*, %struct.mbuf*)* @lagg_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @lagg_input(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lagg_port*, align 8
  %7 = alloca %struct.lagg_softc*, align 8
  %8 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 2
  %11 = load %struct.lagg_port*, %struct.lagg_port** %10, align 8
  store %struct.lagg_port* %11, %struct.lagg_port** %6, align 8
  %12 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %13 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %12, i32 0, i32 1
  %14 = load %struct.lagg_softc*, %struct.lagg_softc** %13, align 8
  store %struct.lagg_softc* %14, %struct.lagg_softc** %7, align 8
  %15 = load %struct.lagg_softc*, %struct.lagg_softc** %7, align 8
  %16 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %8, align 8
  %18 = call i32 (...) @LAGG_RLOCK()
  %19 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %27 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.lagg_softc*, %struct.lagg_softc** %7, align 8
  %32 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LAGG_PROTO_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %25, %2
  %37 = call i32 (...) @LAGG_RUNLOCK()
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %63

40:                                               ; preds = %30
  %41 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %43 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %41, %struct.mbuf* %42)
  %44 = load %struct.lagg_softc*, %struct.lagg_softc** %7, align 8
  %45 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %47 = call %struct.mbuf* @lagg_proto_input(%struct.lagg_softc* %44, %struct.lagg_port* %45, %struct.mbuf* %46)
  store %struct.mbuf* %47, %struct.mbuf** %5, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %49 = icmp ne %struct.mbuf* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_MONITOR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = call i32 @m_freem(%struct.mbuf* %58)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %60

60:                                               ; preds = %57, %50, %40
  %61 = call i32 (...) @LAGG_RUNLOCK()
  %62 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %62, %struct.mbuf** %3, align 8
  br label %63

63:                                               ; preds = %60, %36
  %64 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %64
}

declare dso_local i32 @LAGG_RLOCK(...) #1

declare dso_local i32 @LAGG_RUNLOCK(...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @lagg_proto_input(%struct.lagg_softc*, %struct.lagg_port*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
