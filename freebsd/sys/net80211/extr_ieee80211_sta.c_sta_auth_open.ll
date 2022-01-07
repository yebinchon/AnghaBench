; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_sta_auth_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_sta.c_sta_auth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_AUTH_SHARED = common dso_local global i64 0, align 8
@IEEE80211_MSG_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"open auth\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bad sta auth mode %u\00", align 1
@IEEE80211_S_AUTH = common dso_local global i64 0, align 8
@IEEE80211_AUTH_OPEN_RESPONSE = common dso_local global i64 0, align 8
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"open auth failed (reason %d)\00", align 1
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@IEEE80211_SCAN_FAIL_STATUS = common dso_local global i32 0, align 4
@IEEE80211_S_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32, i32, i64, i64)* @sta_auth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_auth_open(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %7, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 2
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %15, align 8
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %13, align 8
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_AUTH_SHARED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %24 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %23, i32 %24, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %33 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %81

37:                                               ; preds = %6
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IEEE80211_S_AUTH, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @IEEE80211_AUTH_OPEN_RESPONSE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %37
  %48 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %49 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %81

53:                                               ; preds = %43
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %58 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %59 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %57, i32 %60, %struct.ieee80211_node* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %65 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %71 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %74 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %75 = load i32, i32* @IEEE80211_SCAN_FAIL_STATUS, align 4
  %76 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %73, i32 %74, i32 %75)
  br label %81

77:                                               ; preds = %53
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %79 = load i32, i32* @IEEE80211_S_ASSOC, align 4
  %80 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %22, %47, %77, %56
  ret void
}

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i64) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
