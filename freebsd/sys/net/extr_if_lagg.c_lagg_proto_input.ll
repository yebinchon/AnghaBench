; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mbuf* (%struct.lagg_softc*, %struct.lagg_port*, %struct.mbuf*)* }
%struct.lagg_softc = type { i64 }
%struct.lagg_port = type { i32 }
%struct.mbuf = type { i32 }

@lagg_protos = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.lagg_softc*, %struct.lagg_port*, %struct.mbuf*)* @lagg_proto_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @lagg_proto_input(%struct.lagg_softc* %0, %struct.lagg_port* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.lagg_softc*, align 8
  %5 = alloca %struct.lagg_port*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %4, align 8
  store %struct.lagg_port* %1, %struct.lagg_port** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lagg_protos, align 8
  %8 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %9 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mbuf* (%struct.lagg_softc*, %struct.lagg_port*, %struct.mbuf*)*, %struct.mbuf* (%struct.lagg_softc*, %struct.lagg_port*, %struct.mbuf*)** %12, align 8
  %14 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %15 = load %struct.lagg_port*, %struct.lagg_port** %5, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = call %struct.mbuf* %13(%struct.lagg_softc* %14, %struct.lagg_port* %15, %struct.mbuf* %16)
  ret %struct.mbuf* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
