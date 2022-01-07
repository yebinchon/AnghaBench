; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_invalidate_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_mt7620.c_mtkswitch_invalidate_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.mtkswitch_softc.1 = type opaque

@MTKSWITCH_VTCR = common dso_local global i32 0, align 4
@VTCR_BUSY = common dso_local global i32 0, align 4
@VTCR_FUNC_VID_INVALID = common dso_local global i32 0, align 4
@VTCR_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtkswitch_softc*, i32)* @mtkswitch_invalidate_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtkswitch_invalidate_vlan(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %17, %2
  %6 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %8, align 8
  %10 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %11 = bitcast %struct.mtkswitch_softc* %10 to %struct.mtkswitch_softc.0*
  %12 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %13 = call i32 %9(%struct.mtkswitch_softc.0* %11, i32 %12)
  %14 = load i32, i32* @VTCR_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %5

18:                                               ; preds = %5
  %19 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.mtkswitch_softc.1*, i32, i32)*, i32 (%struct.mtkswitch_softc.1*, i32, i32)** %21, align 8
  %23 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %24 = bitcast %struct.mtkswitch_softc* %23 to %struct.mtkswitch_softc.1*
  %25 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %26 = load i32, i32* @VTCR_BUSY, align 4
  %27 = load i32, i32* @VTCR_FUNC_VID_INVALID, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VTCR_VID_MASK, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  %33 = call i32 %22(%struct.mtkswitch_softc.1* %24, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %46, %18
  %35 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.mtkswitch_softc.0*, i32)*, i32 (%struct.mtkswitch_softc.0*, i32)** %37, align 8
  %39 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %40 = bitcast %struct.mtkswitch_softc* %39 to %struct.mtkswitch_softc.0*
  %41 = load i32, i32* @MTKSWITCH_VTCR, align 4
  %42 = call i32 %38(%struct.mtkswitch_softc.0* %40, i32 %41)
  %43 = load i32, i32* @VTCR_BUSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %34

47:                                               ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
