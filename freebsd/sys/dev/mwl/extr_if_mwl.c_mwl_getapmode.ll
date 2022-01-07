; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_getapmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_getapmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_FHT_PUREN = common dso_local global i32 0, align 4
@AP_MODE_N_ONLY = common dso_local global i32 0, align 4
@AP_MODE_AandN = common dso_local global i32 0, align 4
@IEEE80211_F_PUREG = common dso_local global i32 0, align 4
@AP_MODE_GandN = common dso_local global i32 0, align 4
@AP_MODE_BandGandN = common dso_local global i32 0, align 4
@AP_MODE_G_ONLY = common dso_local global i32 0, align 4
@AP_MODE_MIXED = common dso_local global i32 0, align 4
@AP_MODE_B_ONLY = common dso_local global i32 0, align 4
@AP_MODE_A_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_channel*)* @mwl_getapmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_getapmode(%struct.ieee80211vap* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_FHT_PUREN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @AP_MODE_N_ONLY, align 4
  store i32 %17, i32* %5, align 4
  br label %37

18:                                               ; preds = %9
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @AP_MODE_AandN, align 4
  store i32 %23, i32* %5, align 4
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_F_PUREG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @AP_MODE_GandN, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @AP_MODE_BandGandN, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %16
  br label %71

38:                                               ; preds = %2
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %40 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_F_PUREG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @AP_MODE_G_ONLY, align 4
  store i32 %50, i32* %5, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @AP_MODE_MIXED, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %70

54:                                               ; preds = %38
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %56 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @AP_MODE_B_ONLY, align 4
  store i32 %59, i32* %5, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %62 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @AP_MODE_A_ONLY, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @AP_MODE_MIXED, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
