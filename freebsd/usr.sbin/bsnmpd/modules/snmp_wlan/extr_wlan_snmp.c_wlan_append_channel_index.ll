; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_append_channel_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_append_channel_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn_oid = type { i32, i32* }
%struct.wlan_iface = type { i32*, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asn_oid*, i32, %struct.wlan_iface*, %struct.ieee80211_channel*)* @wlan_append_channel_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_append_channel_index(%struct.asn_oid* %0, i32 %1, %struct.wlan_iface* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlan_iface*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wlan_iface* %2, %struct.wlan_iface** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.wlan_iface*, %struct.wlan_iface** %7, align 8
  %12 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @strlen(i32* %13)
  %15 = add nsw i32 %10, %14
  %16 = add nsw i32 %15, 2
  %17 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %18 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wlan_iface*, %struct.wlan_iface** %7, align 8
  %20 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @strlen(i32* %21)
  %23 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %24 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %53, %4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %7, align 8
  %32 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @strlen(i32* %33)
  %35 = icmp sle i32 %30, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %7, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %46 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %44, i32* %52, align 4
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %58 = load %struct.wlan_iface*, %struct.wlan_iface** %7, align 8
  %59 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %58, i32 0, i32 1
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %59, align 8
  %61 = ptrtoint %struct.ieee80211_channel* %57 to i64
  %62 = ptrtoint %struct.ieee80211_channel* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = add nsw i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %68 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.wlan_iface*, %struct.wlan_iface** %7, align 8
  %72 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @strlen(i32* %73)
  %75 = add nsw i32 %70, %74
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %69, i64 %77
  store i32 %66, i32* %78, align 4
  ret void
}

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
