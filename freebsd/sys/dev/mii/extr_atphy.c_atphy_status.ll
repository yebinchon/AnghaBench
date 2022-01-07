; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_atphy.c_atphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i64, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i64 0, align 8
@ATPHY_SSR = common dso_local global i32 0, align 4
@ATPHY_SSR_SPD_DPLX_RESOLVED = common dso_local global i32 0, align 4
@ATPHY_SSR_SPEED_MASK = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i64 0, align 8
@IFM_100_TX = common dso_local global i64 0, align 8
@IFM_10_T = common dso_local global i64 0, align 8
@ATPHY_SSR_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@MII_100T2SR = common dso_local global i32 0, align 4
@GTSR_MS_RES = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @atphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atphy_status(%struct.mii_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %2, align 8
  %7 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %7, i32 0, i32 1
  %9 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  store %struct.mii_data* %9, %struct.mii_data** %3, align 8
  %10 = load i32, i32* @IFM_AVALID, align 4
  %11 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %12 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load i64, i64* @IFM_ETHER, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %17 = load i32, i32* @MII_BMSR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @MII_BMSR, align 4
  %21 = call i32 @PHY_READ(%struct.mii_softc* %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BMSR_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %30 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %35 = load i32, i32* @MII_BMCR, align 4
  %36 = call i32 @PHY_READ(%struct.mii_softc* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BMCR_ISO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i64, i64* @IFM_NONE, align 8
  %43 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  br label %152

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BMCR_LOOP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* @IFM_LOOP, align 8
  %56 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %57 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %62 = load i32, i32* @ATPHY_SSR, align 4
  %63 = call i32 @PHY_READ(%struct.mii_softc* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ATPHY_SSR_SPD_DPLX_RESOLVED, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i64, i64* @IFM_NONE, align 8
  %70 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %71 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %152

74:                                               ; preds = %60
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ATPHY_SSR_SPEED_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %102 [
    i32 130, label %78
    i32 129, label %86
    i32 128, label %94
  ]

78:                                               ; preds = %74
  %79 = load i64, i64* @IFM_1000_T, align 8
  %80 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %85 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %108

86:                                               ; preds = %74
  %87 = load i64, i64* @IFM_100_TX, align 8
  %88 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %89 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %93 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %108

94:                                               ; preds = %74
  %95 = load i64, i64* @IFM_10_T, align 8
  %96 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %97 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %101 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %108

102:                                              ; preds = %74
  %103 = load i64, i64* @IFM_NONE, align 8
  %104 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %105 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %152

108:                                              ; preds = %94, %86, %78
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ATPHY_SSR_DUPLEX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* @IFM_FDX, align 4
  %115 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %116 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %115)
  %117 = or i32 %114, %116
  %118 = sext i32 %117 to i64
  %119 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %120 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %118
  store i64 %122, i64* %120, align 8
  br label %130

123:                                              ; preds = %108
  %124 = load i32, i32* @IFM_HDX, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %127 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = or i64 %128, %125
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %123, %113
  %131 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %132 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i64 @IFM_SUBTYPE(i32 %134)
  %136 = load i64, i64* @IFM_1000_T, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %130
  %139 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %140 = load i32, i32* @MII_100T2SR, align 4
  %141 = call i32 @PHY_READ(%struct.mii_softc* %139, i32 %140)
  %142 = load i32, i32* @GTSR_MS_RES, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i32, i32* @IFM_ETH_MASTER, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %149 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = or i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %41, %68, %102, %145, %138, %130
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
