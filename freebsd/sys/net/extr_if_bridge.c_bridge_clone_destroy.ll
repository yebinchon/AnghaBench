; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.bridge_softc* }
%struct.bridge_softc = type { i32, i32, i32, i32 }
%struct.bridge_iflist = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@sc_list = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @bridge_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.bridge_softc*, align 8
  %4 = alloca %struct.bridge_iflist*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 1
  %7 = load %struct.bridge_softc*, %struct.bridge_softc** %6, align 8
  store %struct.bridge_softc* %7, %struct.bridge_softc** %3, align 8
  %8 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %9 = call i32 @BRIDGE_LOCK(%struct.bridge_softc* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = call i32 @bridge_stop(%struct.ifnet* %10, i32 1)
  %12 = load i32, i32* @IFF_UP, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %23, %1
  %19 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %19, i32 0, i32 3
  %21 = call %struct.bridge_iflist* @LIST_FIRST(i32* %20)
  store %struct.bridge_iflist* %21, %struct.bridge_iflist** %4, align 8
  %22 = icmp ne %struct.bridge_iflist* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %25 = load %struct.bridge_iflist*, %struct.bridge_iflist** %4, align 8
  %26 = call i32 @bridge_delete_member(%struct.bridge_softc* %24, %struct.bridge_iflist* %25, i32 0)
  br label %18

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %33, %27
  %29 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %30 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %29, i32 0, i32 2
  %31 = call %struct.bridge_iflist* @LIST_FIRST(i32* %30)
  store %struct.bridge_iflist* %31, %struct.bridge_iflist** %4, align 8
  %32 = icmp ne %struct.bridge_iflist* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %35 = load %struct.bridge_iflist*, %struct.bridge_iflist** %4, align 8
  %36 = call i32 @bridge_delete_span(%struct.bridge_softc* %34, %struct.bridge_iflist* %35)
  br label %28

37:                                               ; preds = %28
  %38 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %39 = call i32 @bridge_rtable_fini(%struct.bridge_softc* %38)
  %40 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %41 = call i32 @BRIDGE_UNLOCK(%struct.bridge_softc* %40)
  %42 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %42, i32 0, i32 1
  %44 = call i32 @callout_drain(i32* %43)
  %45 = call i32 (...) @BRIDGE_LIST_LOCK()
  %46 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %47 = load i32, i32* @sc_list, align 4
  %48 = call i32 @LIST_REMOVE(%struct.bridge_softc* %46, i32 %47)
  %49 = call i32 (...) @BRIDGE_LIST_UNLOCK()
  %50 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %50, i32 0, i32 0
  %52 = call i32 @bstp_detach(i32* %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %54 = call i32 @ether_ifdetach(%struct.ifnet* %53)
  %55 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %56 = call i32 @if_free(%struct.ifnet* %55)
  %57 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %58 = call i32 @BRIDGE_LOCK_DESTROY(%struct.bridge_softc* %57)
  %59 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = call i32 @free(%struct.bridge_softc* %59, i32 %60)
  ret void
}

declare dso_local i32 @BRIDGE_LOCK(%struct.bridge_softc*) #1

declare dso_local i32 @bridge_stop(%struct.ifnet*, i32) #1

declare dso_local %struct.bridge_iflist* @LIST_FIRST(i32*) #1

declare dso_local i32 @bridge_delete_member(%struct.bridge_softc*, %struct.bridge_iflist*, i32) #1

declare dso_local i32 @bridge_delete_span(%struct.bridge_softc*, %struct.bridge_iflist*) #1

declare dso_local i32 @bridge_rtable_fini(%struct.bridge_softc*) #1

declare dso_local i32 @BRIDGE_UNLOCK(%struct.bridge_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @BRIDGE_LIST_LOCK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.bridge_softc*, i32) #1

declare dso_local i32 @BRIDGE_LIST_UNLOCK(...) #1

declare dso_local i32 @bstp_detach(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @BRIDGE_LOCK_DESTROY(%struct.bridge_softc*) #1

declare dso_local i32 @free(%struct.bridge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
