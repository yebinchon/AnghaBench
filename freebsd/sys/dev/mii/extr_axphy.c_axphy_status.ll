; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_axphy.c_axphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_axphy.c_axphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@MII_AXPHY_SCR = common dso_local global i32 0, align 4
@SCR_FDX = common dso_local global i32 0, align 4
@SCR_S100 = common dso_local global i32 0, align 4
@scr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @axphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %7, i32 0, i32 0
  %9 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %12, align 8
  store %struct.ifmedia_entry* %13, %struct.ifmedia_entry** %4, align 8
  %14 = load i32, i32* @IFM_AVALID, align 4
  %15 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %16 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IFM_ETHER, align 4
  %18 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %19 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %21 = load i32, i32* @MII_BMSR, align 4
  %22 = call i32 @PHY_READ(%struct.mii_softc* %20, i32 %21)
  %23 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %24 = load i32, i32* @MII_BMSR, align 4
  %25 = call i32 @PHY_READ(%struct.mii_softc* %23, i32 %24)
  %26 = or i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BMSR_LINK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @IFM_ACTIVE, align 4
  %33 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %34 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %39 = load i32, i32* @MII_BMCR, align 4
  %40 = call i32 @PHY_READ(%struct.mii_softc* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @BMCR_ISO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i32, i32* @IFM_NONE, align 4
  %47 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %87

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @BMCR_LOOP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @IFM_LOOP, align 4
  %60 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %61 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @BMCR_AUTOEN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @BMSR_ACOMP, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @IFM_NONE, align 4
  %76 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %77 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %87

80:                                               ; preds = %69
  br label %87

81:                                               ; preds = %64
  %82 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %83 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %86 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %45, %74, %81, %80
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
