; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_truephy.c_truephy_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_truephy.c_truephy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@TRUEPHY_SR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@TRUEPHY_SR_SPD_MASK = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid media SR %#x\0A\00", align 1
@TRUEPHY_SR_FDX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @truephy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truephy_status(%struct.mii_softc* %0) #0 {
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
  %17 = load i32, i32* @TRUEPHY_SR, align 4
  %18 = call i32 @PHY_READ(%struct.mii_softc* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %20 = load i32, i32* @MII_BMCR, align 4
  %21 = call i32 @PHY_READ(%struct.mii_softc* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %23 = load i32, i32* @MII_BMSR, align 4
  %24 = call i32 @PHY_READ(%struct.mii_softc* %22, i32 %23)
  %25 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %26 = load i32, i32* @MII_BMSR, align 4
  %27 = call i32 @PHY_READ(%struct.mii_softc* %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BMSR_LINK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @IFM_ACTIVE, align 4
  %35 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %36 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BMCR_AUTOEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @BMSR_ACOMP, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @IFM_NONE, align 4
  %51 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %106

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @TRUEPHY_SR_SPD_MASK, align 4
  %59 = and i32 %57, %58
  switch i32 %59, label %78 [
    i32 130, label %60
    i32 129, label %66
    i32 128, label %72
  ]

60:                                               ; preds = %56
  %61 = load i32, i32* @IFM_1000_T, align 4
  %62 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %63 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %86

66:                                               ; preds = %56
  %67 = load i32, i32* @IFM_100_TX, align 4
  %68 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %69 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %86

72:                                               ; preds = %56
  %73 = load i32, i32* @IFM_10_T, align 4
  %74 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %75 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %86

78:                                               ; preds = %56
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @IFM_NONE, align 4
  %82 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %83 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %106

86:                                               ; preds = %72, %66, %60
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @TRUEPHY_SR_FDX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* @IFM_FDX, align 4
  %93 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %94 = call i32 @mii_phy_flowstatus(%struct.mii_softc* %93)
  %95 = or i32 %92, %94
  %96 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %97 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %106

100:                                              ; preds = %86
  %101 = load i32, i32* @IFM_HDX, align 4
  %102 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %103 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %49, %78, %100, %91
  ret void
}

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mii_phy_flowstatus(%struct.mii_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
