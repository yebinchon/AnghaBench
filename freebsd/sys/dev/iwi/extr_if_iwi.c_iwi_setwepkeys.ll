; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setwepkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setwepkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { i32, i32 }
%struct.iwi_wep_key = type { i32, i32, i32, i32 }

@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@IWI_WEP_KEY_CMD_SETKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Setting wep key index %u len %u\0A\00", align 1
@IWI_CMD_SET_WEP_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.ieee80211vap*)* @iwi_setwepkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_setwepkeys(%struct.iwi_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.iwi_wep_key, align 4
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %17, i64 %19
  store %struct.ieee80211_key* %20, %struct.ieee80211_key** %7, align 8
  %21 = load i32, i32* @IWI_WEP_KEY_CMD_SETKEY, align 4
  %22 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32 %33, i32 %36, i32 %39)
  %41 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.iwi_wep_key, %struct.iwi_wep_key* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @DPRINTF(i8* %46)
  %48 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %49 = load i32, i32* @IWI_CMD_SET_WEP_KEY, align 4
  %50 = call i32 @iwi_cmd(%struct.iwi_softc* %48, i32 %49, %struct.iwi_wep_key* %6, i32 16)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %14
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %14
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %10

59:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, %struct.iwi_wep_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
