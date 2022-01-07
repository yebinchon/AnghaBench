; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8316.c_ar8316_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8316.c_ar8316_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ar8316_hw_setup = common dso_local global i32 0, align 4
@ar8316_hw_global_setup = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOUBLE_TAG = common dso_local global i32 0, align 4
@AR8X16_MAX_VLANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8316_attach(%struct.arswitch_softc* %0) #0 {
  %2 = alloca %struct.arswitch_softc*, align 8
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %2, align 8
  %3 = load i32, i32* @ar8316_hw_setup, align 4
  %4 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %5 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @ar8316_hw_global_setup, align 4
  %8 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %9 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %12 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ETHERSWITCH_VLAN_DOUBLE_TAG, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %17 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @AR8X16_MAX_VLANS, align 4
  %20 = load %struct.arswitch_softc*, %struct.arswitch_softc** %2, align 8
  %21 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
