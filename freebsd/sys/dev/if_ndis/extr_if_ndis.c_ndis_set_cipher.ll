; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_set_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_set_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@WPA_CSE_WEP40 = common dso_local global i32 0, align 4
@WPA_CSE_WEP104 = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_WEP = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@NDIS_80211_WEPSTAT_ENC1ENABLED = common dso_local global i64 0, align 8
@WPA_CSE_TKIP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIP = common dso_local global i32 0, align 4
@NDIS_80211_WEPSTAT_ENC2ENABLED = common dso_local global i64 0, align 8
@WPA_CSE_CCMP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_AES_CCM = common dso_local global i32 0, align 4
@NDIS_80211_WEPSTAT_ENC3ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Setting cipher to %d\0A\00", align 1
@OID_802_11_ENCRYPTION_STATUS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndis_softc*, i32)* @ndis_set_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndis_set_cipher(%struct.ndis_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ndis_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ndis_softc* %0, %struct.ndis_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %11, i32 0, i32 0
  store %struct.ieee80211com* %12, %struct.ieee80211com** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WPA_CSE_WEP40, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WPA_CSE_WEP104, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16, %2
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IEEE80211_CRYPTO_WEP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOTSUP, align 4
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %20
  %30 = load i64, i64* @NDIS_80211_WEPSTAT_ENC1ENABLED, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @WPA_CSE_TKIP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE80211_CRYPTO_TKIP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOTSUP, align 4
  store i32 %43, i32* %3, align 4
  br label %86

44:                                               ; preds = %35
  %45 = load i64, i64* @NDIS_80211_WEPSTAT_ENC2ENABLED, align 8
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @WPA_CSE_CCMP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_CRYPTO_AES_CCM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOTSUP, align 4
  store i32 %58, i32* %3, align 4
  br label %86

59:                                               ; preds = %50
  %60 = load i64, i64* @NDIS_80211_WEPSTAT_ENC3ENABLED, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %59, %46
  %62 = load i64, i64* %9, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @DPRINTF(i8* %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %67 = load i32, i32* @OID_802_11_ENCRYPTION_STATUS, align 4
  %68 = call i32 @ndis_set_info(%struct.ndis_softc* %66, i32 %67, i64* %9, i32* %8)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %86

73:                                               ; preds = %61
  store i32 8, i32* %8, align 4
  %74 = load %struct.ndis_softc*, %struct.ndis_softc** %4, align 8
  %75 = load i32, i32* @OID_802_11_ENCRYPTION_STATUS, align 4
  %76 = call i32 @ndis_get_info(%struct.ndis_softc* %74, i32 %75, i64* %9, i32* %8)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %73
  %84 = load i32, i32* @ENODEV, align 4
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %83, %71, %57, %42, %27
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ndis_set_info(%struct.ndis_softc*, i32, i64*, i32*) #1

declare dso_local i32 @ndis_get_info(%struct.ndis_softc*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
