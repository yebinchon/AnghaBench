; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_txpreamble.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_txpreamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@RT2573_TXRX_CSR4 = common dso_local global i32 0, align 4
@RT2573_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*)* @rum_set_txpreamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_set_txpreamble(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %4 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %4, i32 0, i32 0
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %14 = load i32, i32* @RT2573_TXRX_CSR4, align 4
  %15 = load i32, i32* @RT2573_SHORT_PREAMBLE, align 4
  %16 = call i32 @rum_setbits(%struct.rum_softc* %13, i32 %14, i32 %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %19 = load i32, i32* @RT2573_TXRX_CSR4, align 4
  %20 = load i32, i32* @RT2573_SHORT_PREAMBLE, align 4
  %21 = call i32 @rum_clrbits(%struct.rum_softc* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @rum_setbits(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_clrbits(%struct.rum_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
