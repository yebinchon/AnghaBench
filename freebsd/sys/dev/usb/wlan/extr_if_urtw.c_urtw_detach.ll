; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@URTW_DETACHED = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_8187B_N_XFERS = common dso_local global i32 0, align 4
@URTW_8187L_N_XFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @urtw_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.urtw_softc* @device_get_softc(i32 %7)
  store %struct.urtw_softc* %8, %struct.urtw_softc** %3, align 8
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %10 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %9, i32 0, i32 13
  store %struct.ieee80211com* %10, %struct.ieee80211com** %4, align 8
  %11 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %12 = call i32 @URTW_LOCK(%struct.urtw_softc* %11)
  %13 = load i32, i32* @URTW_DETACHED, align 4
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %15 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %19 = call i32 @urtw_stop(%struct.urtw_softc* %18)
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %21 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %20)
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %24 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %23, i32 0, i32 12
  %25 = call i32 @ieee80211_draintask(%struct.ieee80211com* %22, i32* %24)
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %28 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %27, i32 0, i32 11
  %29 = call i32 @ieee80211_draintask(%struct.ieee80211com* %26, i32* %28)
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %31 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %30, i32 0, i32 10
  %32 = call i32 @usb_callout_drain(i32* %31)
  %33 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %34 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %33, i32 0, i32 9
  %35 = call i32 @callout_drain(i32* %34)
  %36 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %37 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @URTW_RTL8187B, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @URTW_8187B_N_XFERS, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @URTW_8187L_N_XFERS, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %6, align 4
  %48 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %49 = call i32 @URTW_LOCK(%struct.urtw_softc* %48)
  %50 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %51 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %50, i32 0, i32 8
  %52 = call i32 @STAILQ_INIT(i32* %51)
  %53 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %54 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %53, i32 0, i32 7
  %55 = call i32 @STAILQ_INIT(i32* %54)
  %56 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %57 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %56, i32 0, i32 6
  %58 = call i32 @STAILQ_INIT(i32* %57)
  %59 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %60 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %59, i32 0, i32 5
  %61 = call i32 @STAILQ_INIT(i32* %60)
  %62 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %63 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %62, i32 0, i32 4
  %64 = call i32 @STAILQ_INIT(i32* %63)
  %65 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %66 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %80, %46
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %73 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usbd_transfer_drain(i32 %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %67

83:                                               ; preds = %67
  %84 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %85 = call i32 @URTW_LOCK(%struct.urtw_softc* %84)
  %86 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %87 = call i32 @urtw_free_tx_data_list(%struct.urtw_softc* %86)
  %88 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %89 = call i32 @urtw_free_rx_data_list(%struct.urtw_softc* %88)
  %90 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %91 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %90)
  %92 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %93 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @usbd_transfer_unsetup(i32* %94, i32 %95)
  %97 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %98 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %97)
  %99 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %100 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %99, i32 0, i32 2
  %101 = call i32 @mbufq_drain(i32* %100)
  %102 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %103 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %102, i32 0, i32 1
  %104 = call i32 @mtx_destroy(i32* %103)
  ret i32 0
}

declare dso_local %struct.urtw_softc* @device_get_softc(i32) #1

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_stop(%struct.urtw_softc*) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @urtw_free_tx_data_list(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_free_rx_data_list(%struct.urtw_softc*) #1

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
