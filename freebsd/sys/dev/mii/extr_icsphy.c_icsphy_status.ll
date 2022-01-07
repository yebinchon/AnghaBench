; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_icsphy.c_icsphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_icsphy.c_icsphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_ICSPHY_QPR = common dso_local global i32 0, align 4
@QPR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@QPR_ACOMP = common dso_local global i32 0, align 4
@QPR_SPEED = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@QPR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @icsphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icsphy_status(%struct.mii_softc* %0) #0 {
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
  %21 = load i32, i32* @MII_ICSPHY_QPR, align 4
  %22 = call i32 @PHY_READ(%struct.mii_softc* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %24 = load i32, i32* @MII_ICSPHY_QPR, align 4
  %25 = call i32 @PHY_READ(%struct.mii_softc* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @QPR_LINK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @IFM_ACTIVE, align 4
  %32 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %1
  %37 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i32 @PHY_READ(%struct.mii_softc* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BMCR_ISO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* @IFM_NONE, align 4
  %46 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %51 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %123

52:                                               ; preds = %36
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @BMCR_LOOP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @IFM_LOOP, align 4
  %59 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %60 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @BMCR_AUTOEN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %117

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @QPR_ACOMP, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @IFM_NONE, align 4
  %75 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %76 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %123

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @QPR_SPEED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @IFM_100_TX, align 4
  %86 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %87 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @IFM_10_T, align 4
  %92 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %93 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @QPR_FDX, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i32, i32* @IFM_FDX, align 4
  %103 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %104 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %103)
  %105 = or i32 %102, %104
  %106 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %107 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %116

110:                                              ; preds = %96
  %111 = load i32, i32* @IFM_HDX, align 4
  %112 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %113 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %101
  br label %123

117:                                              ; preds = %63
  %118 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %119 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %122 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %44, %73, %117, %116
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
