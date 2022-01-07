; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_scan_new_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_scan_new_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_scan_result = type { i32, i32 }

@IEEE80211_NWID_LEN = common dso_local global i64 0, align 8
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wlan_scan_result* @wlan_scan_new_result(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.wlan_scan_result*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wlan_scan_result*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @malloc(i32 8)
  %8 = inttoptr i64 %7 to %struct.wlan_scan_result*
  store %struct.wlan_scan_result* %8, %struct.wlan_scan_result** %6, align 8
  %9 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %6, align 8
  %10 = icmp eq %struct.wlan_scan_result* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wlan_scan_result* null, %struct.wlan_scan_result** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %6, align 8
  %14 = call i32 @memset(%struct.wlan_scan_result* %13, i32 0, i32 8)
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %6, align 8
  %22 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* @IEEE80211_NWID_LEN, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @strlcpy(i32 %23, i8* %24, i64 %26)
  br label %28

28:                                               ; preds = %20, %12
  %29 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %6, align 8
  %30 = getelementptr inbounds %struct.wlan_scan_result, %struct.wlan_scan_result* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %34 = call i32 @memcpy(i32 %31, i8* %32, i32 %33)
  %35 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %6, align 8
  store %struct.wlan_scan_result* %35, %struct.wlan_scan_result** %3, align 8
  br label %36

36:                                               ; preds = %28, %11
  %37 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %3, align 8
  ret %struct.wlan_scan_result* %37
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.wlan_scan_result*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
