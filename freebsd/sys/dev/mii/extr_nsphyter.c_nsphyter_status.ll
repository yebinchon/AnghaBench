; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphyter.c_nsphyter_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_nsphyter.c_nsphyter_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_NSPHYTER_PHYSTS = common dso_local global i32 0, align 4
@PHYSTS_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISO = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@BMCR_LOOP = common dso_local global i32 0, align 4
@IFM_LOOP = common dso_local global i32 0, align 4
@BMCR_AUTOEN = common dso_local global i32 0, align 4
@BMSR_ACOMP = common dso_local global i32 0, align 4
@PHYSTS_SPEED10 = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@PHYSTS_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_softc*)* @nsphyter_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsphyter_status(%struct.mii_softc* %0) #0 {
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
  %28 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %29 = load i32, i32* @MII_NSPHYTER_PHYSTS, align 4
  %30 = call i32 @PHY_READ(%struct.mii_softc* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PHYSTS_LINK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @IFM_ACTIVE, align 4
  %37 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %1
  %42 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  %43 = load i32, i32* @MII_BMCR, align 4
  %44 = call i32 @PHY_READ(%struct.mii_softc* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @BMCR_ISO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* @IFM_NONE, align 4
  %51 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %52 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %56 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %128

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @BMCR_LOOP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @IFM_LOOP, align 4
  %64 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %65 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @BMCR_AUTOEN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @BMSR_ACOMP, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @IFM_NONE, align 4
  %80 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %128

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @PHYSTS_SPEED10, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @IFM_10_T, align 4
  %91 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @IFM_100_TX, align 4
  %97 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @PHYSTS_DUPLEX, align 4
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

122:                                              ; preds = %68
  %123 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %124 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %127 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %49, %78, %122, %121
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
