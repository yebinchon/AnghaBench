; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mac_new_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mac_new_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_mac_mac = type { i32, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@RowStatus_notReady = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wlan_mac_mac* @wlan_mac_new_mac(i32* %0) #0 {
  %2 = alloca %struct.wlan_mac_mac*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.wlan_mac_mac*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i64 @malloc(i32 8)
  %6 = inttoptr i64 %5 to %struct.wlan_mac_mac*
  store %struct.wlan_mac_mac* %6, %struct.wlan_mac_mac** %4, align 8
  %7 = icmp eq %struct.wlan_mac_mac* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wlan_mac_mac* null, %struct.wlan_mac_mac** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %4, align 8
  %11 = call i32 @memset(%struct.wlan_mac_mac* %10, i32 0, i32 8)
  %12 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %4, align 8
  %13 = getelementptr inbounds %struct.wlan_mac_mac, %struct.wlan_mac_mac* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %17 = call i32 @memcpy(i32 %14, i32* %15, i32 %16)
  %18 = load i32, i32* @RowStatus_notReady, align 4
  %19 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %4, align 8
  %20 = getelementptr inbounds %struct.wlan_mac_mac, %struct.wlan_mac_mac* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %4, align 8
  store %struct.wlan_mac_mac* %21, %struct.wlan_mac_mac** %2, align 8
  br label %22

22:                                               ; preds = %9, %8
  %23 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %2, align 8
  ret %struct.wlan_mac_mac* %23
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.wlan_mac_mac*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
