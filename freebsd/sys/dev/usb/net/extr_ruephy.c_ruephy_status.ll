; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_ruephy.c_ruephy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_ruephy.c_ruephy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@RUEPHY_MII_MSR = common dso_local global i32 0, align 4
@RUEPHY_MSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@RUEPHY_MSR_SPEED100 = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@RUEPHY_MSR_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @ruephy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ruephy_status(%struct.mii_softc* %0) #0 {
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
  %22 = load i32, i32* @RUEPHY_MII_MSR, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  %24 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %25 = load i32, i32* @RUEPHY_MII_MSR, align 4
  %26 = call i32 @PHY_READ(%struct.mii_softc* %24, i32 %25)
  %27 = or i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RUEPHY_MSR_LINK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @IFM_ACTIVE, align 4
  %34 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %35 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %40 = load i32, i32* @MII_BMCR, align 4
  %41 = call i32 @PHY_READ(%struct.mii_softc* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @BMCR_ISO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @IFM_NONE, align 4
  %48 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %53 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %121

54:                                               ; preds = %38
  %55 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %56 = load i32, i32* @MII_BMSR, align 4
  %57 = call i32 @PHY_READ(%struct.mii_softc* %55, i32 %56)
  %58 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %59 = load i32, i32* @MII_BMSR, align 4
  %60 = call i32 @PHY_READ(%struct.mii_softc* %58, i32 %59)
  %61 = or i32 %57, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @BMCR_AUTOEN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %54
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @BMSR_ACOMP, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @IFM_NONE, align 4
  %73 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %74 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %121

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @RUEPHY_MSR_SPEED100, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @IFM_100_TX, align 4
  %84 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %85 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %94

88:                                               ; preds = %77
  %89 = load i32, i32* @IFM_10_T, align 4
  %90 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %91 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @RUEPHY_MSR_DUPLEX, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i32, i32* @IFM_FDX, align 4
  %101 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %102 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %101)
  %103 = or i32 %100, %102
  %104 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %105 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %114

108:                                              ; preds = %94
  %109 = load i32, i32* @IFM_HDX, align 4
  %110 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %111 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %99
  br label %121

115:                                              ; preds = %54
  %116 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %117 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %120 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %46, %71, %115, %114
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
