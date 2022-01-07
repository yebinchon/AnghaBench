; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_updateedca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_updateedca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.rt2860_softc* }
%struct.rt2860_softc = type { i32 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32, i32, i32, i32 }

@WME_NUM_AC = common dso_local global i32 0, align 4
@RT2860_WMM_AIFSN_CFG = common dso_local global i32 0, align 4
@WME_AC_VO = common dso_local global i64 0, align 8
@WME_AC_VI = common dso_local global i64 0, align 8
@WME_AC_BK = common dso_local global i64 0, align 8
@WME_AC_BE = common dso_local global i64 0, align 8
@RT2860_WMM_CWMIN_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_CWMAX_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_TXOP0_CFG = common dso_local global i32 0, align 4
@RT2860_WMM_TXOP1_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*)* @rt2860_updateedca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_updateedca(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.chanAccParams, align 8
  %5 = alloca %struct.wmeParams*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %7, i32 0, i32 0
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %8, align 8
  store %struct.rt2860_softc* %9, %struct.rt2860_softc** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %11 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %10, %struct.chanAccParams* %4)
  %12 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %4, i32 0, i32 0
  %13 = load %struct.wmeParams*, %struct.wmeParams** %12, align 8
  store %struct.wmeParams* %13, %struct.wmeParams** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @WME_NUM_AC, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @RT2860_EDCA_AC_CFG(i32 %20)
  %22 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %22, i64 %24
  %26 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %29, i64 %31
  %33 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 12
  %36 = or i32 %28, %35
  %37 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %37, i64 %39
  %41 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %36, %43
  %45 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %45, i64 %47
  %49 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %44, %50
  %52 = call i32 @RAL_WRITE(%struct.rt2860_softc* %19, i32 %21, i32 %51)
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %58 = load i32, i32* @RT2860_WMM_AIFSN_CFG, align 4
  %59 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %60 = load i64, i64* @WME_AC_VO, align 8
  %61 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %59, i64 %60
  %62 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 12
  %65 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %66 = load i64, i64* @WME_AC_VI, align 8
  %67 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %65, i64 %66
  %68 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %64, %70
  %72 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %73 = load i64, i64* @WME_AC_BK, align 8
  %74 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %72, i64 %73
  %75 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 4
  %78 = or i32 %71, %77
  %79 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %80 = load i64, i64* @WME_AC_BE, align 8
  %81 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %79, i64 %80
  %82 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %78, %83
  %85 = call i32 @RAL_WRITE(%struct.rt2860_softc* %57, i32 %58, i32 %84)
  %86 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %87 = load i32, i32* @RT2860_WMM_CWMIN_CFG, align 4
  %88 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %89 = load i64, i64* @WME_AC_VO, align 8
  %90 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %88, i64 %89
  %91 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 12
  %94 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %95 = load i64, i64* @WME_AC_VI, align 8
  %96 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %94, i64 %95
  %97 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = or i32 %93, %99
  %101 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %102 = load i64, i64* @WME_AC_BK, align 8
  %103 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %101, i64 %102
  %104 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 4
  %107 = or i32 %100, %106
  %108 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %109 = load i64, i64* @WME_AC_BE, align 8
  %110 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %108, i64 %109
  %111 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %107, %112
  %114 = call i32 @RAL_WRITE(%struct.rt2860_softc* %86, i32 %87, i32 %113)
  %115 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %116 = load i32, i32* @RT2860_WMM_CWMAX_CFG, align 4
  %117 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %118 = load i64, i64* @WME_AC_VO, align 8
  %119 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %117, i64 %118
  %120 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 12
  %123 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %124 = load i64, i64* @WME_AC_VI, align 8
  %125 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %123, i64 %124
  %126 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %122, %128
  %130 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %131 = load i64, i64* @WME_AC_BK, align 8
  %132 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %130, i64 %131
  %133 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 4
  %136 = or i32 %129, %135
  %137 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %138 = load i64, i64* @WME_AC_BE, align 8
  %139 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %137, i64 %138
  %140 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %136, %141
  %143 = call i32 @RAL_WRITE(%struct.rt2860_softc* %115, i32 %116, i32 %142)
  %144 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %145 = load i32, i32* @RT2860_WMM_TXOP0_CFG, align 4
  %146 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %147 = load i64, i64* @WME_AC_BK, align 8
  %148 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %146, i64 %147
  %149 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 16
  %152 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %153 = load i64, i64* @WME_AC_BE, align 8
  %154 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %152, i64 %153
  %155 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %151, %156
  %158 = call i32 @RAL_WRITE(%struct.rt2860_softc* %144, i32 %145, i32 %157)
  %159 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %160 = load i32, i32* @RT2860_WMM_TXOP1_CFG, align 4
  %161 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %162 = load i64, i64* @WME_AC_VO, align 8
  %163 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %161, i64 %162
  %164 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 16
  %167 = load %struct.wmeParams*, %struct.wmeParams** %5, align 8
  %168 = load i64, i64* @WME_AC_VI, align 8
  %169 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %167, i64 %168
  %170 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %166, %171
  %173 = call i32 @RAL_WRITE(%struct.rt2860_softc* %159, i32 %160, i32 %172)
  ret i32 0
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @RT2860_EDCA_AC_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
