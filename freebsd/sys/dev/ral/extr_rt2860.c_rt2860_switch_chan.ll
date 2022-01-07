; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_switch_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_switch_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, %struct.ieee80211_channel*)* @rt2860_switch_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_switch_chan(%struct.rt2860_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %8, i32 0, i32 1
  store %struct.ieee80211com* %9, %struct.ieee80211com** %5, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %10, %struct.ieee80211_channel* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  br label %69

20:                                               ; preds = %15
  %21 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 21392
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rt5390_set_chan(%struct.rt2860_softc* %26, i32 %27)
  br label %43

29:                                               ; preds = %20
  %30 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 12401
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rt3090_set_chan(%struct.rt2860_softc* %35, i32 %36)
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rt2860_set_chan(%struct.rt2860_softc* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %6, align 4
  %45 = icmp sle i32 %44, 14
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 64
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 128
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 2, i32* %7, align 4
  br label %56

55:                                               ; preds = %51
  store i32 3, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %60 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 21392
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @rt2860_select_chan_group(%struct.rt2860_softc* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = call i32 @DELAY(i32 1000)
  br label %69

69:                                               ; preds = %67, %19
  ret void
}

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rt5390_set_chan(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt3090_set_chan(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_set_chan(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @rt2860_select_chan_group(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
