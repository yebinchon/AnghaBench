; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_peerinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_peerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_peer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211req_sta_info = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_peer* (%struct.ieee80211req_sta_info*)* @wlan_add_peerinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_peer* @wlan_add_peerinfo(%struct.ieee80211req_sta_info* %0) #0 {
  %2 = alloca %struct.wlan_peer*, align 8
  %3 = alloca %struct.ieee80211req_sta_info*, align 8
  %4 = alloca %struct.wlan_peer*, align 8
  store %struct.ieee80211req_sta_info* %0, %struct.ieee80211req_sta_info** %3, align 8
  %5 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.wlan_peer* @wlan_new_peer(i32 %7)
  store %struct.wlan_peer* %8, %struct.wlan_peer** %4, align 8
  %9 = icmp eq %struct.wlan_peer* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.wlan_peer* null, %struct.wlan_peer** %2, align 8
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @IEEE80211_AID(i32 %14)
  %16 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %17 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %22 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %27 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %32 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %37 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %42 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %47 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %54 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %61 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %66 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wlan_peercaps_to_snmp(i32 %69)
  %71 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %72 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @wlan_peerstate_to_snmp(i32 %75)
  %77 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %78 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %80 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %83 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %85 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  %88 = getelementptr inbounds %struct.wlan_peer, %struct.wlan_peer* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  store %struct.wlan_peer* %89, %struct.wlan_peer** %2, align 8
  br label %90

90:                                               ; preds = %11, %10
  %91 = load %struct.wlan_peer*, %struct.wlan_peer** %2, align 8
  ret %struct.wlan_peer* %91
}

declare dso_local %struct.wlan_peer* @wlan_new_peer(i32) #1

declare dso_local i32 @IEEE80211_AID(i32) #1

declare dso_local i32 @wlan_peercaps_to_snmp(i32) #1

declare dso_local i32 @wlan_peerstate_to_snmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
