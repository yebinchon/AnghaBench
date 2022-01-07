; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i64, %struct.ieee80211_node*, %struct.TYPE_2__* }
%struct.ieee80211_node = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.rt2560_softc* }
%struct.rt2560_softc = type { i32 }
%struct.rt2560_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)* }
%struct.ieee80211vap.0 = type opaque
%struct.mbuf = type { i32 }

@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@RT2560_CSR14 = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@IEEE80211_M_MBSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"could not allocate beacon\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @rt2560_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2560_vap*, align 8
  %9 = alloca %struct.rt2560_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_node*, align 8
  %12 = alloca %struct.mbuf*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %14 = call %struct.rt2560_vap* @RT2560_VAP(%struct.ieee80211vap* %13)
  store %struct.rt2560_vap* %14, %struct.rt2560_vap** %8, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.rt2560_softc*, %struct.rt2560_softc** %18, align 8
  store %struct.rt2560_softc* %19, %struct.rt2560_softc** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IEEE80211_S_INIT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_S_RUN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %31 = load i32, i32* @RT2560_CSR14, align 4
  %32 = call i32 @RAL_WRITE(%struct.rt2560_softc* %30, i32 %31, i32 0)
  %33 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %34 = call i32 @rt2560_update_led(%struct.rt2560_softc* %33, i32 0, i32 0)
  br label %35

35:                                               ; preds = %29, %23, %3
  %36 = load %struct.rt2560_vap*, %struct.rt2560_vap** %8, align 8
  %37 = getelementptr inbounds %struct.rt2560_vap, %struct.rt2560_vap* %36, i32 0, i32 0
  %38 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %37, align 8
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %40 = bitcast %struct.ieee80211vap* %39 to %struct.ieee80211vap.0*
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %38(%struct.ieee80211vap.0* %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %128

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @IEEE80211_S_RUN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %128

51:                                               ; preds = %46
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %52, i32 0, i32 2
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %53, align 8
  store %struct.ieee80211_node* %54, %struct.ieee80211_node** %11, align 8
  %55 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %51
  %61 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %62 = call i32 @rt2560_update_plcp(%struct.rt2560_softc* %61)
  %63 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 1
  %66 = call i32 @rt2560_set_basicrates(%struct.rt2560_softc* %63, i32* %65)
  %67 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %68 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %69 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rt2560_set_bssid(%struct.rt2560_softc* %67, i32 %70)
  br label %72

72:                                               ; preds = %60, %51
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IEEE80211_M_MBSS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %84, %78, %72
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %92 = call %struct.mbuf* @ieee80211_beacon_alloc(%struct.ieee80211_node* %91)
  store %struct.mbuf* %92, %struct.mbuf** %12, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %94 = icmp eq %struct.mbuf* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %97 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @ENOBUFS, align 4
  store i32 %100, i32* %4, align 4
  br label %130

101:                                              ; preds = %90
  %102 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %103 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %102)
  %104 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %106 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %107 = call i32 @rt2560_tx_bcn(%struct.rt2560_softc* %104, %struct.mbuf* %105, %struct.ieee80211_node* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %130

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %115 = call i32 @rt2560_update_led(%struct.rt2560_softc* %114, i32 1, i32 0)
  %116 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %117 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IEEE80211_M_MONITOR, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %123 = call i32 @rt2560_enable_tsf_sync(%struct.rt2560_softc* %122)
  br label %127

124:                                              ; preds = %113
  %125 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %126 = call i32 @rt2560_enable_tsf(%struct.rt2560_softc* %125)
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %46, %35
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %110, %95
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.rt2560_vap* @RT2560_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @rt2560_update_led(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @rt2560_update_plcp(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_set_basicrates(%struct.rt2560_softc*, i32*) #1

declare dso_local i32 @rt2560_set_bssid(%struct.rt2560_softc*, i32) #1

declare dso_local %struct.mbuf* @ieee80211_beacon_alloc(%struct.ieee80211_node*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @rt2560_tx_bcn(%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @rt2560_enable_tsf_sync(%struct.rt2560_softc*) #1

declare dso_local i32 @rt2560_enable_tsf(%struct.rt2560_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
