; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.arswitch_softc.0*)* }
%struct.arswitch_softc.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, i32)* @arswitch_set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_set_vlan_mode(%struct.arswitch_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %8 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %6, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %16
  %19 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %20 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %19, i32 0, i32 0
  store i32 129, i32* %20, align 8
  br label %27

21:                                               ; preds = %16
  %22 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %23 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %22, i32 0, i32 0
  store i32 128, i32* %23, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %26 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %21, %18
  %28 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %29 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.arswitch_softc.0*)*, i32 (%struct.arswitch_softc.0*)** %30, align 8
  %32 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %33 = bitcast %struct.arswitch_softc* %32 to %struct.arswitch_softc.0*
  %34 = call i32 %31(%struct.arswitch_softc.0* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
