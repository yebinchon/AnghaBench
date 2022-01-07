; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_port_vlan_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_port_vlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.mtkswitch_softc.0*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.TYPE_5__ = type { i32, i32, i32 }

@ETHERSWITCH_PORT_DOUBLE_TAG = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_STRIPTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, %struct.TYPE_5__*)* @mtkswitch_port_vlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_port_vlan_setup(%struct.mtkswitch_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ETHERSWITCH_PORT_DOUBLE_TAG, align 4
  %11 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %21 = load i32, i32* @MA_NOTOWNED, align 4
  %22 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %20, i32 %21)
  %23 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %24 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %19
  %30 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %31 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mtkswitch_softc.0*, i32, i32)*, i32 (%struct.mtkswitch_softc.0*, i32, i32)** %32, align 8
  %34 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %35 = bitcast %struct.mtkswitch_softc* %34 to %struct.mtkswitch_softc.0*
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %33(%struct.mtkswitch_softc.0* %35, i32 %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %47 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %19
  %51 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %52 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %45, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
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
