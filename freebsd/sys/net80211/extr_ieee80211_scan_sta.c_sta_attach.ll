; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.sta_table* }
%struct.sta_table = type { i32 }

@M_80211_SCAN = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"scantable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"scangen\00", align 1
@nrefs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_scan_state*)* @sta_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_attach(%struct.ieee80211_scan_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca %struct.sta_table*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  %5 = load i32, i32* @M_80211_SCAN, align 4
  %6 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %7 = load i32, i32* @IEEE80211_M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @IEEE80211_MALLOC(i32 4, i32 %5, i32 %8)
  %10 = inttoptr i64 %9 to %struct.sta_table*
  store %struct.sta_table* %10, %struct.sta_table** %4, align 8
  %11 = load %struct.sta_table*, %struct.sta_table** %4, align 8
  %12 = icmp eq %struct.sta_table* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.sta_table*, %struct.sta_table** %4, align 8
  %16 = call i32 @IEEE80211_SCAN_TABLE_LOCK_INIT(%struct.sta_table* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sta_table*, %struct.sta_table** %4, align 8
  %18 = call i32 @IEEE80211_SCAN_ITER_LOCK_INIT(%struct.sta_table* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.sta_table*, %struct.sta_table** %4, align 8
  %20 = getelementptr inbounds %struct.sta_table, %struct.sta_table* %19, i32 0, i32 0
  %21 = call i32 @TAILQ_INIT(i32* %20)
  %22 = load %struct.sta_table*, %struct.sta_table** %4, align 8
  %23 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %23, i32 0, i32 0
  store %struct.sta_table* %22, %struct.sta_table** %24, align 8
  %25 = load i32, i32* @nrefs, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @nrefs, align 4
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_SCAN_TABLE_LOCK_INIT(%struct.sta_table*, i8*) #1

declare dso_local i32 @IEEE80211_SCAN_ITER_LOCK_INIT(%struct.sta_table*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
