; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_raid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_tx.c_r92c_tx_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.rtwn_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, %struct.ieee80211_channel* }
%struct.r92c_tx_desc = type { i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211_channel*, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, i32 }

@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown mode(1) %d!\0A\00", align 1
@R92C_RAID_11B = common dso_local global i32 0, align 4
@IEEE80211_F_PUREG = common dso_local global i32 0, align 4
@R92C_RAID_11G = common dso_local global i32 0, align 4
@R92C_RAID_11BG = common dso_local global i32 0, align 4
@IEEE80211_FHT_PUREN = common dso_local global i32 0, align 4
@R92C_RAID_11N = common dso_local global i32 0, align 4
@R92C_RAID_11BGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown mode(2) %d!\0A\00", align 1
@R92C_TXDW1_RAID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.r92c_tx_desc*, %struct.ieee80211_node*, i32)* @r92c_tx_raid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92c_tx_raid(%struct.rtwn_softc* %0, %struct.r92c_tx_desc* %1, %struct.ieee80211_node* %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.r92c_tx_desc*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.r92c_tx_desc* %1, %struct.r92c_tx_desc** %6, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 1
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
  br i1 %44, label %58, label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %49 [
    i32 130, label %47
    i32 129, label %47
    i32 128, label %48
  ]

47:                                               ; preds = %45, %45
  br label %57

48:                                               ; preds = %45
  store i32 129, i32* %12, align 4
  br label %57

49:                                               ; preds = %45
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %51 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %101

57:                                               ; preds = %48, %47
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %86 [
    i32 130, label %60
    i32 129, label %62
    i32 128, label %74
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @R92C_RAID_11B, align 4
  store i32 %61, i32* %13, align 4
  br label %92

62:                                               ; preds = %58
  %63 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_F_PUREG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @R92C_RAID_11G, align 4
  store i32 %70, i32* %13, align 4
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @R92C_RAID_11BG, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %92

74:                                               ; preds = %58
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %76 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_FHT_PUREN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @R92C_RAID_11N, align 4
  store i32 %82, i32* %13, align 4
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @R92C_RAID_11BGN, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %92

86:                                               ; preds = %58
  %87 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %88 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %101

92:                                               ; preds = %85, %73, %60
  %93 = load i32, i32* @R92C_TXDW1_RAID, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @SM(i32 %93, i32 %94)
  %96 = call i32 @htole32(i32 %95)
  %97 = load %struct.r92c_tx_desc*, %struct.r92c_tx_desc** %6, align 8
  %98 = getelementptr inbounds %struct.r92c_tx_desc, %struct.r92c_tx_desc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %92, %86, %49
  ret void
}

declare dso_local i32 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
