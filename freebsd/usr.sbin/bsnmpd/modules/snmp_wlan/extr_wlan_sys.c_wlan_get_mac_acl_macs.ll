; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_mac_acl_macs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_mac_acl_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i32, i32, i64 }
%struct.ieee80211req = type { i32, i8*, i32 }
%struct.ieee80211req_maclist = type { i32 }

@IEEE80211_MACCMD_LIST = common dso_local global i8* null, align 8
@wlanMACAccessControlPolicy_radius = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_IOC_MACCMD = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"iface %s - get param: ioctl(%d) failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_get_mac_acl_macs(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211req, align 8
  %10 = alloca %struct.ieee80211req_maclist*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  %11 = load i8*, i8** @IEEE80211_MACCMD_LIST, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %14 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @wlanMACAccessControlPolicy_radius, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %20 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  store i32 0, i32* %2, align 4
  br label %100

21:                                               ; preds = %1
  %22 = call i32 @memset(%struct.ieee80211req* %9, i32 0, i32 24)
  %23 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %9, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = call i32 @strlcpy(i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* @IEEE80211_IOC_MACCMD, align 4
  %31 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i8*, i8** @IEEE80211_MACCMD_LIST, align 8
  %33 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %9, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @sock, align 4
  %35 = load i32, i32* @SIOCG80211, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.ieee80211req* %9)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %21
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @EINVAL, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %45 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* @errno, align 8
  %50 = call i32 @strerror(i64 %49)
  %51 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48, i32 %50)
  %52 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %53 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  store i32 -1, i32* %2, align 4
  br label %100

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %60 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %100

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @malloc(i64 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %8, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %100

67:                                               ; preds = %61
  %68 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %69 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_IOC_MACCMD, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @wlan_ioctl(i32 %70, i32 %71, i32* %6, i32* %72, i64* %7, i32 0)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %100

76:                                               ; preds = %67
  %77 = load i64, i64* %7, align 8
  %78 = udiv i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = bitcast i32* %80 to %struct.ieee80211req_maclist*
  store %struct.ieee80211req_maclist* %81, %struct.ieee80211req_maclist** %10, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %93, %76
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %88 = load %struct.ieee80211req_maclist*, %struct.ieee80211req_maclist** %10, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ieee80211req_maclist, %struct.ieee80211req_maclist* %88, i64 %90
  %92 = call i32 @wlan_add_mac_macinfo(%struct.wlan_iface* %87, %struct.ieee80211req_maclist* %91)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %82

96:                                               ; preds = %82
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %99 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %75, %66, %58, %42, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

declare dso_local i32 @wlan_add_mac_macinfo(%struct.wlan_iface*, %struct.ieee80211req_maclist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
