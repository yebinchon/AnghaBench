; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.sta_table* }
%struct.sta_table = type { i32 }

@M_80211_SCAN = common dso_local global i32 0, align 4
@nrefs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"imbalanced attach/detach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scan_state*)* @sta_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_detach(%struct.ieee80211_scan_state* %0) #0 {
  %2 = alloca %struct.ieee80211_scan_state*, align 8
  %3 = alloca %struct.sta_table*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %2, align 8
  %4 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %4, i32 0, i32 0
  %6 = load %struct.sta_table*, %struct.sta_table** %5, align 8
  store %struct.sta_table* %6, %struct.sta_table** %3, align 8
  %7 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %8 = icmp ne %struct.sta_table* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %11 = call i32 @sta_flush_table(%struct.sta_table* %10)
  %12 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %13 = call i32 @IEEE80211_SCAN_TABLE_LOCK_DESTROY(%struct.sta_table* %12)
  %14 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %15 = call i32 @IEEE80211_SCAN_ITER_LOCK_DESTROY(%struct.sta_table* %14)
  %16 = load %struct.sta_table*, %struct.sta_table** %3, align 8
  %17 = load i32, i32* @M_80211_SCAN, align 4
  %18 = call i32 @IEEE80211_FREE(%struct.sta_table* %16, i32 %17)
  %19 = load i64, i64* @nrefs, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @nrefs, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* @nrefs, align 8
  br label %25

25:                                               ; preds = %9, %1
  ret i32 1
}

declare dso_local i32 @sta_flush_table(%struct.sta_table*) #1

declare dso_local i32 @IEEE80211_SCAN_TABLE_LOCK_DESTROY(%struct.sta_table*) #1

declare dso_local i32 @IEEE80211_SCAN_ITER_LOCK_DESTROY(%struct.sta_table*) #1

declare dso_local i32 @IEEE80211_FREE(%struct.sta_table*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
