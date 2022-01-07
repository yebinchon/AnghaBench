; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rum_softc* }
%struct.rum_softc = type { i32 }
%struct.ieee80211_node = type { i32 }

@IEEE80211_S_SLEEP = common dso_local global i32 0, align 4
@RT2573_MAC_CSR11 = common dso_local global i32 0, align 4
@RT2573_AUTO_WAKEUP = common dso_local global i32 0, align 4
@ENETRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32)* @rum_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_reset(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.rum_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 2
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.rum_softc*, %struct.rum_softc** %13, align 8
  store %struct.rum_softc* %14, %struct.rum_softc** %7, align 8
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %48 [
    i32 131, label %16
    i32 129, label %16
    i32 128, label %16
    i32 130, label %17
  ]

16:                                               ; preds = %2, %2, %2
  store i32 0, i32* %8, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %20)
  store %struct.ieee80211_node* %21, %struct.ieee80211_node** %6, align 8
  %22 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %23 = call i32 @RUM_LOCK(%struct.rum_softc* %22)
  %24 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rum_set_sleep_time(%struct.rum_softc* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_S_SLEEP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %17
  %35 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %36 = load i32, i32* @RT2573_MAC_CSR11, align 4
  %37 = load i32, i32* @RT2573_AUTO_WAKEUP, align 4
  %38 = call i32 @rum_clrbits(%struct.rum_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %40 = load i32, i32* @RT2573_MAC_CSR11, align 4
  %41 = load i32, i32* @RT2573_AUTO_WAKEUP, align 4
  %42 = call i32 @rum_setbits(%struct.rum_softc* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %17
  %44 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %45 = call i32 @RUM_UNLOCK(%struct.rum_softc* %44)
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %47 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %46)
  br label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @ENETRESET, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %43, %16
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @rum_set_sleep_time(%struct.rum_softc*, i32) #1

declare dso_local i32 @rum_clrbits(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_setbits(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
