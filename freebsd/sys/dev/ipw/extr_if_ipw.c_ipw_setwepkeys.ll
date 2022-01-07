; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_setwepkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_setwepkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ipw_wep_key = type { i32, i32, i32 }

@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_WEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Setting wep key index %u len %u\0A\00", align 1
@IPW_CMD_SET_WEP_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_softc*)* @ipw_setwepkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_setwepkeys(%struct.ipw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ipw_wep_key, align 4
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %3, align 8
  %10 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %10, i32 0, i32 0
  store %struct.ieee80211com* %11, %struct.ieee80211com** %4, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %13)
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %5, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %73, %1
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_key*, %struct.ieee80211_key** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %22, i64 %24
  store %struct.ieee80211_key* %25, %struct.ieee80211_key** %7, align 8
  %26 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp eq %struct.TYPE_2__* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %19
  %31 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IEEE80211_CIPHER_WEP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %19
  br label %73

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %6, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memset(i32 %47, i32 0, i32 4)
  %49 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i32 %50, i32 %53, i32 %56)
  %58 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ipw_wep_key, %struct.ipw_wep_key* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @DPRINTF(i8* %63)
  %65 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %66 = load i32, i32* @IPW_CMD_SET_WEP_KEY, align 4
  %67 = call i32 @ipw_cmd(%struct.ipw_softc* %65, i32 %66, %struct.ipw_wep_key* %6, i32 12)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %39
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %39
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %15

76:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ipw_cmd(%struct.ipw_softc*, i32, %struct.ipw_wep_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
