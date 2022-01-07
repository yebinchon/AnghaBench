; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_detach_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_detach_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { %struct.ifnet*, %struct.TYPE_2__ }
%struct.ifnet = type { i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfsync_detach_ifnet(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.pfsync_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.pfsync_softc*, %struct.pfsync_softc** @V_pfsyncif, align 8
  store %struct.pfsync_softc* %4, %struct.pfsync_softc** %3, align 8
  %5 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %6 = icmp eq %struct.pfsync_softc* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %10 = call i32 @PFSYNC_LOCK(%struct.pfsync_softc* %9)
  %11 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %12 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = icmp eq %struct.ifnet* %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %18 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @ip_mfilter_init(i32* %19)
  %21 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %22 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %25 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %24, i32 0, i32 0
  store %struct.ifnet* null, %struct.ifnet** %25, align 8
  br label %26

26:                                               ; preds = %16, %8
  %27 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %28 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %27)
  br label %29

29:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @PFSYNC_LOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @ip_mfilter_init(i32*) #1

declare dso_local i32 @PFSYNC_UNLOCK(%struct.pfsync_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
