; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@UATH_FLAG_INVALID = common dso_local global i32 0, align 4
@UATH_N_XFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uath_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.uath_softc* @device_get_softc(i32 %6)
  store %struct.uath_softc* %7, %struct.uath_softc** %3, align 8
  %8 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %8, i32 0, i32 16
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %11 = call i32 @UATH_LOCK(%struct.uath_softc* %10)
  %12 = load i32, i32* @UATH_FLAG_INVALID, align 4
  %13 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %17, i32 0, i32 14
  %19 = call i32 @STAILQ_INIT(i32* %18)
  %20 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %20, i32 0, i32 13
  %22 = call i32 @STAILQ_INIT(i32* %21)
  %23 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %23, i32 0, i32 12
  %25 = call i32 @STAILQ_INIT(i32* %24)
  %26 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %26, i32 0, i32 11
  %28 = call i32 @STAILQ_INIT(i32* %27)
  %29 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %30 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %29, i32 0, i32 10
  %31 = call i32 @STAILQ_INIT(i32* %30)
  %32 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %32, i32 0, i32 9
  %34 = call i32 @STAILQ_INIT(i32* %33)
  %35 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %35, i32 0, i32 8
  %37 = call i32 @STAILQ_INIT(i32* %36)
  %38 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %38, i32 0, i32 7
  %40 = call i32 @STAILQ_INIT(i32* %39)
  %41 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %41, i32 0, i32 6
  %43 = call i32 @STAILQ_INIT(i32* %42)
  %44 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %45 = call i32 @uath_stop(%struct.uath_softc* %44)
  %46 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %47 = call i32 @UATH_UNLOCK(%struct.uath_softc* %46)
  %48 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %48, i32 0, i32 5
  %50 = call i32 @callout_drain(i32* %49)
  %51 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %51, i32 0, i32 4
  %53 = call i32 @callout_drain(i32* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %67, %1
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @UATH_N_XFERS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %60 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usbd_transfer_drain(i32 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %72 = call i32 @UATH_LOCK(%struct.uath_softc* %71)
  %73 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %74 = call i32 @uath_free_rx_data_list(%struct.uath_softc* %73)
  %75 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %76 = call i32 @uath_free_tx_data_list(%struct.uath_softc* %75)
  %77 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %78 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %79 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @uath_free_cmd_list(%struct.uath_softc* %77, i32 %80)
  %82 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %83 = call i32 @UATH_UNLOCK(%struct.uath_softc* %82)
  %84 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %85 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @UATH_N_XFERS, align 4
  %88 = call i32 @usbd_transfer_unsetup(i32* %86, i32 %87)
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %90 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %89)
  %91 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %92 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %91, i32 0, i32 1
  %93 = call i32 @mbufq_drain(i32* %92)
  %94 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %95 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %94, i32 0, i32 0
  %96 = call i32 @mtx_destroy(i32* %95)
  ret i32 0
}

declare dso_local %struct.uath_softc* @device_get_softc(i32) #1

declare dso_local i32 @UATH_LOCK(%struct.uath_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @uath_stop(%struct.uath_softc*) #1

declare dso_local i32 @UATH_UNLOCK(%struct.uath_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @uath_free_rx_data_list(%struct.uath_softc*) #1

declare dso_local i32 @uath_free_tx_data_list(%struct.uath_softc*) #1

declare dso_local i32 @uath_free_cmd_list(%struct.uath_softc*, i32) #1

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
