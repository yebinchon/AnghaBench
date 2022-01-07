; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ciphy.c_ciphy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_ciphy.c_ciphy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i64, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@CIPHY_MII_BMCR = common dso_local global i32 0, align 4
@CIPHY_BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i64 0, align 8
@CIPHY_BMCR_AUTOEN = common dso_local global i32 0, align 4
@CIPHY_BMSR_ACOMP = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@CIPHY_MII_AUXCSR = common dso_local global i32 0, align 4
@CIPHY_AUXCSR_SPEED = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@IFM_100_TX = common dso_local global i64 0, align 8
@IFM_1000_T = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unknown PHY speed %x\0A\00", align 1
@CIPHY_AUXCSR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@CIPHY_MII_1000STS = common dso_local global i32 0, align 4
@CIPHY_1000STS_MSR = common dso_local global i32 0, align 4
@IFM_ETH_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @ciphy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciphy_status(%struct.mii_softc* %0) #0 {
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
  %16 = load i32, i32* @MII_BMSR, align 4
  %17 = call i32 @PHY_READ(%struct.mii_softc* %15, i32 %16)
  %18 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %19 = load i32, i32* @MII_BMSR, align 4
  %20 = call i32 @PHY_READ(%struct.mii_softc* %18, i32 %19)
  %21 = or i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BMSR_LINK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @IFM_ACTIVE, align 4
  %28 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %34 = load i32, i32* @CIPHY_MII_BMCR, align 4
  %35 = call i32 @PHY_READ(%struct.mii_softc* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CIPHY_BMCR_LOOP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64, i64* @IFM_LOOP, align 8
  %42 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %43 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CIPHY_BMCR_AUTOEN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @CIPHY_BMSR_ACOMP, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* @IFM_NONE, align 8
  %58 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %59 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %140

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %65 = load i32, i32* @CIPHY_MII_AUXCSR, align 4
  %66 = call i32 @PHY_READ(%struct.mii_softc* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CIPHY_AUXCSR_SPEED, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %88 [
    i32 130, label %70
    i32 129, label %76
    i32 128, label %82
  ]

70:                                               ; preds = %63
  %71 = load i64, i64* @IFM_10_T, align 8
  %72 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %73 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %96

76:                                               ; preds = %63
  %77 = load i64, i64* @IFM_100_TX, align 8
  %78 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %79 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %77
  store i64 %81, i64* %79, align 8
  br label %96

82:                                               ; preds = %63
  %83 = load i64, i64* @IFM_1000_T, align 8
  %84 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %85 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = or i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %96

88:                                               ; preds = %63
  %89 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %90 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @CIPHY_AUXCSR_SPEED, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %88, %82, %76, %70
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @CIPHY_AUXCSR_FDX, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i32, i32* @IFM_FDX, align 4
  %103 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %104 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %103)
  %105 = or i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %108 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, %106
  store i64 %110, i64* %108, align 8
  br label %118

111:                                              ; preds = %96
  %112 = load i32, i32* @IFM_HDX, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %115 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %111, %101
  %119 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %120 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i64 @IFM_SUBTYPE(i32 %122)
  %124 = load i64, i64* @IFM_1000_T, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %118
  %127 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %128 = load i32, i32* @CIPHY_MII_1000STS, align 4
  %129 = call i32 @PHY_READ(%struct.mii_softc* %127, i32 %128)
  %130 = load i32, i32* @CIPHY_1000STS_MSR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32, i32* @IFM_ETH_MASTER, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %137 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %56, %133, %126, %118
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
