; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_newstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_newstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.upgt_softc* }
%struct.upgt_softc = type { i32, i32, i32 }
%struct.upgt_vap = type { i32 (%struct.ieee80211vap.0*, i32, i32)* }
%struct.ieee80211vap.0 = type opaque

@UPGT_LED_OFF = common dso_local global i32 0, align 4
@UPGT_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32, i32)* @upgt_newstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_newstate(%struct.ieee80211vap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.upgt_vap*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.upgt_softc*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = call %struct.upgt_vap* @UPGT_VAP(%struct.ieee80211vap* %10)
  store %struct.upgt_vap* %11, %struct.upgt_vap** %7, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %8, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 1
  %17 = load %struct.upgt_softc*, %struct.upgt_softc** %16, align 8
  store %struct.upgt_softc* %17, %struct.upgt_softc** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %20 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %22 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %21)
  %23 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %24 = call i32 @UPGT_LOCK(%struct.upgt_softc* %23)
  %25 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %26 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %25, i32 0, i32 2
  %27 = call i32 @callout_stop(i32* %26)
  %28 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %29 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %28, i32 0, i32 1
  %30 = call i32 @callout_stop(i32* %29)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %63 [
    i32 130, label %32
    i32 128, label %41
    i32 131, label %47
    i32 132, label %53
    i32 129, label %54
  ]

32:                                               ; preds = %3
  %33 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %34 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %35 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @upgt_set_macfilter(%struct.upgt_softc* %33, i32 %36)
  %38 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %39 = load i32, i32* @UPGT_LED_OFF, align 4
  %40 = call i32 @upgt_set_led(%struct.upgt_softc* %38, i32 %39)
  br label %64

41:                                               ; preds = %3
  %42 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @upgt_set_chan(%struct.upgt_softc* %42, i32 %45)
  br label %64

47:                                               ; preds = %3
  %48 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %49 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @upgt_set_chan(%struct.upgt_softc* %48, i32 %51)
  br label %64

53:                                               ; preds = %3
  br label %64

54:                                               ; preds = %3
  %55 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %56 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %57 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @upgt_set_macfilter(%struct.upgt_softc* %55, i32 %58)
  %60 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %61 = load i32, i32* @UPGT_LED_ON, align 4
  %62 = call i32 @upgt_set_led(%struct.upgt_softc* %60, i32 %61)
  br label %64

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63, %54, %53, %47, %41, %32
  %65 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %66 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %65)
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %68 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %67)
  %69 = load %struct.upgt_vap*, %struct.upgt_vap** %7, align 8
  %70 = getelementptr inbounds %struct.upgt_vap, %struct.upgt_vap* %69, i32 0, i32 0
  %71 = load i32 (%struct.ieee80211vap.0*, i32, i32)*, i32 (%struct.ieee80211vap.0*, i32, i32)** %70, align 8
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %73 = bitcast %struct.ieee80211vap* %72 to %struct.ieee80211vap.0*
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 %71(%struct.ieee80211vap.0* %73, i32 %74, i32 %75)
  ret i32 %76
}

declare dso_local %struct.upgt_vap* @UPGT_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @UPGT_LOCK(%struct.upgt_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @upgt_set_macfilter(%struct.upgt_softc*, i32) #1

declare dso_local i32 @upgt_set_led(%struct.upgt_softc*, i32) #1

declare dso_local i32 @upgt_set_chan(%struct.upgt_softc*, i32) #1

declare dso_local i32 @UPGT_UNLOCK(%struct.upgt_softc*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
