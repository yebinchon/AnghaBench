; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, %struct.bwi_led*, i64, i32, %struct.ieee80211com }
%struct.bwi_led = type { i32, i32 }
%struct.ieee80211com = type { i32 }

@BWI_F_RUNNING = common dso_local global i32 0, align 4
@BWI_MAC_GPIO_CTRL = common dso_local global i32 0, align 4
@BWI_LED_MAX = common dso_local global i32 0, align 4
@BWI_LED_ACT_UNKN = common dso_local global i32 0, align 4
@BWI_LED_ACT_NULL = common dso_local global i32 0, align 4
@BWI_LED_F_BLINK = common dso_local global i32 0, align 4
@BWI_LED_ACT_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@BWI_LED_ACT_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32)* @bwi_led_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_led_newstate(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwi_led*, align 8
  %9 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %10, i32 0, i32 4
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %15, i32 0, i32 3
  %17 = call i32 @callout_stop(i32* %16)
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BWI_F_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %111

28:                                               ; preds = %20
  %29 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %30 = load i32, i32* @BWI_MAC_GPIO_CTRL, align 4
  %31 = call i32 @CSR_READ_2(%struct.bwi_softc* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %103, %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BWI_LED_MAX, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %106

36:                                               ; preds = %32
  %37 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %37, i32 0, i32 1
  %39 = load %struct.bwi_led*, %struct.bwi_led** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %39, i64 %41
  store %struct.bwi_led* %42, %struct.bwi_led** %8, align 8
  %43 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %44 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BWI_LED_ACT_UNKN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %50 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BWI_LED_ACT_NULL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %36
  br label %103

55:                                               ; preds = %48
  %56 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %57 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BWI_LED_F_BLINK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 129
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %103

66:                                               ; preds = %62, %55
  %67 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %68 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %72 [
    i32 130, label %70
    i32 131, label %71
    i32 132, label %71
  ]

70:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %98

71:                                               ; preds = %66, %66
  store i32 0, i32* %9, align 4
  br label %98

72:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  %73 = load i32, i32* %4, align 4
  switch i32 %73, label %89 [
    i32 129, label %74
    i32 128, label %75
  ]

74:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %97

75:                                               ; preds = %72
  %76 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %77 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BWI_LED_ACT_11G, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %81, %75
  br label %97

89:                                               ; preds = %72
  %90 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %91 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BWI_LED_ACT_ASSOC, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %89
  br label %97

97:                                               ; preds = %96, %88, %74
  br label %98

98:                                               ; preds = %97, %71, %70
  %99 = load %struct.bwi_led*, %struct.bwi_led** %8, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @bwi_led_onoff(%struct.bwi_led* %99, i32 %100, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %65, %54
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %32

106:                                              ; preds = %32
  %107 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %108 = load i32, i32* @BWI_MAC_GPIO_CTRL, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %27
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_led_onoff(%struct.bwi_led*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
