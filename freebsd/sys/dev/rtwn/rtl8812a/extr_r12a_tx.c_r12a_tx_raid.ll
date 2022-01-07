; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_raid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.rtwn_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, %struct.ieee80211_channel* }
%struct.r12a_tx_desc = type { i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211_channel*, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown mode(1) %d!\0A\00", align 1
@R12A_RAID_11G = common dso_local global i32 0, align 4
@R12A_RAID_11B = common dso_local global i32 0, align 4
@IEEE80211_F_PUREG = common dso_local global i32 0, align 4
@R12A_RAID_11BG = common dso_local global i32 0, align 4
@R12A_RAID_11GN_1 = common dso_local global i32 0, align 4
@R12A_RAID_11GN_2 = common dso_local global i32 0, align 4
@R12A_RAID_11BGN_1_40 = common dso_local global i32 0, align 4
@R12A_RAID_11BGN_1 = common dso_local global i32 0, align 4
@R12A_RAID_11BGN_2_40 = common dso_local global i32 0, align 4
@R12A_RAID_11BGN_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown mode(2) %d!\0A\00", align 1
@R12A_TXDW1_RAID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.r12a_tx_desc*, %struct.ieee80211_node*, i32)* @r12a_tx_raid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_tx_raid(%struct.rtwn_softc* %0, %struct.r12a_tx_desc* %1, %struct.ieee80211_node* %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.r12a_tx_desc*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.r12a_tx_desc* %1, %struct.r12a_tx_desc** %6, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 2
  store %struct.ieee80211com* %15, %struct.ieee80211com** %9, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 2
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  store %struct.ieee80211vap* %18, %struct.ieee80211vap** %10, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %20, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %23 = icmp ne %struct.ieee80211_channel* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  br label %32

28:                                               ; preds = %4
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi %struct.ieee80211_channel* [ %27, %24 ], [ %31, %28 ]
  store %struct.ieee80211_channel* %33, %struct.ieee80211_channel** %11, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %35 = call i32 @ieee80211_chan2mode(%struct.ieee80211_channel* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %50 [
    i32 132, label %47
    i32 131, label %47
    i32 130, label %47
    i32 129, label %48
    i32 128, label %49
  ]

47:                                               ; preds = %45, %45, %45
  br label %58

48:                                               ; preds = %45
  store i32 132, i32* %12, align 4
  br label %58

49:                                               ; preds = %45
  store i32 130, i32* %12, align 4
  br label %58

50:                                               ; preds = %45
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %52 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %126

58:                                               ; preds = %49, %48, %47
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i32, i32* %12, align 4
  switch i32 %60, label %111 [
    i32 132, label %61
    i32 131, label %63
    i32 130, label %65
    i32 129, label %77
    i32 128, label %87
  ]

61:                                               ; preds = %59
  %62 = load i32, i32* @R12A_RAID_11G, align 4
  store i32 %62, i32* %13, align 4
  br label %117

63:                                               ; preds = %59
  %64 = load i32, i32* @R12A_RAID_11B, align 4
  store i32 %64, i32* %13, align 4
  br label %117

65:                                               ; preds = %59
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %67 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_F_PUREG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @R12A_RAID_11G, align 4
  store i32 %73, i32* %13, align 4
  br label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @R12A_RAID_11BG, align 4
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %74, %72
  br label %117

77:                                               ; preds = %59
  %78 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %79 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @R12A_RAID_11GN_1, align 4
  store i32 %83, i32* %13, align 4
  br label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @R12A_RAID_11GN_2, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %84, %82
  br label %117

87:                                               ; preds = %59
  %88 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %89 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %94 = call i32 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @R12A_RAID_11BGN_1_40, align 4
  store i32 %97, i32* %13, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @R12A_RAID_11BGN_1, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %110

101:                                              ; preds = %87
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %103 = call i32 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @R12A_RAID_11BGN_2_40, align 4
  store i32 %106, i32* %13, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @R12A_RAID_11BGN_2, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %109, %100
  br label %117

111:                                              ; preds = %59
  %112 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %113 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %126

117:                                              ; preds = %110, %86, %76, %63, %61
  %118 = load i32, i32* @R12A_TXDW1_RAID, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @SM(i32 %118, i32 %119)
  %121 = call i32 @htole32(i32 %120)
  %122 = load %struct.r12a_tx_desc*, %struct.r12a_tx_desc** %6, align 8
  %123 = getelementptr inbounds %struct.r12a_tx_desc, %struct.r12a_tx_desc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %117, %111, %50
  ret void
}

declare dso_local i32 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
