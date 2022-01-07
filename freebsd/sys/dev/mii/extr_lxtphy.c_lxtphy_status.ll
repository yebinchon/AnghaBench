; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_lxtphy.c_lxtphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_lxtphy.c_lxtphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_LXTPHY_CSR = common dso_local global i32 0, align 4
@CSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@CSR_SPEED = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@CSR_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @lxtphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lxtphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %8 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %8, i32 0, i32 0
  %10 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  store %struct.mii_data* %10, %struct.mii_data** %3, align 8
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %13, align 8
  store %struct.ifmedia_entry* %14, %struct.ifmedia_entry** %4, align 8
  %15 = load i32, i32* @IFM_AVALID, align 4
  %16 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %17 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IFM_ETHER, align 4
  %19 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %20 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %22 = load i32, i32* @MII_LXTPHY_CSR, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CSR_LINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @IFM_ACTIVE, align 4
  %30 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %31 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %36 = load i32, i32* @MII_BMCR, align 4
  %37 = call i32 @PHY_READ(%struct.mii_softc* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BMCR_ISO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* @IFM_NONE, align 4
  %44 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %45 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %128

50:                                               ; preds = %34
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @BMCR_LOOP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @IFM_LOOP, align 4
  %57 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %58 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @BMCR_AUTOEN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %122

66:                                               ; preds = %61
  %67 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %68 = load i32, i32* @MII_BMSR, align 4
  %69 = call i32 @PHY_READ(%struct.mii_softc* %67, i32 %68)
  %70 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %71 = load i32, i32* @MII_BMSR, align 4
  %72 = call i32 @PHY_READ(%struct.mii_softc* %70, i32 %71)
  %73 = or i32 %69, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @BMSR_ACOMP, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load i32, i32* @IFM_NONE, align 4
  %80 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %128

84:                                               ; preds = %66
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @CSR_SPEED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @IFM_100_TX, align 4
  %91 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @IFM_10_T, align 4
  %97 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CSR_DUPLEX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32, i32* @IFM_FDX, align 4
  %108 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %109 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %108)
  %110 = or i32 %107, %109
  %111 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %112 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %121

115:                                              ; preds = %101
  %116 = load i32, i32* @IFM_HDX, align 4
  %117 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %118 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %106
  br label %128

122:                                              ; preds = %61
  %123 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %124 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %127 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %42, %78, %122, %121
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
