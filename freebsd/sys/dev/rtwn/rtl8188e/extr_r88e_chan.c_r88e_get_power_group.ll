; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_chan.c_r88e_get_power_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_chan.c_r88e_get_power_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_channel = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong 2GHz channel %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"wrong channel band (flags %08X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.ieee80211_channel*)* @r88e_get_power_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r88e_get_power_group(%struct.rtwn_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %9 = call i32 @rtwn_chan2centieee(%struct.ieee80211_channel* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %46

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2, i32* %7, align 4
  br label %45

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 11
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %7, align 4
  br label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 13
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* %7, align 4
  br label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 14
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 5, i32* %7, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 0, i8* %40)
  store i32 -1, i32* %3, align 4
  br label %57

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %20
  br label %47

47:                                               ; preds = %46, %16
  br label %55

48:                                               ; preds = %2
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 0, i8* %53)
  store i32 -1, i32* %3, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %48, %37
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @rtwn_chan2centieee(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
