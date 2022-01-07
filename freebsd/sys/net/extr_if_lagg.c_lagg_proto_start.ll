; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.lagg_softc*, %struct.mbuf*)* }
%struct.lagg_softc = type { i64 }
%struct.mbuf = type { i32 }

@lagg_protos = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lagg_softc*, %struct.mbuf*)* @lagg_proto_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_proto_start(%struct.lagg_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.lagg_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lagg_protos, align 8
  %6 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %7 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.lagg_softc*, %struct.mbuf*)*, i32 (%struct.lagg_softc*, %struct.mbuf*)** %10, align 8
  %12 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = call i32 %11(%struct.lagg_softc* %12, %struct.mbuf* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
