; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_fail_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_fail_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.lagg_port = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lagg_softc*, %struct.mbuf*)* @lagg_fail_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_fail_start(%struct.lagg_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lagg_softc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lagg_port*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %8 = load %struct.lagg_softc*, %struct.lagg_softc** %4, align 8
  %9 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.lagg_port* @lagg_link_active(%struct.lagg_softc* %7, i32 %10)
  store %struct.lagg_port* %11, %struct.lagg_port** %6, align 8
  %12 = icmp eq %struct.lagg_port* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = call i32 @m_freem(%struct.mbuf* %14)
  %16 = load i32, i32* @ENETDOWN, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %19 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = call i32 @lagg_enqueue(i32 %20, %struct.mbuf* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.lagg_port* @lagg_link_active(%struct.lagg_softc*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @lagg_enqueue(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
