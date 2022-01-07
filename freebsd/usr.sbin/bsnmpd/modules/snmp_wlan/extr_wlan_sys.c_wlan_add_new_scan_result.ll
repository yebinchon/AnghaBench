; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_new_scan_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_new_scan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }
%struct.ieee80211req_scan_result = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wlan_scan_result = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*, %struct.ieee80211req_scan_result*, i32*)* @wlan_add_new_scan_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_add_new_scan_result(%struct.wlan_iface* %0, %struct.ieee80211req_scan_result* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlan_iface*, align 8
  %6 = alloca %struct.ieee80211req_scan_result*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wlan_scan_result*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %5, align 8
  store %struct.ieee80211req_scan_result* %1, %struct.ieee80211req_scan_result** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wlan_scan_result* @wlan_scan_new_result(i32* %9, i32 %12)
  store %struct.wlan_scan_result* %13, %struct.wlan_scan_result** %8, align 8
  %14 = icmp eq %struct.wlan_scan_result* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  %17 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wlan_channel_flags_to_snmp_phy(i32 %19)
  %21 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %22 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %27 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %32 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %37 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %42 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211req_scan_result*, %struct.ieee80211req_scan_result** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211req_scan_result, %struct.ieee80211req_scan_result* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wlan_peercaps_to_snmp(i32 %45)
  %47 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %48 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %50 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %51 = call i64 @wlan_scan_add_result(%struct.wlan_iface* %49, %struct.wlan_scan_result* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %16
  %54 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %8, align 8
  %55 = call i32 @wlan_scan_free_result(%struct.wlan_scan_result* %54)
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.wlan_scan_result* @wlan_scan_new_result(i32*, i32) #1

declare dso_local i32 @wlan_channel_flags_to_snmp_phy(i32) #1

declare dso_local i32 @wlan_peercaps_to_snmp(i32) #1

declare dso_local i64 @wlan_scan_add_result(%struct.wlan_iface*, %struct.wlan_scan_result*) #1

declare dso_local i32 @wlan_scan_free_result(%struct.wlan_scan_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
