; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_get_port_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_get_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@AR8X16_PORT_VLAN_DEST_PORTS_SHIFT = common dso_local global i32 0, align 4
@AR8X16_VLAN_MEMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_get_port_vlan(%struct.arswitch_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %9, i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %16 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @AR8X16_REG_PORT_VLAN(i32 %18)
  %20 = call i32 @arswitch_readreg(i32 %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AR8X16_PORT_VLAN_DEST_PORTS_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @AR8X16_VLAN_MEMBER, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  ret i32 0
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

declare dso_local i32 @AR8X16_REG_PORT_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
