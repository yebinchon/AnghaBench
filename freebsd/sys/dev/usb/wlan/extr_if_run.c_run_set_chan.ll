; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*, %struct.ieee80211_channel*)* @run_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_set_chan(%struct.run_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.run_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %9 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %10 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %9, i32 0, i32 1
  store %struct.ieee80211com* %10, %struct.ieee80211com** %6, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = call i32 @ieee80211_chan2ieee(%struct.ieee80211com* %11, %struct.ieee80211_channel* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IEEE80211_CHAN_ANY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %16
  %23 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 21906
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @run_rt5592_set_chan(%struct.run_softc* %28, i32 %29)
  br label %75

31:                                               ; preds = %22
  %32 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %33 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 21392
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @run_rt5390_set_chan(%struct.run_softc* %37, i32 %38)
  br label %74

40:                                               ; preds = %31
  %41 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %42 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 13715
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @run_rt3593_set_chan(%struct.run_softc* %46, i32 %47)
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %51 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 13682
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @run_rt3572_set_chan(%struct.run_softc* %55, i32 %56)
  br label %72

58:                                               ; preds = %49
  %59 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %60 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 12400
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @run_rt3070_set_chan(%struct.run_softc* %64, i32 %65)
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @run_rt2870_set_chan(%struct.run_softc* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %36
  br label %75

75:                                               ; preds = %74, %27
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 14
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 64
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  br label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = icmp sle i32 %84, 128
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 2, i32* %8, align 4
  br label %88

87:                                               ; preds = %83
  store i32 3, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %78
  %91 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @run_select_chan_group(%struct.run_softc* %91, i32 %92)
  %94 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %95 = call i32 @run_delay(%struct.run_softc* %94, i32 10)
  %96 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %97 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 21394
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.run_softc*, %struct.run_softc** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @run_iq_calib(%struct.run_softc* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %90
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ieee80211_chan2ieee(%struct.ieee80211com*, %struct.ieee80211_channel*) #1

declare dso_local i32 @run_rt5592_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_rt5390_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_rt3593_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_rt3572_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_rt3070_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_rt2870_set_chan(%struct.run_softc*, i32) #1

declare dso_local i32 @run_select_chan_group(%struct.run_softc*, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @run_iq_calib(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
