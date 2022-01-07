; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_tx_crypto_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_tx_crypto_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_KEY_SWCRYPT = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@RT2573_TX_KEY_PAIR = common dso_local global i32 0, align 4
@RT2573_SKEY_MAX = common dso_local global i64 0, align 8
@IEEE80211_CIPHER_TKIP = common dso_local global i64 0, align 8
@RT2573_TX_TKIPMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, %struct.ieee80211_node*, %struct.ieee80211_key*)* @rum_tx_crypto_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_tx_crypto_flags(%struct.rum_softc* %0, %struct.ieee80211_node* %1, %struct.ieee80211_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rum_softc*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca %struct.ieee80211vap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %5, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_key* %2, %struct.ieee80211_key** %7, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IEEE80211_KEY_SWCRYPT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @rum_crypto_mode(%struct.rum_softc* %31, i64 %32, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %83

40:                                               ; preds = %22
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @RT2573_TX_CIP_MODE(i64 %41)
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %46 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_key*, %struct.ieee80211_key** %47, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %48, i64 0
  %50 = icmp uge %struct.ieee80211_key* %45, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %53, i32 0, i32 0
  %55 = load %struct.ieee80211_key*, %struct.ieee80211_key** %54, align 8
  %56 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %57 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %55, i64 %56
  %58 = icmp ult %struct.ieee80211_key* %52, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %51, %40
  %60 = load i32, i32* @RT2573_TX_KEY_PAIR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %68

63:                                               ; preds = %51
  %64 = load i64, i64* @RT2573_SKEY_MAX, align 8
  %65 = mul nsw i64 0, %64
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @RT2573_TX_KEY_ID(i64 %69)
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @IEEE80211_CIPHER_TKIP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @RT2573_TX_TKIPMIC, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %68
  br label %81

81:                                               ; preds = %80, %3
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %39
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @rum_crypto_mode(%struct.rum_softc*, i64, i32) #1

declare dso_local i32 @RT2573_TX_CIP_MODE(i64) #1

declare dso_local i32 @RT2573_TX_KEY_ID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
