; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_lb_port_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_lb_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { %struct.lagg_softc* }
%struct.lagg_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lagg_port*)* @lagg_lb_port_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lagg_lb_port_destroy(%struct.lagg_port* %0) #0 {
  %2 = alloca %struct.lagg_port*, align 8
  %3 = alloca %struct.lagg_softc*, align 8
  store %struct.lagg_port* %0, %struct.lagg_port** %2, align 8
  %4 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %5 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %4, i32 0, i32 0
  %6 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  store %struct.lagg_softc* %6, %struct.lagg_softc** %3, align 8
  %7 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %8 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %9 = call i32 @lagg_lb_porttable(%struct.lagg_softc* %7, %struct.lagg_port* %8)
  ret void
}

declare dso_local i32 @lagg_lb_porttable(%struct.lagg_softc*, %struct.lagg_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
