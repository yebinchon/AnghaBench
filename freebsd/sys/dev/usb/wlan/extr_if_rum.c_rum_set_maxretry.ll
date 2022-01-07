; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_maxretry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_maxretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%struct.ieee80211vap = type { %struct.ieee80211_node* }
%struct.ieee80211_node = type { %struct.ieee80211_txparam* }
%struct.ieee80211_txparam = type { i32 }
%struct.rum_vap = type { i32 }

@RT2573_TXRX_CSR4 = common dso_local global i32 0, align 4
@RT2573_SHORT_RETRY_MASK = common dso_local global i32 0, align 4
@RT2573_LONG_RETRY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, %struct.ieee80211vap*)* @rum_set_maxretry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_set_maxretry(%struct.rum_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211_txparam*, align 8
  %7 = alloca %struct.rum_vap*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  store %struct.ieee80211_node* %10, %struct.ieee80211_node** %5, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %12, align 8
  store %struct.ieee80211_txparam* %13, %struct.ieee80211_txparam** %6, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %15 = call %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap* %14)
  store %struct.rum_vap* %15, %struct.rum_vap** %7, align 8
  %16 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MIN(i32 %18, i32 15)
  %20 = load %struct.rum_vap*, %struct.rum_vap** %7, align 8
  %21 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %23 = load i32, i32* @RT2573_TXRX_CSR4, align 4
  %24 = load %struct.rum_vap*, %struct.rum_vap** %7, align 8
  %25 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RT2573_SHORT_RETRY(i32 %26)
  %28 = load %struct.rum_vap*, %struct.rum_vap** %7, align 8
  %29 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RT2573_LONG_RETRY(i32 %30)
  %32 = or i32 %27, %31
  %33 = load i32, i32* @RT2573_SHORT_RETRY_MASK, align 4
  %34 = load i32, i32* @RT2573_LONG_RETRY_MASK, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @rum_modbits(%struct.rum_softc* %22, i32 %23, i32 %32, i32 %35)
  ret void
}

declare dso_local %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @rum_modbits(%struct.rum_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2573_SHORT_RETRY(i32) #1

declare dso_local i32 @RT2573_LONG_RETRY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
