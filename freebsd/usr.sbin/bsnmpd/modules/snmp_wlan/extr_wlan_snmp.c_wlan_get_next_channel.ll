; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.asn_oid = type { i64 }
%struct.wlan_iface = type { i64, i64, %struct.ieee80211_channel* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.asn_oid*, i64, %struct.wlan_iface**)* @wlan_get_next_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @wlan_get_next_channel(%struct.asn_oid* %0, i64 %1, %struct.wlan_iface** %2) #0 {
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wlan_iface**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %7, align 8
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %17 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = sub nsw i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = call %struct.wlan_iface* (...) @wlan_first_interface()
  %24 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %23, %struct.wlan_iface** %24, align 8
  br label %25

25:                                               ; preds = %55, %22
  %26 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %27 = load %struct.wlan_iface*, %struct.wlan_iface** %26, align 8
  %28 = icmp ne %struct.wlan_iface* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %30, align 8
  %32 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RowStatus_active, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %55

37:                                               ; preds = %29
  %38 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %38, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %45 = load %struct.wlan_iface*, %struct.wlan_iface** %44, align 8
  %46 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %45, i32 0, i32 2
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %46, align 8
  %48 = icmp ne %struct.ieee80211_channel* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %51 = load %struct.wlan_iface*, %struct.wlan_iface** %50, align 8
  %52 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %51, i32 0, i32 2
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %52, align 8
  store %struct.ieee80211_channel* %53, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

54:                                               ; preds = %43, %37
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %57 = load %struct.wlan_iface*, %struct.wlan_iface** %56, align 8
  %58 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %57)
  %59 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %58, %struct.wlan_iface** %59, align 8
  br label %25

60:                                               ; preds = %25
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

61:                                               ; preds = %3
  %62 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @wlan_channel_index_decode(%struct.asn_oid* %62, i64 %63, i8* %15, i64* %8)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

67:                                               ; preds = %61
  %68 = call %struct.wlan_iface* @wlan_find_interface(i8* %15)
  %69 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %68, %struct.wlan_iface** %69, align 8
  %70 = icmp eq %struct.wlan_iface* %68, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

72:                                               ; preds = %67
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %75 = load %struct.wlan_iface*, %struct.wlan_iface** %74, align 8
  %76 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %81 = load %struct.wlan_iface*, %struct.wlan_iface** %80, align 8
  %82 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %81, i32 0, i32 2
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i64 %84
  store %struct.ieee80211_channel* %85, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %118, %86
  %88 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %89 = load %struct.wlan_iface*, %struct.wlan_iface** %88, align 8
  %90 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %89)
  %91 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %90, %struct.wlan_iface** %91, align 8
  %92 = icmp ne %struct.wlan_iface* %90, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %95 = load %struct.wlan_iface*, %struct.wlan_iface** %94, align 8
  %96 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RowStatus_active, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %93
  %101 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %102 = load %struct.wlan_iface*, %struct.wlan_iface** %101, align 8
  %103 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %108 = load %struct.wlan_iface*, %struct.wlan_iface** %107, align 8
  %109 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %108, i32 0, i32 2
  %110 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %109, align 8
  %111 = icmp ne %struct.ieee80211_channel* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %114 = load %struct.wlan_iface*, %struct.wlan_iface** %113, align 8
  %115 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %114, i32 0, i32 2
  %116 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %115, align 8
  store %struct.ieee80211_channel* %116, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

117:                                              ; preds = %106, %100
  br label %118

118:                                              ; preds = %117, %93
  br label %87

119:                                              ; preds = %87
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %4, align 8
  store i32 1, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %112, %79, %71, %66, %60, %49
  %121 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  ret %struct.ieee80211_channel* %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

declare dso_local i64 @wlan_channel_index_decode(%struct.asn_oid*, i64, i8*, i64*) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
