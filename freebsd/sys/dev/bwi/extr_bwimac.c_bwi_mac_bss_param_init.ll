; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_bss_param_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_bss_param_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_phy = type { i64 }
%struct.bwi_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32* }
%struct.ieee80211_rate_table = type { i32 }
%struct.bwi_retry_lim = type { i32, i32, i32, i32 }

@BWI_SHRETRY = common dso_local global i32 0, align 4
@BWI_SHRETRY_FB = common dso_local global i32 0, align 4
@BWI_LGRETRY = common dso_local global i32 0, align 4
@BWI_LGRETRY_FB = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_PROBE_RESP_TO = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@IEEE80211_CW_MIN_0 = common dso_local global i32 0, align 4
@IEEE80211_CW_MIN_1 = common dso_local global i32 0, align 4
@BWI_80211_MOBJ = common dso_local global i32 0, align 4
@BWI_80211_MOBJ_CWMIN = common dso_local global i32 0, align 4
@BWI_80211_MOBJ_CWMAX = common dso_local global i32 0, align 4
@IEEE80211_CW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_mac_bss_param_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_bss_param_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_rate_table*, align 8
  %7 = alloca %struct.bwi_retry_lim, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 1
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %10, align 8
  store %struct.bwi_softc* %11, %struct.bwi_softc** %3, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 0
  store %struct.bwi_phy* %13, %struct.bwi_phy** %4, align 8
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %14, i32 0, i32 0
  store %struct.ieee80211com* %15, %struct.ieee80211com** %5, align 8
  %16 = call i32 @bzero(%struct.bwi_retry_lim* %7, i32 16)
  %17 = load i32, i32* @BWI_SHRETRY, align 4
  %18 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %7, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BWI_SHRETRY_FB, align 4
  %20 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %7, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @BWI_LGRETRY, align 4
  %22 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @BWI_LGRETRY_FB, align 4
  %24 = getelementptr inbounds %struct.bwi_retry_lim, %struct.bwi_retry_lim* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %26 = call i32 @bwi_mac_set_retry_lim(%struct.bwi_mac* %25, %struct.bwi_retry_lim* %7)
  %27 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %28 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %29 = load i32, i32* @BWI_COMM_MOBJ_PROBE_RESP_TO, align 4
  %30 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %32 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %38 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %39 = call i32 @ieee80211_find_channel(%struct.ieee80211com* %37, i32 2412, i32 %38)
  %40 = call %struct.ieee80211_rate_table* @ieee80211_get_ratetable(i32 %39)
  store %struct.ieee80211_rate_table* %40, %struct.ieee80211_rate_table** %6, align 8
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %42 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i32 @bwi_mac_set_ackrates(%struct.bwi_mac* %41, %struct.ieee80211_rate_table* %42, i32* %47)
  br label %62

49:                                               ; preds = %1
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %51 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %52 = call i32 @ieee80211_find_channel(%struct.ieee80211com* %50, i32 2412, i32 %51)
  %53 = call %struct.ieee80211_rate_table* @ieee80211_get_ratetable(i32 %52)
  store %struct.ieee80211_rate_table* %53, %struct.ieee80211_rate_table** %6, align 8
  %54 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %55 = load %struct.ieee80211_rate_table*, %struct.ieee80211_rate_table** %6, align 8
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i32 @bwi_mac_set_ackrates(%struct.bwi_mac* %54, %struct.ieee80211_rate_table* %55, i32* %60)
  br label %62

62:                                               ; preds = %49, %36
  %63 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %64 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @IEEE80211_CW_MIN_0, align 4
  store i32 %69, i32* %8, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @IEEE80211_CW_MIN_1, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %74 = load i32, i32* @BWI_80211_MOBJ, align 4
  %75 = load i32, i32* @BWI_80211_MOBJ_CWMIN, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %79 = load i32, i32* @BWI_80211_MOBJ, align 4
  %80 = load i32, i32* @BWI_80211_MOBJ_CWMAX, align 4
  %81 = load i32, i32* @IEEE80211_CW_MAX, align 4
  %82 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %78, i32 %79, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @bzero(%struct.bwi_retry_lim*, i32) #1

declare dso_local i32 @bwi_mac_set_retry_lim(%struct.bwi_mac*, %struct.bwi_retry_lim*) #1

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local %struct.ieee80211_rate_table* @ieee80211_get_ratetable(i32) #1

declare dso_local i32 @ieee80211_find_channel(%struct.ieee80211com*, i32, i32) #1

declare dso_local i32 @bwi_mac_set_ackrates(%struct.bwi_mac*, %struct.ieee80211_rate_table*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
