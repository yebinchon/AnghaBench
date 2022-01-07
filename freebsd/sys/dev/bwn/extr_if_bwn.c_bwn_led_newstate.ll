; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.bwn_led*, i64, i32, %struct.ieee80211com }
%struct.bwn_led = type { i32, i32 }
%struct.ieee80211com = type { i32 }

@BWN_FLAG_RUNNING = common dso_local global i32 0, align 4
@BWN_GPIO_CONTROL = common dso_local global i32 0, align 4
@BWN_LED_MAX = common dso_local global i32 0, align 4
@BWN_LED_ACT_UNKN = common dso_local global i32 0, align 4
@BWN_LED_ACT_NULL = common dso_local global i32 0, align 4
@BWN_LED_F_BLINK = common dso_local global i32 0, align 4
@BWN_LED_ACT_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@BWN_LED_ACT_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32)* @bwn_led_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_led_newstate(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwn_led*, align 8
  %10 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %12, align 8
  store %struct.bwn_softc* %13, %struct.bwn_softc** %5, align 8
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %15 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %14, i32 0, i32 4
  store %struct.ieee80211com* %15, %struct.ieee80211com** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %20 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %19, i32 0, i32 3
  %21 = call i32 @callout_stop(i32* %20)
  %22 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %23 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BWN_FLAG_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %115

32:                                               ; preds = %24
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %34 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %35 = call i32 @BWN_READ_2(%struct.bwn_mac* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %107, %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BWN_LED_MAX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %110

40:                                               ; preds = %36
  %41 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %42 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %41, i32 0, i32 1
  %43 = load %struct.bwn_led*, %struct.bwn_led** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %43, i64 %45
  store %struct.bwn_led* %46, %struct.bwn_led** %9, align 8
  %47 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %48 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BWN_LED_ACT_UNKN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %40
  %53 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %54 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BWN_LED_ACT_NULL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %40
  br label %107

59:                                               ; preds = %52
  %60 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %61 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BWN_LED_F_BLINK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 129
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %107

70:                                               ; preds = %66, %59
  %71 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %72 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %76 [
    i32 130, label %74
    i32 131, label %75
    i32 132, label %75
  ]

74:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %102

75:                                               ; preds = %70, %70
  store i32 0, i32* %10, align 4
  br label %102

76:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  %77 = load i32, i32* %4, align 4
  switch i32 %77, label %93 [
    i32 129, label %78
    i32 128, label %79
  ]

78:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %101

79:                                               ; preds = %76
  %80 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %81 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BWN_LED_ACT_11G, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %85, %79
  br label %101

93:                                               ; preds = %76
  %94 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %95 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BWN_LED_ACT_ASSOC, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %101

101:                                              ; preds = %100, %92, %78
  br label %102

102:                                              ; preds = %101, %75, %74
  %103 = load %struct.bwn_led*, %struct.bwn_led** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @bwn_led_onoff(%struct.bwn_led* %103, i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %102, %69, %58
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %36

110:                                              ; preds = %36
  %111 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %112 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %31
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_led_onoff(%struct.bwn_led*, i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
