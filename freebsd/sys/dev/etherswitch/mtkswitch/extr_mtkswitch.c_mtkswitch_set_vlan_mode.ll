; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.mtkswitch_softc.0*)* }
%struct.mtkswitch_softc.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32)* @mtkswitch_set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_set_vlan_mode(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %8 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %6, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mtkswitch_softc.0*)*, i32 (%struct.mtkswitch_softc.0*)** %22, align 8
  %24 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %25 = bitcast %struct.mtkswitch_softc* %24 to %struct.mtkswitch_softc.0*
  %26 = call i32 %23(%struct.mtkswitch_softc.0* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
