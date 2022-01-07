; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.lagg_port = type { %struct.lagg_softc* }
%struct.lagg_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @lagg_port_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lagg_port_state(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lagg_port*, align 8
  %6 = alloca %struct.lagg_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lagg_port*
  store %struct.lagg_port* %10, %struct.lagg_port** %5, align 8
  store %struct.lagg_softc* null, %struct.lagg_softc** %6, align 8
  %11 = load %struct.lagg_port*, %struct.lagg_port** %5, align 8
  %12 = icmp ne %struct.lagg_port* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.lagg_port*, %struct.lagg_port** %5, align 8
  %15 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %14, i32 0, i32 0
  %16 = load %struct.lagg_softc*, %struct.lagg_softc** %15, align 8
  store %struct.lagg_softc* %16, %struct.lagg_softc** %6, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %19 = icmp eq %struct.lagg_softc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %31

21:                                               ; preds = %17
  %22 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %23 = call i32 @LAGG_XLOCK(%struct.lagg_softc* %22)
  %24 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %25 = call i32 @lagg_linkstate(%struct.lagg_softc* %24)
  %26 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %27 = load %struct.lagg_port*, %struct.lagg_port** %5, align 8
  %28 = call i32 @lagg_proto_linkstate(%struct.lagg_softc* %26, %struct.lagg_port* %27)
  %29 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %30 = call i32 @LAGG_XUNLOCK(%struct.lagg_softc* %29)
  br label %31

31:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @LAGG_XLOCK(%struct.lagg_softc*) #1

declare dso_local i32 @lagg_linkstate(%struct.lagg_softc*) #1

declare dso_local i32 @lagg_proto_linkstate(%struct.lagg_softc*, %struct.lagg_port*) #1

declare dso_local i32 @LAGG_XUNLOCK(%struct.lagg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
