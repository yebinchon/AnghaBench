; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_set_pvid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_vlan_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mtkswitch_softc.0*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque

@MA_OWNED = common dso_local global i32 0, align 4
@PPBV_VID_MASK = common dso_local global i32 0, align 4
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
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PPBV_VID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @PPBV_VID(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.mtkswitch_softc.0*, i32, i32)*, i32 (%struct.mtkswitch_softc.0*, i32, i32)** %17, align 8
  %19 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %20 = bitcast %struct.mtkswitch_softc* %19 to %struct.mtkswitch_softc.0*
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @MTKSWITCH_PPBV1(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 %18(%struct.mtkswitch_softc.0* %20, i32 %22, i32 %23)
  %25 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mtkswitch_softc.0*, i32, i32)*, i32 (%struct.mtkswitch_softc.0*, i32, i32)** %27, align 8
  %29 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %30 = bitcast %struct.mtkswitch_softc* %29 to %struct.mtkswitch_softc.0*
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MTKSWITCH_PPBV2(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %28(%struct.mtkswitch_softc.0* %30, i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @PPBV_VID(i32) #1

declare dso_local i32 @MTKSWITCH_PPBV1(i32) #1

declare dso_local i32 @MTKSWITCH_PPBV2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
