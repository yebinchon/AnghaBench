; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@UPGT_FLAG_DETACHED = common dso_local global i32 0, align 4
@UPGT_N_XFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @upgt_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.upgt_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.upgt_softc* @device_get_softc(i32 %6)
  store %struct.upgt_softc* %7, %struct.upgt_softc** %3, align 8
  %8 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %8, i32 0, i32 11
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %11 = call i32 @UPGT_LOCK(%struct.upgt_softc* %10)
  %12 = load i32, i32* @UPGT_FLAG_DETACHED, align 4
  %13 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %14 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %17, i32 0, i32 9
  %19 = call i32 @STAILQ_INIT(i32* %18)
  %20 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %21 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %20, i32 0, i32 8
  %22 = call i32 @STAILQ_INIT(i32* %21)
  %23 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %24 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %23, i32 0, i32 7
  %25 = call i32 @STAILQ_INIT(i32* %24)
  %26 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %27 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %26, i32 0, i32 6
  %28 = call i32 @STAILQ_INIT(i32* %27)
  %29 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %30 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %29, i32 0, i32 5
  %31 = call i32 @STAILQ_INIT(i32* %30)
  %32 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %33 = call i32 @upgt_stop(%struct.upgt_softc* %32)
  %34 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %35 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %34)
  %36 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %36, i32 0, i32 4
  %38 = call i32 @callout_drain(i32* %37)
  %39 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %40 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %39, i32 0, i32 3
  %41 = call i32 @callout_drain(i32* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %55, %1
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @UPGT_N_XFERS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %48 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usbd_transfer_drain(i32 %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %60 = call i32 @UPGT_LOCK(%struct.upgt_softc* %59)
  %61 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %62 = call i32 @upgt_free_rx(%struct.upgt_softc* %61)
  %63 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %64 = call i32 @upgt_free_tx(%struct.upgt_softc* %63)
  %65 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %66 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %65)
  %67 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %68 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @UPGT_N_XFERS, align 4
  %71 = call i32 @usbd_transfer_unsetup(i32* %69, i32 %70)
  %72 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %73 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %72)
  %74 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %75 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %74, i32 0, i32 1
  %76 = call i32 @mbufq_drain(i32* %75)
  %77 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %78 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %77, i32 0, i32 0
  %79 = call i32 @mtx_destroy(i32* %78)
  ret i32 0
}

declare dso_local %struct.upgt_softc* @device_get_softc(i32) #1

declare dso_local i32 @UPGT_LOCK(%struct.upgt_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @upgt_stop(%struct.upgt_softc*) #1

declare dso_local i32 @UPGT_UNLOCK(%struct.upgt_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @upgt_free_rx(%struct.upgt_softc*) #1

declare dso_local i32 @upgt_free_tx(%struct.upgt_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
