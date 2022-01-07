; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_proto_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.lagg_softc*)* }
%struct.lagg_softc = type { i64 }

@LAGG_PROTO_NONE = common dso_local global i64 0, align 8
@lagg_protos = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lagg_softc*)* @lagg_proto_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lagg_proto_detach(%struct.lagg_softc* %0) #0 {
  %2 = alloca %struct.lagg_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %2, align 8
  %4 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %5 = call i32 @LAGG_XLOCK_ASSERT(%struct.lagg_softc* %4)
  %6 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %7 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* @LAGG_PROTO_NONE, align 8
  %10 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %11 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lagg_protos, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.lagg_softc*)*, i32 (%struct.lagg_softc*)** %15, align 8
  %17 = icmp ne i32 (%struct.lagg_softc*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lagg_protos, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.lagg_softc*)*, i32 (%struct.lagg_softc*)** %22, align 8
  %24 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %25 = call i32 %23(%struct.lagg_softc* %24)
  br label %26

26:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @LAGG_XLOCK_ASSERT(%struct.lagg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
