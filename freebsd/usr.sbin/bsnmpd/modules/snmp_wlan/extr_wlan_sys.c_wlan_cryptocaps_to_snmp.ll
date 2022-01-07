; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_cryptocaps_to_snmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_cryptocaps_to_snmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CRYPTO_AES_CCM = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_AES_OCB = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_CKIP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIPMIC = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_WEP = common dso_local global i32 0, align 4
@wlanCryptoCaps_aes = common dso_local global i32 0, align 4
@wlanCryptoCaps_aesCcm = common dso_local global i32 0, align 4
@wlanCryptoCaps_ckip = common dso_local global i32 0, align 4
@wlanCryptoCaps_tkip = common dso_local global i32 0, align 4
@wlanCryptoCaps_tkipMic = common dso_local global i32 0, align 4
@wlanCryptoCaps_wep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wlan_cryptocaps_to_snmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_cryptocaps_to_snmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
