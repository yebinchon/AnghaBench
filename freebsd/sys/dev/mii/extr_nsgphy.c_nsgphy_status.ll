; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsgphy.c_nsgphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsgphy.c_nsgphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@NSGPHY_MII_PHYSUP = common dso_local global i32 0, align 4
@PHY_SUP_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@MII_100T2SR = common dso_local global i32 0, align 4
@GTSR_MS_RES = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@PHY_SUP_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @nsgphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsgphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %9 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %9, i32 0, i32 0
  %11 = load %struct.mii_data*, %struct.mii_data** %10, align 8
  store %struct.mii_data* %11, %struct.mii_data** %3, align 8
  %12 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %4, align 8
  %16 = load i32, i32* @IFM_AVALID, align 4
  %17 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %18 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IFM_ETHER, align 4
  %20 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = load i32, i32* @MII_BMSR, align 4
  %24 = call i32 @PHY_READ(%struct.mii_softc* %22, i32 %23)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %30 = load i32, i32* @NSGPHY_MII_PHYSUP, align 4
  %31 = call i32 @PHY_READ(%struct.mii_softc* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PHY_SUP_LINK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @IFM_ACTIVE, align 4
  %38 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %39 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %44 = load i32, i32* @MII_BMCR, align 4
  %45 = call i32 @PHY_READ(%struct.mii_softc* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @BMCR_ISO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* @IFM_NONE, align 4
  %52 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %53 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %57 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %155

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @BMCR_LOOP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @IFM_LOOP, align 4
  %65 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %66 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @BMCR_AUTOEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %149

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BMSR_ACOMP, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @IFM_NONE, align 4
  %81 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %82 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %155

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 129
  switch i32 %87, label %120 [
    i32 128, label %88
    i32 129, label %108
    i32 0, label %114
  ]

88:                                               ; preds = %85
  %89 = load i32, i32* @IFM_1000_T, align 4
  %90 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %91 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %95 = load i32, i32* @MII_100T2SR, align 4
  %96 = call i32 @PHY_READ(%struct.mii_softc* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @GTSR_MS_RES, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load i32, i32* @IFM_ETH_MASTER, align 4
  %103 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %104 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %88
  br label %128

108:                                              ; preds = %85
  %109 = load i32, i32* @IFM_100_TX, align 4
  %110 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %111 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %128

114:                                              ; preds = %85
  %115 = load i32, i32* @IFM_10_T, align 4
  %116 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %117 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %128

120:                                              ; preds = %85
  %121 = load i32, i32* @IFM_NONE, align 4
  %122 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %123 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %127 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %155

128:                                              ; preds = %114, %108, %107
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @PHY_SUP_DUPLEX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i32, i32* @IFM_FDX, align 4
  %135 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %136 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %135)
  %137 = or i32 %134, %136
  %138 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %139 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %148

142:                                              ; preds = %128
  %143 = load i32, i32* @IFM_HDX, align 4
  %144 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %145 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %133
  br label %155

149:                                              ; preds = %69
  %150 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %151 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %154 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %50, %79, %120, %149, %148
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
