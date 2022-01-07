; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smcphy.c_smcphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_smcphy.c_smcphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@MII_ANEGTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @smcphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smcphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mii_softc*, align 8
  %5 = alloca %struct.mii_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifmedia_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %4, align 8
  store %struct.mii_data* %1, %struct.mii_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mii_data*, %struct.mii_data** %5, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %11, align 8
  store %struct.ifmedia_entry* %12, %struct.ifmedia_entry** %7, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %86 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %30
  ]

14:                                               ; preds = %3
  br label %86

15:                                               ; preds = %3
  %16 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %7, align 8
  %17 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IFM_SUBTYPE(i32 %18)
  switch i32 %19, label %26 [
    i32 131, label %20
  ]

20:                                               ; preds = %15
  %21 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %22 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %7, align 8
  %23 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @smcphy_auto(%struct.mii_softc* %21, i32 %24)
  br label %29

26:                                               ; preds = %15
  %27 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %28 = call i32 @mii_phy_setmedia(%struct.mii_softc* %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %86

30:                                               ; preds = %3
  %31 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %7, align 8
  %32 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IFM_SUBTYPE(i32 %33)
  %35 = icmp ne i32 %34, 131
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %86

37:                                               ; preds = %30
  %38 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %39 = load i32, i32* @MII_BMCR, align 4
  %40 = call i32 @PHY_READ(%struct.mii_softc* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @BMCR_ISO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %47 = load i32, i32* @MII_BMCR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @BMCR_ISO, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @PHY_WRITE(%struct.mii_softc* %46, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %55 = load i32, i32* @MII_BMSR, align 4
  %56 = call i32 @PHY_READ(%struct.mii_softc* %54, i32 %55)
  %57 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %58 = load i32, i32* @MII_BMSR, align 4
  %59 = call i32 @PHY_READ(%struct.mii_softc* %57, i32 %58)
  %60 = or i32 %56, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BMSR_LINK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  br label %86

68:                                               ; preds = %53
  %69 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @MII_ANEGTICKS, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %86

76:                                               ; preds = %68
  %77 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %78 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %80 = call i32 @PHY_RESET(%struct.mii_softc* %79)
  %81 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %82 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %7, align 8
  %83 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @smcphy_auto(%struct.mii_softc* %81, i32 %84)
  br label %86

86:                                               ; preds = %3, %76, %75, %65, %36, %29, %14
  %87 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %88 = call i32 @PHY_STATUS(%struct.mii_softc* %87)
  %89 = load %struct.mii_softc*, %struct.mii_softc** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @mii_phy_update(%struct.mii_softc* %89, i32 %90)
  ret i32 0
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @smcphy_auto(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
