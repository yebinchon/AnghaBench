; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_xmphy.c_xmphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_xmphy.c_xmphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@XMPHY_MII_BMSR = common dso_local global i32 0, align 4
@XMPHY_BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@XMPHY_MII_EXTSTS = common dso_local global i32 0, align 4
@XMPHY_MII_BMCR = common dso_local global i32 0, align 4
@XMPHY_BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@XMPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@XMPHY_BMSR_ACOMP = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@XMPHY_MII_ANAR = common dso_local global i32 0, align 4
@XMPHY_MII_ANLPAR = common dso_local global i32 0, align 4
@XMPHY_ANLPAR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@XMPHY_BMCR_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @xmphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %7, i32 0, i32 0
  %9 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load i32, i32* @IFM_AVALID, align 4
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IFM_ETHER, align 4
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = load i32, i32* @XMPHY_MII_BMSR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @XMPHY_MII_BMSR, align 4
  %21 = call i32 @PHY_READ(%struct.mii_softc* %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XMPHY_BMSR_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %30 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %35 = load i32, i32* @XMPHY_MII_EXTSTS, align 4
  %36 = call i32 @PHY_READ(%struct.mii_softc* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %38 = load i32, i32* @XMPHY_MII_BMCR, align 4
  %39 = call i32 @PHY_READ(%struct.mii_softc* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @XMPHY_BMCR_LOOP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @IFM_LOOP, align 4
  %46 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @XMPHY_BMCR_AUTOEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @XMPHY_BMSR_ACOMP, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @XMPHY_BMSR_LINK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @IFM_1000_SX, align 4
  %67 = load i32, i32* @IFM_HDX, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %70 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %131

73:                                               ; preds = %60
  %74 = load i32, i32* @IFM_NONE, align 4
  %75 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %76 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %131

79:                                               ; preds = %55
  %80 = load i32, i32* @IFM_1000_SX, align 4
  %81 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %82 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %86 = load i32, i32* @XMPHY_MII_ANAR, align 4
  %87 = call i32 @PHY_READ(%struct.mii_softc* %85, i32 %86)
  %88 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %89 = load i32, i32* @XMPHY_MII_ANLPAR, align 4
  %90 = call i32 @PHY_READ(%struct.mii_softc* %88, i32 %89)
  %91 = and i32 %87, %90
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @XMPHY_ANLPAR_FDX, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %79
  %97 = load i32, i32* @IFM_FDX, align 4
  %98 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %99 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %79
  %103 = load i32, i32* @IFM_HDX, align 4
  %104 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %105 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  br label %131

109:                                              ; preds = %50
  %110 = load i32, i32* @IFM_1000_SX, align 4
  %111 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %112 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @XMPHY_BMCR_FDX, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %109
  %120 = load i32, i32* @IFM_FDX, align 4
  %121 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %122 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %131

125:                                              ; preds = %109
  %126 = load i32, i32* @IFM_HDX, align 4
  %127 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %128 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %65, %73, %108, %125, %119
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
