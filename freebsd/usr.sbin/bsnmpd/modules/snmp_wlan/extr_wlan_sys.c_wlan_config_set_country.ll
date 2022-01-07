; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_country.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i8*, i32, i32, i32, i32 }
%struct.ieee80211_regdomain_req = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i8, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"iface %s - set regdomain failed\00", align 1
@IEEE80211_IOC_TXPOWMAX = common dso_local global i32 0, align 4
@wlanIfaceState_down = common dso_local global i32 0, align 4
@IEEE80211_IOC_REGDOMAIN = common dso_local global i32 0, align 4
@wlanIfaceState_up = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*, i8*, i32)* @wlan_config_set_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_set_country(%struct.wlan_iface* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlan_iface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_regdomain_req*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %14 = call i64 @wlan_get_channel_list(%struct.wlan_iface* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %183

17:                                               ; preds = %3
  %18 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %19 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %25 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @syslog(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %4, align 4
  br label %183

28:                                               ; preds = %17
  %29 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %30 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IEEE80211_IOC_TXPOWMAX, align 4
  %33 = call i64 @wlan_ioctl(i32 %31, i32 %32, i32* %9, %struct.ieee80211_regdomain_req* null, i64* %11, i32 0)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %183

36:                                               ; preds = %28
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IEEE80211_REGDOMAIN_SIZE(i32 %39)
  %41 = call %struct.ieee80211_regdomain_req* @malloc(i64 %40)
  store %struct.ieee80211_regdomain_req* %41, %struct.ieee80211_regdomain_req** %12, align 8
  %42 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %43 = icmp eq %struct.ieee80211_regdomain_req* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %183

45:                                               ; preds = %36
  %46 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %47 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %48 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IEEE80211_REGDOMAIN_SIZE(i32 %49)
  %51 = call i32 @memset(%struct.ieee80211_regdomain_req* %46, i32 0, i64 %50)
  %52 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %53 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IEEE80211_REGDOMAIN_SIZE(i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @wlan_snmp_to_regdomain(i32 %56)
  %58 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %59 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %63, i8* %68, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 %71, i8* %76, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %81 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i8 %79, i8* %82, align 8
  %83 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %84 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %87 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %90 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %94 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %97 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(%struct.TYPE_6__* %92, i32 %95, i32 %101)
  store i64 0, i64* %10, align 8
  br label %103

103:                                              ; preds = %119, %45
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %106 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %104, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %113 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %111, i32* %118, align 4
  br label %119

119:                                              ; preds = %110
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %103

122:                                              ; preds = %103
  %123 = load i32, i32* @wlanIfaceState_down, align 4
  %124 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %125 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %127 = call i64 @wlan_config_state(%struct.wlan_iface* %126, i32 1)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %122
  %130 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %131 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IEEE80211_IOC_REGDOMAIN, align 4
  %134 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %135 = call i64 @wlan_ioctl(i32 %132, i32 %133, i32* %8, %struct.ieee80211_regdomain_req* %134, i64* %11, i32 1)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129, %122
  %138 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %139 = call i32 @free(%struct.ieee80211_regdomain_req* %138)
  store i32 -1, i32* %4, align 4
  br label %183

140:                                              ; preds = %129
  %141 = load i32, i32* @wlanIfaceState_up, align 4
  %142 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %143 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %145 = call i64 @wlan_config_state(%struct.wlan_iface* %144, i32 1)
  %146 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %147 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @wlan_regdomain_to_snmp(i32 %149)
  %151 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %152 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %154 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %160 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 %158, i8* %162, align 1
  %163 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %164 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %170 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8 %168, i8* %172, align 1
  %173 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %174 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i8, i8* %175, align 8
  %177 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %178 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8 %176, i8* %180, align 1
  %181 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %12, align 8
  %182 = call i32 @free(%struct.ieee80211_regdomain_req* %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %140, %137, %44, %35, %22, %16
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @wlan_get_channel_list(%struct.wlan_iface*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211_regdomain_req*, i64*, i32) #1

declare dso_local %struct.ieee80211_regdomain_req* @malloc(i64) #1

declare dso_local i64 @IEEE80211_REGDOMAIN_SIZE(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_regdomain_req*, i32, i64) #1

declare dso_local i32 @wlan_snmp_to_regdomain(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @wlan_config_state(%struct.wlan_iface*, i32) #1

declare dso_local i32 @free(%struct.ieee80211_regdomain_req*) #1

declare dso_local i32 @wlan_regdomain_to_snmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
