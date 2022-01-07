; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_get_pvid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_get_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PVID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32, i32*)* @mtkswitch_vlan_get_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_vlan_get_pvid(%struct.mtkswitch_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %7, i32 %8)
  %10 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @MTKSWITCH_PVID(i32 %11)
  %13 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %10, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PVID_OFF(i32 %14)
  %16 = ashr i32 %13, %15
  %17 = load i32, i32* @PVID_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_PVID(i32) #1

declare dso_local i32 @PVID_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
