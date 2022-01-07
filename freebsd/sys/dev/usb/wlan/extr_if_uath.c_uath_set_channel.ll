; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.uath_softc* }
%struct.uath_softc = type { i32 }

@UATH_FLAG_INVALID = common dso_local global i32 0, align 4
@UATH_FLAG_INITDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @uath_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uath_set_channel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.uath_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 1
  %6 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  store %struct.uath_softc* %6, %struct.uath_softc** %3, align 8
  %7 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %8 = call i32 @UATH_LOCK(%struct.uath_softc* %7)
  %9 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UATH_FLAG_INVALID, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UATH_FLAG_INITDONE, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %1
  %23 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %24 = call i32 @UATH_UNLOCK(%struct.uath_softc* %23)
  br label %33

25:                                               ; preds = %15
  %26 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @uath_switch_channel(%struct.uath_softc* %26, i32 %29)
  %31 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %32 = call i32 @UATH_UNLOCK(%struct.uath_softc* %31)
  br label %33

33:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @UATH_LOCK(%struct.uath_softc*) #1

declare dso_local i32 @UATH_UNLOCK(%struct.uath_softc*) #1

declare dso_local i32 @uath_switch_channel(%struct.uath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
