; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_enable_tsf_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_enable_tsf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RT2573_TXRX_CSR10 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RT2573_TXRX_CSR9 = common dso_local global i32 0, align 4
@RT2573_TSF_TIMER_EN = common dso_local global i32 0, align 4
@RT2573_TBTT_TIMER_EN = common dso_local global i32 0, align 4
@RT2573_TSF_SYNC_MODE_STA = common dso_local global i32 0, align 4
@RT2573_TSF_SYNC_MODE_IBSS = common dso_local global i32 0, align 4
@RT2573_BCN_TX_EN = common dso_local global i32 0, align 4
@RT2573_TSF_SYNC_MODE_HOSTAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Enabling TSF failed. undefined opmode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*)* @rum_enable_tsf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_enable_tsf_sync(%struct.rum_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  %8 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %8, i32 0, i32 1
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %11)
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %5, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 128
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %19 = load i32, i32* @RT2573_TXRX_CSR10, align 4
  %20 = call i64 @rum_write(%struct.rum_softc* %18, i32 %19, i32 4104)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %2, align 4
  br label %89

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %27 = load i32, i32* @RT2573_TXRX_CSR9, align 4
  %28 = call i32 @rum_read(%struct.rum_softc* %26, i32 %27)
  %29 = and i32 %28, -16777216
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 16
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @RT2573_TSF_TIMER_EN, align 4
  %40 = load i32, i32* @RT2573_TBTT_TIMER_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %68 [
    i32 128, label %47
    i32 129, label %52
    i32 130, label %60
  ]

47:                                               ; preds = %25
  %48 = load i32, i32* @RT2573_TSF_SYNC_MODE_STA, align 4
  %49 = call i32 @RT2573_TSF_SYNC_MODE(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %77

52:                                               ; preds = %25
  %53 = load i32, i32* @RT2573_TSF_SYNC_MODE_IBSS, align 4
  %54 = call i32 @RT2573_TSF_SYNC_MODE(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @RT2573_BCN_TX_EN, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %77

60:                                               ; preds = %25
  %61 = load i32, i32* @RT2573_TSF_SYNC_MODE_HOSTAP, align 4
  %62 = call i32 @RT2573_TSF_SYNC_MODE(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @RT2573_BCN_TX_EN, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %77

68:                                               ; preds = %25
  %69 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %2, align 4
  br label %89

77:                                               ; preds = %60, %52, %47
  %78 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %79 = load i32, i32* @RT2573_TXRX_CSR9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @rum_write(%struct.rum_softc* %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @EIO, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %77
  %86 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @rum_set_sleep_time(%struct.rum_softc* %86, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %83, %68, %22
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @rum_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @rum_read(%struct.rum_softc*, i32) #1

declare dso_local i32 @RT2573_TSF_SYNC_MODE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @rum_set_sleep_time(%struct.rum_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
