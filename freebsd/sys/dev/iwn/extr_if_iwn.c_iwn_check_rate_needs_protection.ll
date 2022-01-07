; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_check_rate_needs_protection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_check_rate_needs_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32, i32 }

@IEEE80211_F_USEPROT = common dso_local global i32 0, align 4
@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@IEEE80211_T_CCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*, %struct.ieee80211vap*, i32)* @iwn_check_rate_needs_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn_check_rate_needs_protection(%struct.iwn_softc* %0, %struct.ieee80211vap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwn_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211com*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %5, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %8, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IEEE80211_IS_CHAN_2GHZ(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_F_USEPROT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %42

32:                                               ; preds = %26
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @ieee80211_rate2phytype(i32 %35, i32 %36)
  %38 = load i64, i64* @IEEE80211_T_CCK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %42

41:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40, %31, %25, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i64 @ieee80211_rate2phytype(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
