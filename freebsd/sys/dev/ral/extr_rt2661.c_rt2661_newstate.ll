; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i64, %struct.ieee80211_node*, %struct.ieee80211com* }
%struct.ieee80211_node = type { i32, i32 }
%struct.ieee80211com = type { %struct.rt2661_softc* }
%struct.rt2661_softc = type { i32 }
%struct.rt2661_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)* }
%struct.ieee80211vap.0 = type opaque

@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@RT2661_TXRX_CSR9 = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @rt2661_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2661_vap*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.rt2661_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %15 = call %struct.rt2661_vap* @RT2661_VAP(%struct.ieee80211vap* %14)
  store %struct.rt2661_vap* %15, %struct.rt2661_vap** %8, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 3
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %17, align 8
  store %struct.ieee80211com* %18, %struct.ieee80211com** %9, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load %struct.rt2661_softc*, %struct.rt2661_softc** %20, align 8
  store %struct.rt2661_softc* %21, %struct.rt2661_softc** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IEEE80211_S_INIT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IEEE80211_S_RUN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %33 = load i32, i32* @RT2661_TXRX_CSR9, align 4
  %34 = call i32 @RAL_READ(%struct.rt2661_softc* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %36 = load i32, i32* @RT2661_TXRX_CSR9, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, -16777216
  %39 = call i32 @RAL_WRITE(%struct.rt2661_softc* %35, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %31, %25, %3
  %41 = load %struct.rt2661_vap*, %struct.rt2661_vap** %8, align 8
  %42 = getelementptr inbounds %struct.rt2661_vap, %struct.rt2661_vap* %41, i32 0, i32 0
  %43 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %42, align 8
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %45 = bitcast %struct.ieee80211vap* %44 to %struct.ieee80211vap.0*
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %43(%struct.ieee80211vap.0* %45, i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %119

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* @IEEE80211_S_RUN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %51
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %57, i32 0, i32 2
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %58, align 8
  store %struct.ieee80211_node* %59, %struct.ieee80211_node** %13, align 8
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %56
  %66 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %67 = call i32 @rt2661_enable_mrr(%struct.rt2661_softc* %66)
  %68 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %69 = call i32 @rt2661_set_txpreamble(%struct.rt2661_softc* %68)
  %70 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %71 = load %struct.ieee80211_node*, %struct.ieee80211_node** %13, align 8
  %72 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %71, i32 0, i32 1
  %73 = call i32 @rt2661_set_basicrates(%struct.rt2661_softc* %70, i32* %72)
  %74 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %75 = load %struct.ieee80211_node*, %struct.ieee80211_node** %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rt2661_set_bssid(%struct.rt2661_softc* %74, i32 %77)
  br label %79

79:                                               ; preds = %65, %56
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91, %85, %79
  %98 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %99 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %100 = call i32 @rt2661_prepare_beacon(%struct.rt2661_softc* %98, %struct.ieee80211vap* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %121

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %114 = call i32 @rt2661_enable_tsf_sync(%struct.rt2661_softc* %113)
  br label %118

115:                                              ; preds = %106
  %116 = load %struct.rt2661_softc*, %struct.rt2661_softc** %10, align 8
  %117 = call i32 @rt2661_enable_tsf(%struct.rt2661_softc* %116)
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %51, %40
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %103
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.rt2661_vap* @RT2661_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @rt2661_enable_mrr(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_set_txpreamble(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_set_basicrates(%struct.rt2661_softc*, i32*) #1

declare dso_local i32 @rt2661_set_bssid(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @rt2661_prepare_beacon(%struct.rt2661_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @rt2661_enable_tsf_sync(%struct.rt2661_softc*) #1

declare dso_local i32 @rt2661_enable_tsf(%struct.rt2661_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
