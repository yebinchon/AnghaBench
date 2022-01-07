; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_set_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_set_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@ZYD_FILTER_BSS = common dso_local global i32 0, align 4
@ZYD_FILTER_HOSTAP = common dso_local global i32 0, align 4
@ZYD_FILTER_MONITOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZYD_MAC_RXFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*)* @zyd_set_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_set_rxfilter(%struct.zyd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zyd_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %3, align 8
  %6 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %7 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %4, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 130, label %13
    i32 131, label %13
    i32 129, label %15
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @ZYD_FILTER_BSS, align 4
  store i32 %12, i32* %5, align 4
  br label %19

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @ZYD_FILTER_HOSTAP, align 4
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @ZYD_FILTER_MONITOR, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %15, %13, %11
  %20 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %21 = load i32, i32* @ZYD_MAC_RXFILTER, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @zyd_write32(%struct.zyd_softc* %20, i32 %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @zyd_write32(%struct.zyd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
