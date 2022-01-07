; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_rates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.ieee80211_rateset = type { i32, i32 }
%struct.uath_cmd_rates = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32*, i32 }

@UATH_ID_BSS = common dso_local global i32 0, align 4
@UATH_DEBUG_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"setting supported rates nrates=%d\0A\00", align 1
@WDCMSG_SET_BASIC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, %struct.ieee80211_rateset*)* @uath_set_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_set_rates(%struct.uath_softc* %0, %struct.ieee80211_rateset* %1) #0 {
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca %struct.ieee80211_rateset*, align 8
  %5 = alloca %struct.uath_cmd_rates, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  store %struct.ieee80211_rateset* %1, %struct.ieee80211_rateset** %4, align 8
  %6 = call i32 @memset(%struct.uath_cmd_rates* %5, i32 0, i32 32)
  %7 = load i32, i32* @UATH_ID_BSS, align 4
  %8 = call i8* @htobe32(i32 %7)
  %9 = getelementptr inbounds %struct.uath_cmd_rates, %struct.uath_cmd_rates* %5, i32 0, i32 2
  store i8* %8, i8** %9, align 8
  %10 = call i8* @htobe32(i32 4)
  %11 = getelementptr inbounds %struct.uath_cmd_rates, %struct.uath_cmd_rates* %5, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.uath_cmd_rates, %struct.uath_cmd_rates* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.uath_cmd_rates, %struct.uath_cmd_rates* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bcopy(i32 %19, i32* %23, i32 %26)
  %28 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %29 = load i32, i32* @UATH_DEBUG_RATES, align 4
  %30 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPRINTF(%struct.uath_softc* %28, i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %35 = load i32, i32* @WDCMSG_SET_BASIC_RATE, align 4
  %36 = call i32 @uath_cmd_write(%struct.uath_softc* %34, i32 %35, %struct.uath_cmd_rates* %5, i32 32, i32 0)
  ret i32 %36
}

declare dso_local i32 @memset(%struct.uath_cmd_rates*, i32, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(%struct.uath_softc*, i32, i8*, i32) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_cmd_rates*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
