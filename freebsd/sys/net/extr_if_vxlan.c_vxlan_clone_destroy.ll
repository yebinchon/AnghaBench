; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vxlan_softc* }
%struct.vxlan_softc = type { i32, i32 }

@M_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @vxlan_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.vxlan_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 0
  %6 = load %struct.vxlan_softc*, %struct.vxlan_softc** %5, align 8
  store %struct.vxlan_softc* %6, %struct.vxlan_softc** %3, align 8
  %7 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %8 = call i32 @vxlan_teardown(%struct.vxlan_softc* %7)
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %10 = call i32 @vxlan_ftable_flush(%struct.vxlan_softc* %9, i32 1)
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = call i32 @ether_ifdetach(%struct.ifnet* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = call i32 @if_free(%struct.ifnet* %13)
  %15 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %15, i32 0, i32 1
  %17 = call i32 @ifmedia_removeall(i32* %16)
  %18 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %19 = call i32 @vxlan_ftable_fini(%struct.vxlan_softc* %18)
  %20 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %21 = call i32 @vxlan_sysctl_destroy(%struct.vxlan_softc* %20)
  %22 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %23 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %22, i32 0, i32 0
  %24 = call i32 @rm_destroy(i32* %23)
  %25 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %26 = load i32, i32* @M_VXLAN, align 4
  %27 = call i32 @free(%struct.vxlan_softc* %25, i32 %26)
  ret void
}

declare dso_local i32 @vxlan_teardown(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_ftable_flush(%struct.vxlan_softc*, i32) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @vxlan_ftable_fini(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_sysctl_destroy(%struct.vxlan_softc*) #1

declare dso_local i32 @rm_destroy(i32*) #1

declare dso_local i32 @free(%struct.vxlan_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
