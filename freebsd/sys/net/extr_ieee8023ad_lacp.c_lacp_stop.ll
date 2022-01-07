; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { i32 }
%struct.lacp_softc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lacp_stop(%struct.lagg_softc* %0) #0 {
  %2 = alloca %struct.lagg_softc*, align 8
  %3 = alloca %struct.lacp_softc*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %2, align 8
  %4 = load %struct.lagg_softc*, %struct.lagg_softc** %2, align 8
  %5 = call %struct.lacp_softc* @LACP_SOFTC(%struct.lagg_softc* %4)
  store %struct.lacp_softc* %5, %struct.lacp_softc** %3, align 8
  %6 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %7 = call i32 @LACP_LOCK(%struct.lacp_softc* %6)
  %8 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %9 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %8, i32 0, i32 1
  %10 = call i32 @callout_stop(i32* %9)
  %11 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %11, i32 0, i32 0
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load %struct.lacp_softc*, %struct.lacp_softc** %3, align 8
  %15 = call i32 @LACP_UNLOCK(%struct.lacp_softc* %14)
  ret void
}

declare dso_local %struct.lacp_softc* @LACP_SOFTC(%struct.lagg_softc*) #1

declare dso_local i32 @LACP_LOCK(%struct.lacp_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @LACP_UNLOCK(%struct.lacp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
