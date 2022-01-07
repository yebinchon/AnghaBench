; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_port_vlan_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_port_vlan_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.mtkswitch_softc.0*, i32, i32*)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.TYPE_5__ = type { i64, i32, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, %struct.TYPE_5__*)* @mtkswitch_port_vlan_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_port_vlan_get(%struct.mtkswitch_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %6 = load i32, i32* @MA_NOTOWNED, align 4
  %7 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %5, i32 %6)
  %8 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %9 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %8)
  %10 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.mtkswitch_softc.0*, i32, i32*)*, i32 (%struct.mtkswitch_softc.0*, i32, i32*)** %12, align 8
  %14 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %15 = bitcast %struct.mtkswitch_softc* %14 to %struct.mtkswitch_softc.0*
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i32 %13(%struct.mtkswitch_softc.0* %15, i32 %18, i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %25 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %24)
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
