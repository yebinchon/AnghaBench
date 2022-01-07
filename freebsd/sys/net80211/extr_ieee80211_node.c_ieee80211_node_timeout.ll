; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32 }

@IEEE80211_F_CSAPENDING = common dso_local global i32 0, align 4
@IEEE80211_INACT_WAIT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ieee80211com*
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IEEE80211_F_CSAPENDING, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = call i32 @ieee80211_scan_timeout(%struct.ieee80211com* %13)
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %16 = call i32 @ieee80211_timeout_stations(%struct.ieee80211com* %15)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 2
  %19 = load i32, i32* @IEEE80211_INACT_WAIT, align 4
  %20 = call i32 @ieee80211_ageq_age(i32* %18, i32 %19)
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %22 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %24 = call i32 @ieee80211_erp_timeout(%struct.ieee80211com* %23)
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %26 = call i32 @ieee80211_ht_timeout(%struct.ieee80211com* %25)
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %28 = call i32 @ieee80211_vht_timeout(%struct.ieee80211com* %27)
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %30 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %29)
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 1
  %34 = load i32, i32* @IEEE80211_INACT_WAIT, align 4
  %35 = load i32, i32* @hz, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = call i32 @callout_reset(i32* %33, i32 %36, void (i8*)* @ieee80211_node_timeout, %struct.ieee80211com* %37)
  ret void
}

declare dso_local i32 @ieee80211_scan_timeout(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_timeout_stations(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_ageq_age(i32*, i32) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_erp_timeout(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_ht_timeout(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_vht_timeout(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
