; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_set_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_set_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.e6000sw_softc = type { i32, i32 }

@SA_XLOCKED = common dso_local global i32 0, align 4
@etherswitch_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@E6000SW_NUM_VLANS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e6000sw_softc*, i32)* @e6000sw_set_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_set_vlan_mode(%struct.e6000sw_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e6000sw_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.e6000sw_softc* %0, %struct.e6000sw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %4, align 8
  %7 = load i32, i32* @SA_XLOCKED, align 4
  %8 = call i32 @E6000SW_LOCK_ASSERT(%struct.e6000sw_softc* %6, i32 %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %24 [
    i32 128, label %10
    i32 129, label %18
  ]

10:                                               ; preds = %2
  %11 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %4, align 8
  %12 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %11, i32 0, i32 0
  store i32 128, i32* %12, align 4
  %13 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %4, align 8
  %14 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @etherswitch_info, i32 0, i32 0), align 4
  %16 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %4, align 8
  %17 = call i32 @e6000sw_init_vlan(%struct.e6000sw_softc* %16)
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %4, align 8
  %20 = getelementptr inbounds %struct.e6000sw_softc, %struct.e6000sw_softc* %19, i32 0, i32 0
  store i32 129, i32* %20, align 4
  %21 = load i32, i32* @E6000SW_NUM_VLANS, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @etherswitch_info, i32 0, i32 0), align 4
  %22 = load %struct.e6000sw_softc*, %struct.e6000sw_softc** %4, align 8
  %23 = call i32 @e6000sw_init_vlan(%struct.e6000sw_softc* %22)
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %18, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @E6000SW_LOCK_ASSERT(%struct.e6000sw_softc*, i32) #1

declare dso_local i32 @e6000sw_init_vlan(%struct.e6000sw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
