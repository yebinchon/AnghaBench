; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_qsphy.c_qsphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_qsphy.c_qsphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

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
@MII_QSPHY_PCTL = common dso_local global i32 0, align 4
@PCTL_OPMASK = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_100_T4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @qsphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qsphy_status(%struct.mii_softc* %0) #0 {
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
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
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
  %42 = load i32, i32* @IFM_NONE, align 4
  %43 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %133

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BMCR_LOOP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @IFM_LOOP, align 4
  %56 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %57 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %62 = load i32, i32* @MII_QSPHY_PCTL, align 4
  %63 = call i32 @PHY_READ(%struct.mii_softc* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PCTL_OPMASK, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %113 [
    i32 130, label %67
    i32 129, label %75
    i32 132, label %83
    i32 131, label %91
    i32 133, label %99
    i32 128, label %107
  ]

67:                                               ; preds = %60
  %68 = load i32, i32* @IFM_10_T, align 4
  %69 = load i32, i32* @IFM_HDX, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %72 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %119

75:                                               ; preds = %60
  %76 = load i32, i32* @IFM_10_T, align 4
  %77 = load i32, i32* @IFM_FDX, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %80 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %119

83:                                               ; preds = %60
  %84 = load i32, i32* @IFM_100_TX, align 4
  %85 = load i32, i32* @IFM_HDX, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %88 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %119

91:                                               ; preds = %60
  %92 = load i32, i32* @IFM_100_TX, align 4
  %93 = load i32, i32* @IFM_FDX, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %96 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %119

99:                                               ; preds = %60
  %100 = load i32, i32* @IFM_100_T4, align 4
  %101 = load i32, i32* @IFM_HDX, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %104 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %119

107:                                              ; preds = %60
  %108 = load i32, i32* @IFM_NONE, align 4
  %109 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %110 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %119

113:                                              ; preds = %60
  %114 = load i32, i32* @IFM_NONE, align 4
  %115 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %116 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %107, %99, %91, %83, %75, %67
  %120 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %121 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IFM_FDX, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %128 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %127)
  %129 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %130 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %41, %126, %119
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
