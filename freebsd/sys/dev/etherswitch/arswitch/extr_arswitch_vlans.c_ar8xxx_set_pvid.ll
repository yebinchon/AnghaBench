; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_set_pvid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_set_pvid(%struct.arswitch_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %7, i32 %8)
  %10 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %11 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @AR8X16_REG_PORT_VLAN(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @arswitch_modifyreg(i32 %12, i32 %14, i32 4095, i32 %15)
  ret i32 %16
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @arswitch_modifyreg(i32, i32, i32, i32) #1

declare dso_local i32 @AR8X16_REG_PORT_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
