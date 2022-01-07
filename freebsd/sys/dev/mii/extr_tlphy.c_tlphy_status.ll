; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tlphy.c_tlphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tlphy.c_tlphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.tlphy_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@MII_TLPHY_CTRL = common dso_local global i32 0, align 4
@CTRL_AUISEL = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @tlphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.tlphy_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %8 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %9 = bitcast %struct.mii_softc* %8 to %struct.tlphy_softc*
  store %struct.tlphy_softc* %9, %struct.tlphy_softc** %3, align 8
  %10 = load %struct.tlphy_softc*, %struct.tlphy_softc** %3, align 8
  %11 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.mii_data*, %struct.mii_data** %12, align 8
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load i32, i32* @IFM_AVALID, align 4
  %15 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %16 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IFM_ETHER, align 4
  %18 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %19 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.tlphy_softc*, %struct.tlphy_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @MII_BMCR, align 4
  %23 = call i32 @PHY_READ(%struct.TYPE_6__* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BMCR_ISO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @IFM_NONE, align 4
  %30 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %31 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %35 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %113

36:                                               ; preds = %1
  %37 = load %struct.tlphy_softc*, %struct.tlphy_softc** %3, align 8
  %38 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %37, i32 0, i32 0
  %39 = load i32, i32* @MII_TLPHY_CTRL, align 4
  %40 = call i32 @PHY_READ(%struct.TYPE_6__* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CTRL_AUISEL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %55 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %113

56:                                               ; preds = %36
  %57 = load %struct.tlphy_softc*, %struct.tlphy_softc** %3, align 8
  %58 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %57, i32 0, i32 0
  %59 = load i32, i32* @MII_BMSR, align 4
  %60 = call i32 @PHY_READ(%struct.TYPE_6__* %58, i32 %59)
  %61 = load %struct.tlphy_softc*, %struct.tlphy_softc** %3, align 8
  %62 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %61, i32 0, i32 0
  %63 = load i32, i32* @MII_BMSR, align 4
  %64 = call i32 @PHY_READ(%struct.TYPE_6__* %62, i32 %63)
  %65 = or i32 %60, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @BMSR_LINK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %56
  %71 = load i32, i32* @IFM_ACTIVE, align 4
  %72 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %73 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %56
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BMCR_LOOP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @IFM_LOOP, align 4
  %83 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %84 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @BMCR_FDX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32, i32* @IFM_FDX, align 4
  %94 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %95 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %94)
  %96 = or i32 %93, %95
  %97 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %107

101:                                              ; preds = %87
  %102 = load i32, i32* @IFM_HDX, align 4
  %103 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %104 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %92
  %108 = load i32, i32* @IFM_10_T, align 4
  %109 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %110 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %45, %28
  ret void
}

declare dso_local i32 @PHY_READ(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
