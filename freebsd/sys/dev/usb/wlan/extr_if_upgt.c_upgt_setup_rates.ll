; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_setup_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_setup_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_txparam* }
%struct.ieee80211_txparam = type { i64 }
%struct.ieee80211com = type { i64, i32, %struct.upgt_softc* }
%struct.upgt_softc = type { i32 }

@__const.upgt_setup_rates.rateset_auto_11b = private unnamed_addr constant [8 x i32] [i32 19, i32 19, i32 18, i32 17, i32 17, i32 16, i32 16, i32 16], align 16
@__const.upgt_setup_rates.rateset_auto_11g = private unnamed_addr constant [8 x i32] [i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 4, i32 1], align 16
@__const.upgt_setup_rates.rateset_fix_11bg = private unnamed_addr constant [12 x i32] [i32 16, i32 17, i32 18, i32 19, i32 1, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11], align 16
@IEEE80211_FIXED_RATE_NONE = common dso_local global i64 0, align 8
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@IEEE80211_MODE_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, %struct.ieee80211com*)* @upgt_setup_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_setup_rates(%struct.ieee80211vap* %0, %struct.ieee80211com* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.upgt_softc*, align 8
  %6 = alloca %struct.ieee80211_txparam*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [12 x i32], align 16
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211com* %1, %struct.ieee80211com** %4, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 2
  %12 = load %struct.upgt_softc*, %struct.upgt_softc** %11, align 8
  store %struct.upgt_softc* %12, %struct.upgt_softc** %5, align 8
  %13 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([8 x i32]* @__const.upgt_setup_rates.rateset_auto_11b to i8*), i64 32, i1 false)
  %14 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([8 x i32]* @__const.upgt_setup_rates.rateset_auto_11g to i8*), i64 32, i1 false)
  %15 = bitcast [12 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([12 x i32]* @__const.upgt_setup_rates.rateset_fix_11bg to i8*), i64 48, i1 false)
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %17, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ieee80211_chan2mode(i32 %21)
  %23 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %18, i64 %22
  store %struct.ieee80211_txparam* %23, %struct.ieee80211_txparam** %6, align 8
  %24 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IEEE80211_FIXED_RATE_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %2
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.upgt_softc*, %struct.upgt_softc** %5, align 8
  %37 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %40 = call i32 @memcpy(i32 %38, i32* %39, i32 4)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47, %41
  %54 = load %struct.upgt_softc*, %struct.upgt_softc** %5, align 8
  %55 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %58 = call i32 @memcpy(i32 %56, i32* %57, i32 4)
  br label %59

59:                                               ; preds = %53, %47
  br label %70

60:                                               ; preds = %2
  %61 = load %struct.upgt_softc*, %struct.upgt_softc** %5, align 8
  %62 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memset(i32 %63, i32 %68, i32 4)
  br label %70

70:                                               ; preds = %60, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ieee80211_chan2mode(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
