; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_bmtphy.c_bmtphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_bmtphy.c_bmtphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32 }

@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @bmtphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmtphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 129, label %9
    i32 130, label %10
    i32 128, label %13
  ]

9:                                                ; preds = %3
  br label %20

10:                                               ; preds = %3
  %11 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %12 = call i32 @mii_phy_setmedia(%struct.mii_softc* %11)
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %15 = call i32 @mii_phy_tick(%struct.mii_softc* %14)
  %16 = load i32, i32* @EJUSTRETURN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %26

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %3, %19, %10, %9
  %21 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %22 = call i32 @PHY_STATUS(%struct.mii_softc* %21)
  %23 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mii_phy_update(%struct.mii_softc* %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %18
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_tick(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
