; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32, i32, i32, i32, %struct.ieee80211com, i32*, i32, i32, i32, i32 }
%struct.ieee80211com = type { %struct.run_softc* }

@RUN_N_XFER = common dso_local global i32 0, align 4
@RUN_RATECTL_OFF = common dso_local global i32 0, align 4
@RUN_CMDQ_ABORT = common dso_local global i32 0, align 4
@RUN_EP_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @run_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.run_softc* @device_get_softc(i32 %6)
  store %struct.run_softc* %7, %struct.run_softc** %3, align 8
  %8 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %9 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %8, i32 0, i32 5
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %11 = call i32 @RUN_LOCK(%struct.run_softc* %10)
  %12 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %13 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %15 = call i32 @RUN_UNLOCK(%struct.run_softc* %14)
  %16 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %17 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RUN_N_XFER, align 4
  %20 = call i32 @usbd_transfer_unsetup(i32 %18, i32 %19)
  %21 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %22 = call i32 @RUN_LOCK(%struct.run_softc* %21)
  %23 = load i32, i32* @RUN_RATECTL_OFF, align 4
  %24 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %25 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @RUN_CMDQ_ABORT, align 4
  %27 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %28 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %30 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %29, i32 0, i32 8
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %44, %1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RUN_EP_QUEUES, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %37 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %38 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @run_unsetup_tx_list(%struct.run_softc* %36, i32* %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %49 = call i32 @run_drain_mbufq(%struct.run_softc* %48)
  %50 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %51 = call i32 @RUN_UNLOCK(%struct.run_softc* %50)
  %52 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %53 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %53, i32 0, i32 0
  %55 = load %struct.run_softc*, %struct.run_softc** %54, align 8
  %56 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %57 = icmp eq %struct.run_softc* %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %47
  %59 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %60 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %59, i32 0, i32 4
  %61 = call i32 @usb_callout_drain(i32* %60)
  %62 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %63 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %64 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %63, i32 0, i32 3
  %65 = call i32 @ieee80211_draintask(%struct.ieee80211com* %62, i32* %64)
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %67 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %68 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %67, i32 0, i32 2
  %69 = call i32 @ieee80211_draintask(%struct.ieee80211com* %66, i32* %68)
  %70 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %71 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %70)
  br label %72

72:                                               ; preds = %58, %47
  %73 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %74 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %73, i32 0, i32 1
  %75 = call i32 @mtx_destroy(i32* %74)
  ret i32 0
}

declare dso_local %struct.run_softc* @device_get_softc(i32) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @run_unsetup_tx_list(%struct.run_softc*, i32*) #1

declare dso_local i32 @run_drain_mbufq(%struct.run_softc*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
