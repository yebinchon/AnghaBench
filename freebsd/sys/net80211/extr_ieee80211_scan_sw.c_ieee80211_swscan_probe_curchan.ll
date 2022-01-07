; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_probe_curchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sw.c_ieee80211_swscan_probe_curchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i32, i32, %struct.ifnet*, %struct.ieee80211com* }
%struct.ifnet = type { i32 }
%struct.ieee80211com = type { %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@IEEE80211_FEXT_SCAN_OFFLOAD = common dso_local global i32 0, align 4
@IEEE80211_SCAN_NOBCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, i32)* @ieee80211_swscan_probe_curchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_swscan_probe_curchan(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211_scan_state*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %13, align 8
  store %struct.ieee80211_scan_state* %14, %struct.ieee80211_scan_state** %6, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 3
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_FEXT_SCAN_OFFLOAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %86

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ieee80211_send_probereq(i32 %35, i32 %38, i32 %41, i32 %44, i8* %52, i32 %60)
  br label %62

62:                                               ; preds = %32
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %26

65:                                               ; preds = %26
  %66 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_SCAN_NOBCAST, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ieee80211_send_probereq(i32 %75, i32 %78, i32 %81, i32 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %86

86:                                               ; preds = %24, %72, %65
  ret void
}

declare dso_local i32 @ieee80211_send_probereq(i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
