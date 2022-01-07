; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_phy = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bwi_softc = type { i32 }

@BWI_PHYINFO = common dso_local global i32 0, align 4
@BWI_PHYINFO_REV_MASK = common dso_local global i32 0, align 4
@BWI_PHYINFO_TYPE_MASK = common dso_local global i32 0, align 4
@BWI_PHYINFO_VER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PHY: type %d, rev %d, ver %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unsupported 11A PHY, rev %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bwi_phy_init_11a = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@BWI_PHYR_TBL_CTRL_11A = common dso_local global i32 0, align 4
@BWI_PHYR_TBL_DATA_LO_11A = common dso_local global i32 0, align 4
@BWI_PHYR_TBL_DATA_HI_11A = common dso_local global i32 0, align 4
@bwi_sup_bphy = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unsupported 11B PHY, rev %u\0A\00", align 1
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unsupported 11G PHY, rev %u\0A\00", align 1
@bwi_phy_init_11g = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@BWI_PHYR_TBL_CTRL_11G = common dso_local global i32 0, align 4
@BWI_PHYR_TBL_DATA_LO_11G = common dso_local global i32 0, align 4
@BWI_PHYR_TBL_DATA_HI_11G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported PHY type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_phy_attach(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %11, i32 0, i32 1
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %12, align 8
  store %struct.bwi_softc* %13, %struct.bwi_softc** %4, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 0
  store %struct.bwi_phy* %15, %struct.bwi_phy** %5, align 8
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %17 = load i32, i32* @BWI_PHYINFO, align 4
  %18 = call i32 @CSR_READ_2(%struct.bwi_softc* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BWI_PHYINFO_REV_MASK, align 4
  %21 = call i32 @__SHIFTOUT(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @BWI_PHYINFO_TYPE_MASK, align 4
  %24 = call i32 @__SHIFTOUT(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @BWI_PHYINFO_VER_MASK, align 4
  %27 = call i32 @__SHIFTOUT(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %132 [
    i32 130, label %36
    i32 129, label %62
    i32 128, label %106
  ]

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %146

46:                                               ; preds = %36
  %47 = load i32, i32* @bwi_phy_init_11a, align 4
  %48 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %49 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @IEEE80211_MODE_11A, align 4
  %51 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %52 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @BWI_PHYR_TBL_CTRL_11A, align 4
  %54 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %55 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @BWI_PHYR_TBL_DATA_LO_11A, align 4
  %57 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %58 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @BWI_PHYR_TBL_DATA_HI_11A, align 4
  %60 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %61 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %139

62:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %87, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_sup_bphy, align 8
  %66 = call i32 @nitems(%struct.TYPE_3__* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_sup_bphy, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %69, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_sup_bphy, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %85 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %63

90:                                               ; preds = %77, %63
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bwi_sup_bphy, align 8
  %93 = call i32 @nitems(%struct.TYPE_3__* %92)
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %2, align 4
  br label %146

102:                                              ; preds = %90
  %103 = load i32, i32* @IEEE80211_MODE_11B, align 4
  %104 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %105 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  br label %139

106:                                              ; preds = %1
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %107, 8
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %111 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %2, align 4
  br label %146

116:                                              ; preds = %106
  %117 = load i32, i32* @bwi_phy_init_11g, align 4
  %118 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %119 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %121 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %122 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @BWI_PHYR_TBL_CTRL_11G, align 4
  %124 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %125 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @BWI_PHYR_TBL_DATA_LO_11G, align 4
  %127 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %128 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @BWI_PHYR_TBL_DATA_HI_11G, align 4
  %130 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %131 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %139

132:                                              ; preds = %1
  %133 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %134 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @ENXIO, align 4
  store i32 %138, i32* %2, align 4
  br label %146

139:                                              ; preds = %116, %102, %46
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %142 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.bwi_phy*, %struct.bwi_phy** %5, align 8
  %145 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %132, %109, %95, %39
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
