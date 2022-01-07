; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_wme_initparams_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_wme_initparams_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_6__*, %struct.ieee80211com* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i64, i64, %struct.ieee80211_wme_state }
%struct.ieee80211_wme_state = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.wmeParams* }
%struct.wmeParams = type { i32 }
%struct.TYPE_4__ = type { %struct.wmeParams*, i64 }

@IEEE80211_C_WME = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@IEEE80211_MODE_AUTO = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@phyParamForAC_BK = common dso_local global i32* null, align 8
@phyParamForAC_VI = common dso_local global i32* null, align 8
@bssPhyParamForAC_VI = common dso_local global i32* null, align 8
@phyParamForAC_VO = common dso_local global i32* null, align 8
@bssPhyParamForAC_VO = common dso_local global i32* null, align 8
@phyParamForAC_BE = common dso_local global i32* null, align 8
@bssPhyParamForAC_BE = common dso_local global i32* null, align 8
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bss \00", align 1
@HIGH_PRI_SWITCH_THRESH = common dso_local global i32 0, align 4
@WME_F_AGGRMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @ieee80211_wme_initparams_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_wme_initparams_locked(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_wme_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wmeParams*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %3, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 4
  store %struct.ieee80211_wme_state* %14, %struct.ieee80211_wme_state** %4, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %16 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %15)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_C_WME, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %1
  br label %154

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ieee80211_chan2mode(i64 %41)
  store i32 %42, i32* %8, align 4
  br label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %38
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %127, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @WME_NUM_AC, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %130

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %80 [
    i32 130, label %52
    i32 129, label %61
    i32 128, label %70
    i32 131, label %79
  ]

52:                                               ; preds = %50
  %53 = load i32*, i32** @phyParamForAC_BK, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** @phyParamForAC_BK, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %6, align 8
  br label %89

61:                                               ; preds = %50
  %62 = load i32*, i32** @phyParamForAC_VI, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %5, align 8
  %66 = load i32*, i32** @bssPhyParamForAC_VI, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %6, align 8
  br label %89

70:                                               ; preds = %50
  %71 = load i32*, i32** @phyParamForAC_VO, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %5, align 8
  %75 = load i32*, i32** @bssPhyParamForAC_VO, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** %6, align 8
  br label %89

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %50, %79
  %81 = load i32*, i32** @phyParamForAC_BE, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %5, align 8
  %85 = load i32*, i32** @bssPhyParamForAC_BE, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %80, %70, %61, %52
  %90 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.wmeParams*, %struct.wmeParams** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %93, i64 %95
  store %struct.wmeParams* %96, %struct.wmeParams** %7, align 8
  %97 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %98 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.wmeParams*, %struct.wmeParams** %7, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @setwmeparams(%struct.ieee80211vap* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %104, %struct.wmeParams* %105, i32* %106)
  br label %114

108:                                              ; preds = %89
  %109 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.wmeParams*, %struct.wmeParams** %7, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @setwmeparams(%struct.ieee80211vap* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %110, %struct.wmeParams* %111, i32* %112)
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.wmeParams*, %struct.wmeParams** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %118, i64 %120
  store %struct.wmeParams* %121, %struct.wmeParams** %7, align 8
  %122 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.wmeParams*, %struct.wmeParams** %7, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @setwmeparams(%struct.ieee80211vap* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %123, %struct.wmeParams* %124, i32* %125)
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %46

130:                                              ; preds = %46
  %131 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %132 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = icmp ne %struct.TYPE_6__* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %130
  %136 = load i32, i32* @HIGH_PRI_SWITCH_THRESH, align 4
  %137 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %138 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %136, %141
  %143 = sdiv i32 %142, 100
  %144 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %4, align 8
  %145 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @WME_F_AGGRMODE, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.ieee80211_wme_state*, %struct.ieee80211_wme_state** %4, align 8
  %149 = getelementptr inbounds %struct.ieee80211_wme_state, %struct.ieee80211_wme_state* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %153 = call i32 @ieee80211_wme_updateparams(%struct.ieee80211vap* %152)
  br label %154

154:                                              ; preds = %28, %135, %130
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_chan2mode(i64) #1

declare dso_local i32 @setwmeparams(%struct.ieee80211vap*, i8*, i32, %struct.wmeParams*, i32*) #1

declare dso_local i32 @ieee80211_wme_updateparams(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
