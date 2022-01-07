; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_rx_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_rx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@upgt_rx_rate.cck_upgt2rate = internal constant [4 x i32] [i32 2, i32 4, i32 11, i32 22], align 16
@upgt_rx_rate.ofdm_upgt2rate = internal constant [12 x i32] [i32 2, i32 4, i32 11, i32 22, i32 12, i32 18, i32 24, i32 36, i32 48, i32 72, i32 96, i32 108], align 16
@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@IEEE80211_MODE_11G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.upgt_softc*, i32)* @upgt_rx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_rx_rate(%struct.upgt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.upgt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.upgt_softc*, %struct.upgt_softc** %4, align 8
  %8 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %7, i32 0, i32 0
  store %struct.ieee80211com* %8, %struct.ieee80211com** %6, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 3
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* @upgt_rx_rate.cck_upgt2rate, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %17, %14, %2
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_MODE_11G, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 11
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 15
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [12 x i32], [12 x i32]* @upgt_rx_rate.ofdm_upgt2rate, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %35, %32, %26
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %38, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
