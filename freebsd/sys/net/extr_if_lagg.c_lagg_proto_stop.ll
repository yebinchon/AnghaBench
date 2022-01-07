; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.lagg_softc*)* }
%struct.lagg_softc = type { i64 }

@lagg_protos = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lagg_softc*)* @lagg_proto_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lagg_proto_stop(%struct.lagg_softc* %0) #0 {
  %2 = alloca %struct.lagg_softc*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lagg_protos, align 8
  %4 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %5 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.lagg_softc*)*, i32 (%struct.lagg_softc*)** %8, align 8
  %10 = icmp ne i32 (%struct.lagg_softc*)* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lagg_protos, align 8
  %13 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %14 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.lagg_softc*)*, i32 (%struct.lagg_softc*)** %17, align 8
  %19 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %20 = call i32 %18(%struct.lagg_softc* %19)
  br label %21

21:                                               ; preds = %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
