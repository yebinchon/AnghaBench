; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_xmphy.c_xmphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_xmphy.c_xmphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_FDX = common dso_local global i32 0, align 4
@XMPHY_MII_ANAR = common dso_local global i32 0, align 4
@XMPHY_ANAR_FDX = common dso_local global i32 0, align 4
@XMPHY_MII_BMCR = common dso_local global i32 0, align 4
@XMPHY_BMCR_FDX = common dso_local global i32 0, align 4
@XMPHY_ANAR_HDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@XMPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @xmphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %12, align 8
  store %struct.ifmedia_entry* %13, %struct.ifmedia_entry** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %90 [
    i32 129, label %15
    i32 130, label %16
    i32 128, label %54
  ]

15:                                               ; preds = %3
  br label %90

16:                                               ; preds = %3
  %17 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %18 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IFM_SUBTYPE(i32 %19)
  switch i32 %20, label %51 [
    i32 131, label %21
    i32 132, label %24
  ]

21:                                               ; preds = %16
  %22 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %23 = call i32 @xmphy_mii_phy_auto(%struct.mii_softc* %22)
  br label %53

24:                                               ; preds = %16
  %25 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %26 = call i32 @PHY_RESET(%struct.mii_softc* %25)
  %27 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %28 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFM_FDX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %35 = load i32, i32* @XMPHY_MII_ANAR, align 4
  %36 = load i32, i32* @XMPHY_ANAR_FDX, align 4
  %37 = call i32 @PHY_WRITE(%struct.mii_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %39 = load i32, i32* @XMPHY_MII_BMCR, align 4
  %40 = load i32, i32* @XMPHY_BMCR_FDX, align 4
  %41 = call i32 @PHY_WRITE(%struct.mii_softc* %38, i32 %39, i32 %40)
  br label %50

42:                                               ; preds = %24
  %43 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %44 = load i32, i32* @XMPHY_MII_ANAR, align 4
  %45 = load i32, i32* @XMPHY_ANAR_HDX, align 4
  %46 = call i32 @PHY_WRITE(%struct.mii_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %48 = load i32, i32* @XMPHY_MII_BMCR, align 4
  %49 = call i32 @PHY_WRITE(%struct.mii_softc* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %42, %33
  br label %53

51:                                               ; preds = %16
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %96

53:                                               ; preds = %50, %21
  br label %90

54:                                               ; preds = %3
  %55 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %56 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IFM_SUBTYPE(i32 %57)
  %59 = icmp ne i32 %58, 131
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %90

61:                                               ; preds = %54
  %62 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %63 = load i32, i32* @MII_BMSR, align 4
  %64 = call i32 @PHY_READ(%struct.mii_softc* %62, i32 %63)
  %65 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %66 = load i32, i32* @MII_BMSR, align 4
  %67 = call i32 @PHY_READ(%struct.mii_softc* %65, i32 %66)
  %68 = or i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @BMSR_LINK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %90

74:                                               ; preds = %61
  %75 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %76 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %79 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %90

83:                                               ; preds = %74
  %84 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %85 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %87 = call i32 @PHY_RESET(%struct.mii_softc* %86)
  %88 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %89 = call i32 @xmphy_mii_phy_auto(%struct.mii_softc* %88)
  store i32 0, i32* %4, align 4
  br label %96

90:                                               ; preds = %3, %82, %73, %60, %53, %15
  %91 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %92 = call i32 @xmphy_status(%struct.mii_softc* %91)
  %93 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @mii_phy_update(%struct.mii_softc* %93, i32 %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %90, %83, %51
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @xmphy_mii_phy_auto(%struct.mii_softc*) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @PHY_WRITE(%struct.mii_softc*, i32, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @xmphy_status(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
