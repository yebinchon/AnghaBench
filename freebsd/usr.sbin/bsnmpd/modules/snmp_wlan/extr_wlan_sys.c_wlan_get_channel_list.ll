; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, %struct.ieee80211_channel*, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211req_chaninfo = type { i64, i32, %struct.ieee80211_channel* }
%struct.ieee80211req_chanlist = type { i64, i32, %struct.ieee80211_channel* }

@WLAN_SNMP_MAX_CHANS = common dso_local global i32 0, align 4
@IEEE80211_IOC_CHANINFO = common dso_local global i32 0, align 4
@IEEE80211_IOC_CHANLIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_get_channel_list(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211req_chaninfo*, align 8
  %9 = alloca %struct.ieee80211req_chanlist, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @WLAN_SNMP_MAX_CHANS, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = add i64 24, %13
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @malloc(i64 %15)
  %17 = inttoptr i64 %16 to %struct.ieee80211req_chaninfo*
  store %struct.ieee80211req_chaninfo* %17, %struct.ieee80211req_chaninfo** %8, align 8
  %18 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %19 = icmp eq %struct.ieee80211req_chaninfo* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %128

21:                                               ; preds = %1
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %23 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_IOC_CHANINFO, align 4
  %26 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %27 = bitcast %struct.ieee80211req_chaninfo* %26 to %struct.ieee80211req_chanlist*
  %28 = call i64 @wlan_ioctl(i32 %24, i32 %25, i32* %4, %struct.ieee80211req_chanlist* %27, i64* %7, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %128

31:                                               ; preds = %21
  store i64 24, i64* %7, align 8
  %32 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %33 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_IOC_CHANLIST, align 4
  %36 = call i64 @wlan_ioctl(i32 %34, i32 %35, i32* %4, %struct.ieee80211req_chanlist* %9, i64* %7, i32 0)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %122

39:                                               ; preds = %31
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %63, %39
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %47, i32 0, i32 2
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i64 %50
  store %struct.ieee80211_channel* %51, %struct.ieee80211_channel** %10, align 8
  %52 = getelementptr inbounds %struct.ieee80211req_chanlist, %struct.ieee80211req_chanlist* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @isset(i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %63

60:                                               ; preds = %46
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  br label %40

66:                                               ; preds = %40
  %67 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %68 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = mul i64 %70, 4
  %72 = call i64 @reallocf(%struct.ieee80211_channel* %69, i64 %71)
  %73 = inttoptr i64 %72 to %struct.ieee80211_channel*
  %74 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %75 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %74, i32 0, i32 1
  store %struct.ieee80211_channel* %73, %struct.ieee80211_channel** %75, align 8
  %76 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %77 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %76, i32 0, i32 1
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %77, align 8
  %79 = icmp eq %struct.ieee80211_channel* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %122

81:                                               ; preds = %66
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %84 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %85

85:                                               ; preds = %115, %81
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %88 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %85
  %92 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %92, i32 0, i32 2
  %94 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %94, i64 %95
  store %struct.ieee80211_channel* %96, %struct.ieee80211_channel** %10, align 8
  %97 = getelementptr inbounds %struct.ieee80211req_chanlist, %struct.ieee80211req_chanlist* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %100 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @isset(i32 %98, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %91
  br label %115

105:                                              ; preds = %91
  %106 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %107 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %106, i32 0, i32 1
  %108 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %108, i64 %109
  %111 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %112 = call i32 @memcpy(%struct.ieee80211_channel* %110, %struct.ieee80211_channel* %111, i32 4)
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %105, %104
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %5, align 8
  br label %85

118:                                              ; preds = %85
  %119 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %120 = bitcast %struct.ieee80211req_chaninfo* %119 to %struct.ieee80211req_chanlist*
  %121 = call i32 @free(%struct.ieee80211req_chanlist* %120)
  store i32 0, i32* %2, align 4
  br label %128

122:                                              ; preds = %80, %38
  %123 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %124 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %8, align 8
  %126 = bitcast %struct.ieee80211req_chaninfo* %125 to %struct.ieee80211req_chanlist*
  %127 = call i32 @free(%struct.ieee80211req_chanlist* %126)
  store i32 -1, i32* %2, align 4
  br label %128

128:                                              ; preds = %122, %118, %30, %20
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211req_chanlist*, i64*, i32) #1

declare dso_local i32 @isset(i32, i32) #1

declare dso_local i64 @reallocf(%struct.ieee80211_channel*, i64) #1

declare dso_local i32 @memcpy(%struct.ieee80211_channel*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @free(%struct.ieee80211req_chanlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
