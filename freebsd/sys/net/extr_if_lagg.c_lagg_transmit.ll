; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.lagg_softc = type { i64, i64 }

@LAGG_PROTO_NONE = common dso_local global i64 0, align 8
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CSUM_SND_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @lagg_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lagg_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lagg_softc*
  store %struct.lagg_softc* %11, %struct.lagg_softc** %6, align 8
  %12 = call i32 (...) @LAGG_RLOCK()
  %13 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %14 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LAGG_PROTO_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %20 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18, %2
  %24 = call i32 (...) @LAGG_RUNLOCK()
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = call i32 @m_freem(%struct.mbuf* %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %29 = call i32 @if_inc_counter(%struct.ifnet* %27, i32 %28, i32 1)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %18
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %34 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %32, %struct.mbuf* %33)
  %35 = load %struct.lagg_softc*, %struct.lagg_softc** %6, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = call i32 @lagg_proto_start(%struct.lagg_softc* %35, %struct.mbuf* %36)
  store i32 %37, i32* %7, align 4
  %38 = call i32 (...) @LAGG_RUNLOCK()
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %44 = call i32 @if_inc_counter(%struct.ifnet* %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @LAGG_RLOCK(...) #1

declare dso_local i32 @LAGG_RUNLOCK(...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @lagg_proto_start(%struct.lagg_softc*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
