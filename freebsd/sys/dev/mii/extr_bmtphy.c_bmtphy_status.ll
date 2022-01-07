; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_bmtphy.c_bmtphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_bmtphy.c_bmtphy_status.c"
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
@MII_BMTPHY_AUX_CSR = common dso_local global i32 0, align 4
@AUX_CSR_SPEED = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@AUX_CSR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @bmtphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmtphy_status(%struct.mii_softc* %0) #0 {
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
  %22 = load i32, i32* @MII_BMSR, align 4
  %23 = call i32 @PHY_READ(%struct.mii_softc* %21, i32 %22)
  %24 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %25 = load i32, i32* @MII_BMSR, align 4
  %26 = call i32 @PHY_READ(%struct.mii_softc* %24, i32 %25)
  %27 = or i32 %23, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BMSR_LINK, align 4
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
  br label %128

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BMCR_LOOP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @IFM_LOOP, align 4
  %61 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %62 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BMCR_AUTOEN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %122

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @BMSR_ACOMP, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @IFM_NONE, align 4
  %77 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %78 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %128

81:                                               ; preds = %70
  %82 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %83 = load i32, i32* @MII_BMTPHY_AUX_CSR, align 4
  %84 = call i32 @PHY_READ(%struct.mii_softc* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @AUX_CSR_SPEED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* @IFM_100_TX, align 4
  %91 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %101

95:                                               ; preds = %81
  %96 = load i32, i32* @IFM_10_T, align 4
  %97 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @AUX_CSR_FDX, align 4
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

122:                                              ; preds = %65
  %123 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %124 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %127 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %46, %75, %122, %121
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
