; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_sleep_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_set_sleep_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@RT2573_TBCN_EXP_MAX = common dso_local global i32 0, align 4
@RT2573_TBCN_DELAY_MAX = common dso_local global i32 0, align 4
@RT2573_MAC_CSR11 = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, i32)* @rum_set_sleep_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_set_sleep_time(%struct.rum_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %11 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %10, i32 0, i32 1
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %13 = call i32 @RUM_LOCK_ASSERT(%struct.rum_softc* %12)
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RT2573_TBCN_EXP_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @RT2573_TBCN_EXP_MAX, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @RT2573_TBCN_DELAY_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @RT2573_TBCN_DELAY_MAX, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %37 = load i32, i32* @RT2573_MAC_CSR11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @RT2573_TBCN_EXP(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @RT2573_TBCN_DELAY(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @RT2573_TBCN_EXP_MAX, align 4
  %44 = call i32 @RT2573_TBCN_EXP(i32 %43)
  %45 = load i32, i32* @RT2573_TBCN_DELAY_MAX, align 4
  %46 = call i32 @RT2573_TBCN_DELAY(i32 %45)
  %47 = or i32 %44, %46
  %48 = call i64 @rum_modbits(%struct.rum_softc* %36, i32 %37, i32 %42, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %35
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @IEEE80211_TU_TO_TICKS(i32 %59)
  %61 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %62 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %52
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @RUM_LOCK_ASSERT(%struct.rum_softc*) #1

declare dso_local i64 @rum_modbits(%struct.rum_softc*, i32, i32, i32) #1

declare dso_local i32 @RT2573_TBCN_EXP(i32) #1

declare dso_local i32 @RT2573_TBCN_DELAY(i32) #1

declare dso_local i32 @IEEE80211_TU_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
