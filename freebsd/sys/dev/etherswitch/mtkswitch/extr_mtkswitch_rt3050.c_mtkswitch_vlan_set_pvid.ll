; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_set_pvid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_vlan_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PVID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32, i32)* @mtkswitch_vlan_set_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_vlan_set_pvid(%struct.mtkswitch_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %8, i32 %9)
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @MTKSWITCH_PVID(i32 %12)
  %14 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @PVID_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PVID_OFF(i32 %16)
  %18 = shl i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PVID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PVID_OFF(i32 %25)
  %27 = shl i32 %24, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MTKSWITCH_PVID(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc* %30, i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_PVID(i32) #1

declare dso_local i32 @PVID_OFF(i32) #1

declare dso_local i32 @MTKSWITCH_WRITE(%struct.mtkswitch_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
