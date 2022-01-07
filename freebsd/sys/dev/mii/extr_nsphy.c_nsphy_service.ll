; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphy.c_nsphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphy.c_nsphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32 }

@MII_NSPHY_PCR = common dso_local global i32 0, align 4
@PCR_LED4MODE = common dso_local global i32 0, align 4
@PCR_CIMDIS = common dso_local global i32 0, align 4
@PCR_FLINK100 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fxp\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @nsphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %44 [
    i32 129, label %10
    i32 130, label %11
    i32 128, label %37
  ]

10:                                               ; preds = %3
  br label %44

11:                                               ; preds = %3
  %12 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %13 = load i32, i32* @MII_NSPHY_PCR, align 4
  %14 = call i32 @PHY_READ(%struct.mii_softc* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @PCR_LED4MODE, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @PCR_CIMDIS, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @PCR_FLINK100, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, 1280
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %27 = call i32 @mii_phy_mac_match(%struct.mii_softc* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %31 = load i32, i32* @MII_NSPHY_PCR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @PHY_WRITE(%struct.mii_softc* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %11
  %35 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %36 = call i32 @mii_phy_setmedia(%struct.mii_softc* %35)
  br label %44

37:                                               ; preds = %3
  %38 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %39 = call i32 @mii_phy_tick(%struct.mii_softc* %38)
  %40 = load i32, i32* @EJUSTRETURN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %50

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %3, %43, %34, %10
  %45 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %46 = call i32 @PHY_STATUS(%struct.mii_softc* %45)
  %47 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mii_phy_update(%struct.mii_softc* %47, i32 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %42
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_mac_match(%struct.mii_softc*, i8*) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

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
