; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_mac_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_mac_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i64, i32, i8* }
%struct.ieee80211req = type { i32, i8*, i32 }

@IEEE80211_MACCMD_POLICY = common dso_local global i8* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_IOC_MACCMD = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"iface %s - get param: ioctl(%d) failed: %s\00", align 1
@wlanMACAccessControlPolicy_open = common dso_local global i8* null, align 8
@wlanMACAccessControlPolicy_allow = common dso_local global i8* null, align 8
@wlanMACAccessControlPolicy_deny = common dso_local global i8* null, align 8
@wlanMACAccessControlPolicy_radius = common dso_local global i8* null, align 8
@IEEE80211_MACCMD_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_get_mac_policy(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211req, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  %7 = load i8*, i8** @IEEE80211_MACCMD_POLICY, align 8
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %9 = call i32 @memset(%struct.ieee80211req* %6, i32 0, i32 24)
  %10 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %6, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = call i32 @strlcpy(i32 %11, i32 %14, i32 %15)
  %17 = load i32, i32* @IEEE80211_IOC_MACCMD, align 4
  %18 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** @IEEE80211_MACCMD_POLICY, align 8
  %20 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %6, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @sock, align 4
  %22 = load i32, i32* @SIOCG80211, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, %struct.ieee80211req* %6)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %1
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINVAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %32 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = call i32 @syslog(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %37)
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  store i32 -1, i32* %2, align 4
  br label %82

41:                                               ; preds = %25
  %42 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %43 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** @wlanMACAccessControlPolicy_open, align 8
  %45 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %46 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %2, align 4
  br label %82

47:                                               ; preds = %1
  %48 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %49 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  switch i32 %50, label %64 [
    i32 131, label %51
    i32 130, label %55
    i32 128, label %59
    i32 129, label %63
  ]

51:                                               ; preds = %47
  %52 = load i8*, i8** @wlanMACAccessControlPolicy_allow, align 8
  %53 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %54 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %68

55:                                               ; preds = %47
  %56 = load i8*, i8** @wlanMACAccessControlPolicy_deny, align 8
  %57 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %58 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  br label %68

59:                                               ; preds = %47
  %60 = load i8*, i8** @wlanMACAccessControlPolicy_radius, align 8
  %61 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %62 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %68

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %47, %63
  %65 = load i8*, i8** @wlanMACAccessControlPolicy_open, align 8
  %66 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %67 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %59, %55, %51
  store i64 0, i64* %5, align 8
  %69 = load i32, i32* @IEEE80211_MACCMD_LIST, align 4
  store i32 %69, i32* %4, align 4
  %70 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %71 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IEEE80211_IOC_MACCMD, align 4
  %74 = call i64 @wlan_ioctl(i32 %72, i32 %73, i32* %4, i32* null, i64* %5, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %82

77:                                               ; preds = %68
  %78 = load i64, i64* %5, align 8
  %79 = udiv i64 %78, 8
  %80 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %81 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %76, %41, %29
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
