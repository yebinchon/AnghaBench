; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_check_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_check_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scanner = type { i32 }
%struct.ieee80211vap = type { i64, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i64, %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_scan_state*, %struct.ieee80211vap*)* }
%struct.ieee80211_scan_ssid = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_SCAN_NOSSID = common dso_local global i32 0, align 4
@IEEE80211_F_SCAN = common dso_local global i32 0, align 4
@IEEE80211_SCAN_FLUSH = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@ISCAN_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scanner*, %struct.ieee80211vap*, i32, i32, i32, i32, i32, %struct.ieee80211_scan_ssid*)* @ieee80211_swscan_check_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_swscan_check_scan(%struct.ieee80211_scanner* %0, %struct.ieee80211vap* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.ieee80211_scan_ssid* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_scanner*, align 8
  %11 = alloca %struct.ieee80211vap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_scan_ssid*, align 8
  %18 = alloca %struct.ieee80211com*, align 8
  %19 = alloca %struct.ieee80211_scan_state*, align 8
  %20 = alloca i32, align 4
  store %struct.ieee80211_scanner* %0, %struct.ieee80211_scanner** %10, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.ieee80211_scan_ssid* %7, %struct.ieee80211_scan_ssid** %17, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 1
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %22, align 8
  store %struct.ieee80211com* %23, %struct.ieee80211com** %18, align 8
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 2
  %26 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %25, align 8
  store %struct.ieee80211_scan_state* %26, %struct.ieee80211_scan_state** %19, align 8
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  %28 = call i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com* %27)
  %29 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %30 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %114

33:                                               ; preds = %8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @IEEE80211_SCAN_NOSSID, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %40 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load %struct.ieee80211_scan_ssid*, %struct.ieee80211_scan_ssid** %17, align 8
  %43 = call i32 @ieee80211_scan_copy_ssid(%struct.ieee80211vap* %39, %struct.ieee80211_scan_state* %40, i32 %41, %struct.ieee80211_scan_ssid* %42)
  %44 = load i32, i32* @IEEE80211_SCAN_NOSSID, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @IEEE80211_SCAN_FLUSH, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %113

59:                                               ; preds = %54
  %60 = load i32, i32* @ticks, align 4
  %61 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  %62 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i64 @ieee80211_time_before(i32 %60, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %59
  %71 = load i32, i32* @ISCAN_DISCARD, align 4
  %72 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %73 = call %struct.TYPE_4__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %78 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  %79 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 255
  %84 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %85 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %87 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (%struct.ieee80211_scan_state*, %struct.ieee80211vap*)*, i32 (%struct.ieee80211_scan_state*, %struct.ieee80211vap*)** %89, align 8
  %91 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %92 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %93 = call i32 %90(%struct.ieee80211_scan_state* %91, %struct.ieee80211vap* %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* @IEEE80211_F_SCAN, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  %97 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @ISCAN_DISCARD, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %19, align 8
  %103 = call %struct.TYPE_4__* @SCAN_PRIVATE(%struct.ieee80211_scan_state* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %70
  %110 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %111 = call i32 @ieee80211_notify_scan_done(%struct.ieee80211vap* %110)
  store i32 1, i32* %9, align 4
  br label %125

112:                                              ; preds = %70
  br label %113

113:                                              ; preds = %112, %59, %54, %47
  br label %114

114:                                              ; preds = %113, %8
  %115 = load %struct.ieee80211_scanner*, %struct.ieee80211_scanner** %10, align 8
  %116 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.ieee80211_scan_ssid*, %struct.ieee80211_scan_ssid** %17, align 8
  %123 = call i32 @ieee80211_swscan_start_scan_locked(%struct.ieee80211_scanner* %115, %struct.ieee80211vap* %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, %struct.ieee80211_scan_ssid* %122)
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %114, %109
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @IEEE80211_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_scan_copy_ssid(%struct.ieee80211vap*, %struct.ieee80211_scan_state*, i32, %struct.ieee80211_scan_ssid*) #1

declare dso_local i64 @ieee80211_time_before(i32, i64) #1

declare dso_local %struct.TYPE_4__* @SCAN_PRIVATE(%struct.ieee80211_scan_state*) #1

declare dso_local i32 @ieee80211_notify_scan_done(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_swscan_start_scan_locked(%struct.ieee80211_scanner*, %struct.ieee80211vap*, i32, i32, i32, i32, i32, %struct.ieee80211_scan_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
