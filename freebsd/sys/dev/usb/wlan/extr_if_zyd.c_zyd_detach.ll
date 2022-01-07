; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, i32*, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { %struct.zyd_softc* }

@ZYD_FLAG_DETACHED = common dso_local global i32 0, align 4
@ZYD_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zyd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zyd_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.zyd_softc* @device_get_softc(i32 %6)
  store %struct.zyd_softc* %7, %struct.zyd_softc** %3, align 8
  %8 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %9 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %8, i32 0, i32 5
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %11 = call i32 @ZYD_LOCK(%struct.zyd_softc* %10)
  %12 = load i32, i32* @ZYD_FLAG_DETACHED, align 4
  %13 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %14 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %18 = call i32 @zyd_drain_mbufq(%struct.zyd_softc* %17)
  %19 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %19, i32 0, i32 3
  %21 = call i32 @STAILQ_INIT(i32* %20)
  %22 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %22, i32 0, i32 2
  %24 = call i32 @STAILQ_INIT(i32* %23)
  %25 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %26 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %40, %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ZYD_N_TRANSFER, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %33 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usbd_transfer_drain(i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %45 = call i32 @ZYD_LOCK(%struct.zyd_softc* %44)
  %46 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %47 = call i32 @zyd_unsetup_tx_list(%struct.zyd_softc* %46)
  %48 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %49 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %48)
  %50 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %51 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @ZYD_N_TRANSFER, align 4
  %54 = call i32 @usbd_transfer_unsetup(i32* %52, i32 %53)
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 0
  %57 = load %struct.zyd_softc*, %struct.zyd_softc** %56, align 8
  %58 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %59 = icmp eq %struct.zyd_softc* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %62 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %61)
  br label %63

63:                                               ; preds = %60, %43
  %64 = load %struct.zyd_softc*, %struct.zyd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %64, i32 0, i32 0
  %66 = call i32 @mtx_destroy(i32* %65)
  ret i32 0
}

declare dso_local %struct.zyd_softc* @device_get_softc(i32) #1

declare dso_local i32 @ZYD_LOCK(%struct.zyd_softc*) #1

declare dso_local i32 @zyd_drain_mbufq(%struct.zyd_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @ZYD_UNLOCK(%struct.zyd_softc*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @zyd_unsetup_tx_list(%struct.zyd_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
