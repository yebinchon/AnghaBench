; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { %struct.rum_softc* }

@RUM_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rum_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rum_softc* @device_get_softc(i32 %5)
  store %struct.rum_softc* %6, %struct.rum_softc** %3, align 8
  %7 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %7, i32 0, i32 4
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %10 = call i32 @RUM_LOCK(%struct.rum_softc* %9)
  %11 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %12 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %14 = call i32 @RUM_UNLOCK(%struct.rum_softc* %13)
  %15 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RUM_N_TRANSFER, align 4
  %19 = call i32 @usbd_transfer_unsetup(i32 %17, i32 %18)
  %20 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %21 = call i32 @RUM_LOCK(%struct.rum_softc* %20)
  %22 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %23 = call i32 @rum_unsetup_tx_list(%struct.rum_softc* %22)
  %24 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %25 = call i32 @RUM_UNLOCK(%struct.rum_softc* %24)
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 0
  %28 = load %struct.rum_softc*, %struct.rum_softc** %27, align 8
  %29 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %30 = icmp eq %struct.rum_softc* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %33 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %33, i32 0, i32 2
  %35 = call i32 @ieee80211_draintask(%struct.ieee80211com* %32, i32* %34)
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %37 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %36)
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %39, i32 0, i32 1
  %41 = call i32 @mbufq_drain(i32* %40)
  %42 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %43 = call i32 @RUM_CMDQ_LOCK_DESTROY(%struct.rum_softc* %42)
  %44 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %45 = call i32 @RUM_LOCK_DESTROY(%struct.rum_softc* %44)
  ret i32 0
}

declare dso_local %struct.rum_softc* @device_get_softc(i32) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @rum_unsetup_tx_list(%struct.rum_softc*) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @RUM_CMDQ_LOCK_DESTROY(%struct.rum_softc*) #1

declare dso_local i32 @RUM_LOCK_DESTROY(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
