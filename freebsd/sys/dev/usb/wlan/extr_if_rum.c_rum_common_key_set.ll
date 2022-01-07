; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_common_key_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_common_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%struct.ieee80211_key = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@IEEE80211_CIPHER_TKIP = common dso_local global i64 0, align 8
@IEEE80211_KEYBUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, %struct.ieee80211_key*, i64)* @rum_common_key_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_common_key_set(%struct.rum_softc* %0, %struct.ieee80211_key* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rum_softc*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca i64, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %5, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @rum_write_multi(%struct.rum_softc* %8, i64 %9, i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_CIPHER_TKIP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %20
  %29 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @IEEE80211_KEYBUF_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @rum_write_multi(%struct.rum_softc* %29, i64 %32, i32 %35, i32 8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %55

40:                                               ; preds = %28
  %41 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @IEEE80211_KEYBUF_SIZE, align 8
  %44 = add nsw i64 %42, %43
  %45 = add nsw i64 %44, 8
  %46 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @rum_write_multi(%struct.rum_softc* %41, i64 %45, i32 %48, i32 8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @EIO, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %20
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51, %38, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @rum_write_multi(%struct.rum_softc*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
