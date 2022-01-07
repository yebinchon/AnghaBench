; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_fail_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_fail_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_softc = type { %struct.lagg_port*, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.lagg_port = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }

@V_lagg_failover_rx_all = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.lagg_softc*, %struct.lagg_port*, %struct.mbuf*)* @lagg_fail_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @lagg_fail_input(%struct.lagg_softc* %0, %struct.lagg_port* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.lagg_softc*, align 8
  %6 = alloca %struct.lagg_port*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.lagg_port*, align 8
  store %struct.lagg_softc* %0, %struct.lagg_softc** %5, align 8
  store %struct.lagg_port* %1, %struct.lagg_port** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %10 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %11 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %10, i32 0, i32 1
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %8, align 8
  %13 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %14 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %15 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %14, i32 0, i32 0
  %16 = load %struct.lagg_port*, %struct.lagg_port** %15, align 8
  %17 = icmp eq %struct.lagg_port* %13, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @V_lagg_failover_rx_all, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %3
  %22 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.ifnet* %22, %struct.ifnet** %25, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %26, %struct.mbuf** %4, align 8
  br label %55

27:                                               ; preds = %18
  %28 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %29 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %28, i32 0, i32 0
  %30 = load %struct.lagg_port*, %struct.lagg_port** %29, align 8
  %31 = call i32 @LAGG_PORTACTIVE(%struct.lagg_port* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %27
  %34 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %35 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %36 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %35, i32 0, i32 0
  %37 = load %struct.lagg_port*, %struct.lagg_port** %36, align 8
  %38 = call %struct.lagg_port* @lagg_link_active(%struct.lagg_softc* %34, %struct.lagg_port* %37)
  store %struct.lagg_port* %38, %struct.lagg_port** %9, align 8
  %39 = load %struct.lagg_port*, %struct.lagg_port** %9, align 8
  %40 = icmp eq %struct.lagg_port* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.lagg_port*, %struct.lagg_port** %9, align 8
  %43 = load %struct.lagg_port*, %struct.lagg_port** %6, align 8
  %44 = icmp eq %struct.lagg_port* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %33
  %46 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.ifnet* %46, %struct.ifnet** %49, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %50, %struct.mbuf** %4, align 8
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = call i32 @m_freem(%struct.mbuf* %53)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %55

55:                                               ; preds = %52, %45, %21
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %56
}

declare dso_local i32 @LAGG_PORTACTIVE(%struct.lagg_port*) #1

declare dso_local %struct.lagg_port* @lagg_link_active(%struct.lagg_softc*, %struct.lagg_port*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
