; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_mac_macinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_mac_macinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }
%struct.ieee80211req_maclist = type { i32 }
%struct.wlan_mac_mac = type { i32 }

@RowStatus_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*, %struct.ieee80211req_maclist*)* @wlan_add_mac_macinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_add_mac_macinfo(%struct.wlan_iface* %0, %struct.ieee80211req_maclist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca %struct.ieee80211req_maclist*, align 8
  %6 = alloca %struct.wlan_mac_mac*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store %struct.ieee80211req_maclist* %1, %struct.ieee80211req_maclist** %5, align 8
  %7 = load %struct.ieee80211req_maclist*, %struct.ieee80211req_maclist** %5, align 8
  %8 = getelementptr inbounds %struct.ieee80211req_maclist, %struct.ieee80211req_maclist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wlan_mac_mac* @wlan_mac_new_mac(i32 %9)
  store %struct.wlan_mac_mac* %10, %struct.wlan_mac_mac** %6, align 8
  %11 = icmp eq %struct.wlan_mac_mac* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @RowStatus_active, align 4
  %15 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %6, align 8
  %16 = getelementptr inbounds %struct.wlan_mac_mac, %struct.wlan_mac_mac* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %18 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %6, align 8
  %19 = call i64 @wlan_mac_add_mac(%struct.wlan_iface* %17, %struct.wlan_mac_mac* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %6, align 8
  %23 = call i32 @wlan_mac_free_mac(%struct.wlan_mac_mac* %22)
  store i32 -1, i32* %3, align 4
  br label %25

24:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %21, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.wlan_mac_mac* @wlan_mac_new_mac(i32) #1

declare dso_local i64 @wlan_mac_add_mac(%struct.wlan_iface*, %struct.wlan_mac_mac*) #1

declare dso_local i32 @wlan_mac_free_mac(%struct.wlan_mac_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
