; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tlphy.c_tlphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_tlphy.c_tlphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }
%struct.tlphy_softc = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_TLPHY_CTRL = common dso_local global i32 0, align 4
@CTRL_AUISEL = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@MII_ANEGTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @tlphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlphy_softc*, align 8
  %9 = alloca %struct.ifmedia_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %12 = bitcast %struct.mii_softc* %11 to %struct.tlphy_softc*
  store %struct.tlphy_softc* %12, %struct.tlphy_softc** %8, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %14 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %15, align 8
  store %struct.ifmedia_entry* %16, %struct.ifmedia_entry** %9, align 8
  %17 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %18 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %23 = call i32 @tlphy_acomp(%struct.tlphy_softc* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %96 [
    i32 129, label %26
    i32 130, label %27
    i32 128, label %56
  ]

26:                                               ; preds = %24
  br label %96

27:                                               ; preds = %24
  %28 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %29 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IFM_SUBTYPE(i32 %30)
  switch i32 %31, label %46 [
    i32 131, label %32
    i32 133, label %35
    i32 132, label %35
  ]

32:                                               ; preds = %27
  %33 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %34 = call i32 @tlphy_auto(%struct.tlphy_softc* %33)
  br label %55

35:                                               ; preds = %27, %27
  %36 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %37 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %36, i32 0, i32 0
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i32 @PHY_WRITE(%struct.TYPE_8__* %37, i32 %38, i32 0)
  %40 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %41 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %40, i32 0, i32 0
  %42 = load i32, i32* @MII_TLPHY_CTRL, align 4
  %43 = load i32, i32* @CTRL_AUISEL, align 4
  %44 = call i32 @PHY_WRITE(%struct.TYPE_8__* %41, i32 %42, i32 %43)
  %45 = call i32 @DELAY(i32 100000)
  br label %55

46:                                               ; preds = %27
  %47 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %48 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %47, i32 0, i32 0
  %49 = load i32, i32* @MII_TLPHY_CTRL, align 4
  %50 = call i32 @PHY_WRITE(%struct.TYPE_8__* %48, i32 %49, i32 0)
  %51 = call i32 @DELAY(i32 100000)
  %52 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %53 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %52, i32 0, i32 0
  %54 = call i32 @mii_phy_setmedia(%struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %46, %35, %32
  br label %96

56:                                               ; preds = %24
  %57 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %58 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IFM_SUBTYPE(i32 %59)
  %61 = icmp ne i32 %60, 131
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %96

63:                                               ; preds = %56
  %64 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %65 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %64, i32 0, i32 0
  %66 = load i32, i32* @MII_BMSR, align 4
  %67 = call i32 @PHY_READ(%struct.TYPE_8__* %65, i32 %66)
  %68 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %69 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %68, i32 0, i32 0
  %70 = load i32, i32* @MII_BMSR, align 4
  %71 = call i32 @PHY_READ(%struct.TYPE_8__* %69, i32 %70)
  %72 = or i32 %67, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @BMSR_LINK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %96

78:                                               ; preds = %63
  %79 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %80 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @MII_ANEGTICKS, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %96

87:                                               ; preds = %78
  %88 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %89 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %92 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %91, i32 0, i32 0
  %93 = call i32 @PHY_RESET(%struct.TYPE_8__* %92)
  %94 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %95 = call i32 @tlphy_auto(%struct.tlphy_softc* %94)
  store i32 0, i32* %4, align 4
  br label %103

96:                                               ; preds = %24, %86, %77, %62, %55, %26
  %97 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %98 = call i32 @PHY_STATUS(%struct.mii_softc* %97)
  %99 = load %struct.tlphy_softc*, %struct.tlphy_softc** %8, align 8
  %100 = getelementptr inbounds %struct.tlphy_softc, %struct.tlphy_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @mii_phy_update(%struct.TYPE_8__* %100, i32 %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %87
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @tlphy_acomp(%struct.tlphy_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @tlphy_auto(%struct.tlphy_softc*) #1

declare dso_local i32 @PHY_WRITE(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mii_phy_setmedia(%struct.TYPE_8__*) #1

declare dso_local i32 @PHY_READ(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @PHY_RESET(%struct.TYPE_8__*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
