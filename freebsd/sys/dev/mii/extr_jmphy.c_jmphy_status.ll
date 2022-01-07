; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_jmphy.c_jmphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i64, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@JMPHY_SSR = common dso_local global i32 0, align 4
@JMPHY_SSR_LINK_UP = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i64 0, align 8
@JMPHY_SSR_SPD_DPLX_RESOLVED = common dso_local global i32 0, align 4
@JMPHY_SSR_SPEED_MASK = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i64 0, align 8
@IFM_100_TX = common dso_local global i64 0, align 8
@IFM_10_T = common dso_local global i64 0, align 8
@JMPHY_SSR_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@MII_100T2SR = common dso_local global i32 0, align 4
@GTSR_MS_RES = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @jmphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %6 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %6, i32 0, i32 1
  %8 = load %struct.mii_data*, %struct.mii_data** %7, align 8
  store %struct.mii_data* %8, %struct.mii_data** %3, align 8
  %9 = load i32, i32* @IFM_AVALID, align 4
  %10 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* @IFM_ETHER, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %14 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %16 = load i32, i32* @JMPHY_SSR, align 4
  %17 = call i32 @PHY_READ(%struct.mii_softc* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @JMPHY_SSR_LINK_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @IFM_ACTIVE, align 4
  %24 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %25 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %30 = load i32, i32* @MII_BMCR, align 4
  %31 = call i32 @PHY_READ(%struct.mii_softc* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BMCR_ISO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i64, i64* @IFM_NONE, align 8
  %38 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %39 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  br label %145

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @BMCR_LOOP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i64, i64* @IFM_LOOP, align 8
  %51 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @JMPHY_SSR_SPD_DPLX_RESOLVED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i64, i64* @IFM_NONE, align 8
  %62 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %145

66:                                               ; preds = %55
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @JMPHY_SSR_SPEED_MASK, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %94 [
    i32 128, label %70
    i32 129, label %78
    i32 130, label %86
  ]

70:                                               ; preds = %66
  %71 = load i64, i64* @IFM_1000_T, align 8
  %72 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %73 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %77 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %100

78:                                               ; preds = %66
  %79 = load i64, i64* @IFM_100_TX, align 8
  %80 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %100

86:                                               ; preds = %66
  %87 = load i64, i64* @IFM_10_T, align 8
  %88 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %89 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %93 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %100

94:                                               ; preds = %66
  %95 = load i64, i64* @IFM_NONE, align 8
  %96 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %97 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %145

100:                                              ; preds = %86, %78, %70
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @JMPHY_SSR_DUPLEX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* @IFM_FDX, align 4
  %107 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %108 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %107)
  %109 = or i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %112 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = or i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %122

115:                                              ; preds = %100
  %116 = load i32, i32* @IFM_HDX, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %119 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %115, %105
  %123 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %124 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i64 @IFM_SUBTYPE(i32 %126)
  %128 = load i64, i64* @IFM_1000_T, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %132 = load i32, i32* @MII_100T2SR, align 4
  %133 = call i32 @PHY_READ(%struct.mii_softc* %131, i32 %132)
  %134 = load i32, i32* @GTSR_MS_RES, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i32, i32* @IFM_ETH_MASTER, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %141 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = or i64 %142, %139
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %137, %130
  br label %145

145:                                              ; preds = %36, %60, %94, %144, %122
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
