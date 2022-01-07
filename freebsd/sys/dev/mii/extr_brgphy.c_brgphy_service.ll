; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_brgphy.c_brgphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.mii_data = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @brgphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brgphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %11 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %12, align 8
  store %struct.ifmedia_entry* %13, %struct.ifmedia_entry** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %86 [
    i32 129, label %15
    i32 135, label %16
    i32 128, label %38
  ]

15:                                               ; preds = %3
  br label %86

16:                                               ; preds = %3
  %17 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %18 = call i32 @PHY_RESET(%struct.mii_softc* %17)
  %19 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %20 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IFM_SUBTYPE(i32 %21)
  switch i32 %22, label %35 [
    i32 136, label %23
    i32 137, label %29
    i32 141, label %29
    i32 140, label %29
    i32 139, label %29
    i32 138, label %29
  ]

23:                                               ; preds = %16
  %24 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %25 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @brgphy_mii_phy_auto(%struct.mii_softc* %24, i32 %27)
  br label %37

29:                                               ; preds = %16, %16, %16, %16, %16
  %30 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %31 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %32 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @brgphy_setmedia(%struct.mii_softc* %30, i32 %33)
  br label %37

35:                                               ; preds = %16
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %144

37:                                               ; preds = %29, %23
  br label %86

38:                                               ; preds = %3
  %39 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %40 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IFM_SUBTYPE(i32 %41)
  %43 = icmp ne i32 %42, 136
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %46 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %45, i32 0, i32 5
  store i32 0, i32* %46, align 4
  br label %86

47:                                               ; preds = %38
  %48 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %49 = load i32, i32* @MII_BMSR, align 4
  %50 = call i32 @PHY_READ(%struct.mii_softc* %48, i32 %49)
  %51 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %52 = load i32, i32* @MII_BMSR, align 4
  %53 = call i32 @PHY_READ(%struct.mii_softc* %51, i32 %52)
  %54 = or i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @BMSR_LINK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %61 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %60, i32 0, i32 5
  store i32 0, i32* %61, align 4
  br label %86

62:                                               ; preds = %47
  %63 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %64 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %86

69:                                               ; preds = %62
  %70 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %71 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %74 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %86

78:                                               ; preds = %69
  %79 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %80 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %79, i32 0, i32 5
  store i32 0, i32* %80, align 4
  %81 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %82 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %83 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @brgphy_mii_phy_auto(%struct.mii_softc* %81, i32 %84)
  br label %86

86:                                               ; preds = %3, %78, %77, %68, %59, %44, %37, %15
  %87 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %88 = call i32 @PHY_STATUS(%struct.mii_softc* %87)
  %89 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %90 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %93 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %86
  %97 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %98 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %101 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 135
  br i1 %106, label %107, label %140

107:                                              ; preds = %104, %96, %86
  %108 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %109 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %139 [
    i32 130, label %111
  ]

111:                                              ; preds = %107
  %112 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %113 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %138 [
    i32 134, label %115
    i32 133, label %118
    i32 132, label %132
    i32 131, label %135
  ]

115:                                              ; preds = %111
  %116 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %117 = call i32 @bcm5401_load_dspcode(%struct.mii_softc* %116)
  br label %138

118:                                              ; preds = %111
  %119 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %120 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %125 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %123, %118
  %129 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %130 = call i32 @bcm5401_load_dspcode(%struct.mii_softc* %129)
  br label %131

131:                                              ; preds = %128, %123
  br label %138

132:                                              ; preds = %111
  %133 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %134 = call i32 @bcm5411_load_dspcode(%struct.mii_softc* %133)
  br label %138

135:                                              ; preds = %111
  %136 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %137 = call i32 @bcm54k2_load_dspcode(%struct.mii_softc* %136)
  br label %138

138:                                              ; preds = %111, %135, %132, %131, %115
  br label %139

139:                                              ; preds = %107, %138
  br label %140

140:                                              ; preds = %139, %104
  %141 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @mii_phy_update(%struct.mii_softc* %141, i32 %142)
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %35
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @brgphy_mii_phy_auto(%struct.mii_softc*, i32) #1

declare dso_local i32 @brgphy_setmedia(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_READ(%struct.mii_softc*, i32) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @bcm5401_load_dspcode(%struct.mii_softc*) #1

declare dso_local i32 @bcm5411_load_dspcode(%struct.mii_softc*) #1

declare dso_local i32 @bcm54k2_load_dspcode(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
