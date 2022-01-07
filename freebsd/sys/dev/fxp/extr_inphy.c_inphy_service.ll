; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_inphy.c_inphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_inphy.c_inphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @inphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 130, label %10
    i32 128, label %22
  ]

9:                                                ; preds = %3
  br label %29

10:                                               ; preds = %3
  %11 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @if_getflags(i32 %13)
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %29

19:                                               ; preds = %10
  %20 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %21 = call i32 @mii_phy_setmedia(%struct.mii_softc* %20)
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %24 = call i32 @mii_phy_tick(%struct.mii_softc* %23)
  %25 = load i32, i32* @EJUSTRETURN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %35

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %3, %28, %19, %18, %9
  %30 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %31 = call i32 @PHY_STATUS(%struct.mii_softc* %30)
  %32 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mii_phy_update(%struct.mii_softc* %32, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %27
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @if_getflags(i32) #1

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
