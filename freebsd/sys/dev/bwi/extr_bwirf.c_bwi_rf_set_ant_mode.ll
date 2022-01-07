; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_ant_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_ant_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.TYPE_2__, %struct.bwi_phy, %struct.bwi_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.bwi_phy = type { i64, i32 }
%struct.bwi_softc = type { i32 }

@BWI_ANT_MODE_0 = common dso_local global i32 0, align 4
@BWI_ANT_MODE_1 = common dso_local global i32 0, align 4
@BWI_ANT_MODE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ant_mode %d\00", align 1
@BWI_HFLAG_AUTO_ANTDIV = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_TX_BEACON = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_TX_ACK = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_TX_PROBE_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_set_ant_mode(%struct.bwi_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca %struct.bwi_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 3
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %5, align 8
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %11, i32 0, i32 2
  store %struct.bwi_phy* %12, %struct.bwi_phy** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BWI_ANT_MODE_0, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @BWI_ANT_MODE_1, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BWI_ANT_MODE_AUTO, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %2
  %25 = phi i1 [ true, %16 ], [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %26, i8* %29)
  %31 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %32 = load i32, i32* @BWI_HFLAG_AUTO_ANTDIV, align 4
  %33 = call i32 @HFLAGS_CLRBITS(%struct.bwi_mac* %31, i32 %32)
  %34 = load %struct.bwi_phy*, %struct.bwi_phy** %6, align 8
  %35 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %24
  %40 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %41 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @BWI_ANT_MODE_AUTO, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 7
  store i32 %50, i32* %7, align 4
  %51 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %51, i32 994, i32 65151, i32 %52)
  br label %114

54:                                               ; preds = %24
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 7
  store i32 %56, i32* %7, align 4
  %57 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %57, i32 1025, i32 32383, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @BWI_ANT_MODE_AUTO, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %65 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %64, i32 1067, i32 256)
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.bwi_phy*, %struct.bwi_phy** %6, align 8
  %68 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %113

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @BWI_ANT_MODE_AUTO, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %79 = call i32 @PHY_SETBITS(%struct.bwi_mac* %78, i32 1164, i32 8192)
  br label %83

80:                                               ; preds = %73
  %81 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %82 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %81, i32 1164, i32 8192)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.bwi_phy*, %struct.bwi_phy** %6, align 8
  %85 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %90 = call i32 @PHY_SETBITS(%struct.bwi_mac* %89, i32 1121, i32 16)
  %91 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %92 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %91, i32 1197, i32 65280, i32 21)
  %93 = load %struct.bwi_phy*, %struct.bwi_phy** %6, align 8
  %94 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %99 = call i32 @PHY_WRITE(%struct.bwi_mac* %98, i32 1063, i32 8)
  br label %103

100:                                              ; preds = %88
  %101 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %102 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %101, i32 1063, i32 65280, i32 8)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.bwi_phy*, %struct.bwi_phy** %6, align 8
  %105 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %106, 6
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %110 = call i32 @PHY_WRITE(%struct.bwi_mac* %109, i32 1179, i32 220)
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %111, %83
  br label %113

113:                                              ; preds = %112, %72
  br label %114

114:                                              ; preds = %113, %48
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @BWI_ANT_MODE_AUTO, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %120 = load i32, i32* @BWI_HFLAG_AUTO_ANTDIV, align 4
  %121 = call i32 @HFLAGS_SETBITS(%struct.bwi_mac* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* %4, align 4
  %124 = shl i32 %123, 8
  store i32 %124, i32* %7, align 4
  %125 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %126 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %127 = load i32, i32* @BWI_COMM_MOBJ_TX_BEACON, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @MOBJ_FILT_SETBITS_2(%struct.bwi_mac* %125, i32 %126, i32 %127, i32 64575, i32 %128)
  %130 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %131 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %132 = load i32, i32* @BWI_COMM_MOBJ_TX_ACK, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @MOBJ_FILT_SETBITS_2(%struct.bwi_mac* %130, i32 %131, i32 %132, i32 64575, i32 %133)
  %135 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %136 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %137 = load i32, i32* @BWI_COMM_MOBJ_TX_PROBE_RESP, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @MOBJ_FILT_SETBITS_2(%struct.bwi_mac* %135, i32 %136, i32 %137, i32 64575, i32 %138)
  %140 = load %struct.bwi_phy*, %struct.bwi_phy** %6, align 8
  %141 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %122
  %146 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %147 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %146, i32 94, i32 4)
  br label %148

148:                                              ; preds = %145, %122
  %149 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %150 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %149, i32 256, i32 16777216)
  %151 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %152 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 5
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %157 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %156, i32 268, i32 16777216)
  br label %158

158:                                              ; preds = %155, %148
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %161 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @HFLAGS_CLRBITS(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @HFLAGS_SETBITS(%struct.bwi_mac*, i32) #1

declare dso_local i32 @MOBJ_FILT_SETBITS_2(%struct.bwi_mac*, i32, i32, i32, i32) #1

declare dso_local i32 @CSR_SETBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
