; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_port_vlan_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_port_vlan_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.mtkswitch_softc.0*, i32, i32*)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.TYPE_5__ = type { i32, i32, i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@MTKSWITCH_SGC2 = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_DOUBLE_TAG = common dso_local global i32 0, align 4
@MTKSWITCH_POC2 = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_STRIPTAG = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, %struct.TYPE_5__*)* @mtkswitch_port_vlan_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_port_vlan_get(%struct.mtkswitch_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %7 = load i32, i32* @MA_NOTOWNED, align 4
  %8 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %6, i32 %7)
  %9 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %10 = call i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc* %9)
  %11 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mtkswitch_softc.0*, i32, i32*)*, i32 (%struct.mtkswitch_softc.0*, i32, i32*)** %13, align 8
  %15 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %16 = bitcast %struct.mtkswitch_softc* %15 to %struct.mtkswitch_softc.0*
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = call i32 %14(%struct.mtkswitch_softc.0* %16, i32 %19, i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %26 = load i32, i32* @MTKSWITCH_SGC2, align 4
  %27 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SGC2_DOUBLE_TAG_PORT(i32 %31)
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @ETHERSWITCH_PORT_DOUBLE_TAG, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %43 = load i32, i32* @MTKSWITCH_POC2, align 4
  %44 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @POC2_UNTAG_PORT(i32 %48)
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* @ETHERSWITCH_PORT_STRIPTAG, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %64

58:                                               ; preds = %41
  %59 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %66 = call i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc* %65)
  ret i32 0
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_LOCK(%struct.mtkswitch_softc*) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @SGC2_DOUBLE_TAG_PORT(i32) #1

declare dso_local i32 @POC2_UNTAG_PORT(i32) #1

declare dso_local i32 @MTKSWITCH_UNLOCK(%struct.mtkswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
