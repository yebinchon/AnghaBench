; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64 }
%struct.lagg_softc = type { i32, i32, i32, i32, i32 }
%struct.lagg_port = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@vlan_config = common dso_local global i32 0, align 4
@vlan_unconfig = common dso_local global i32 0, align 4
@V_lagg_list = common dso_local global i32 0, align 4
@lagg_softc = common dso_local global i32 0, align 4
@sc_entries = common dso_local global i32 0, align 4
@M_LAGG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @lagg_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lagg_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lagg_softc*, align 8
  %4 = alloca %struct.lagg_port*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.lagg_softc*
  store %struct.lagg_softc* %8, %struct.lagg_softc** %3, align 8
  %9 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %10 = call i32 @LAGG_XLOCK(%struct.lagg_softc* %9)
  %11 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %12 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %14 = call i32 @lagg_stop(%struct.lagg_softc* %13)
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @vlan_config, align 4
  %22 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %23 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EVENTHANDLER_DEREGISTER(i32 %21, i32 %24)
  %26 = load i32, i32* @vlan_unconfig, align 4
  %27 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %28 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EVENTHANDLER_DEREGISTER(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %36, %1
  %32 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %33 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %32, i32 0, i32 2
  %34 = call %struct.lagg_port* @CK_SLIST_FIRST(i32* %33)
  store %struct.lagg_port* %34, %struct.lagg_port** %4, align 8
  %35 = icmp ne %struct.lagg_port* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.lagg_port*, %struct.lagg_port** %4, align 8
  %38 = call i32 @lagg_port_destroy(%struct.lagg_port* %37, i32 1)
  br label %31

39:                                               ; preds = %31
  %40 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %41 = call i32 @lagg_proto_detach(%struct.lagg_softc* %40)
  %42 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %43 = call i32 @LAGG_XUNLOCK(%struct.lagg_softc* %42)
  %44 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %45 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %44, i32 0, i32 1
  %46 = call i32 @ifmedia_removeall(i32* %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %48 = call i32 @ether_ifdetach(%struct.ifnet* %47)
  %49 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %50 = call i32 @if_free(%struct.ifnet* %49)
  %51 = call i32 (...) @LAGG_LIST_LOCK()
  %52 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %53 = load i32, i32* @lagg_softc, align 4
  %54 = load i32, i32* @sc_entries, align 4
  %55 = call i32 @SLIST_REMOVE(i32* @V_lagg_list, %struct.lagg_softc* %52, i32 %53, i32 %54)
  %56 = call i32 (...) @LAGG_LIST_UNLOCK()
  %57 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %58 = call i32 @LAGG_SX_DESTROY(%struct.lagg_softc* %57)
  %59 = load %struct.lagg_softc*, %struct.lagg_softc** %3, align 8
  %60 = load i32, i32* @M_LAGG, align 4
  %61 = call i32 @free(%struct.lagg_softc* %59, i32 %60)
  ret void
}

declare dso_local i32 @LAGG_XLOCK(%struct.lagg_softc*) #1

declare dso_local i32 @lagg_stop(%struct.lagg_softc*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local %struct.lagg_port* @CK_SLIST_FIRST(i32*) #1

declare dso_local i32 @lagg_port_destroy(%struct.lagg_port*, i32) #1

declare dso_local i32 @lagg_proto_detach(%struct.lagg_softc*) #1

declare dso_local i32 @LAGG_XUNLOCK(%struct.lagg_softc*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @LAGG_LIST_LOCK(...) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.lagg_softc*, i32, i32) #1

declare dso_local i32 @LAGG_LIST_UNLOCK(...) #1

declare dso_local i32 @LAGG_SX_DESTROY(%struct.lagg_softc*) #1

declare dso_local i32 @free(%struct.lagg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
