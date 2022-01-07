; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_sta_pwrsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_power.c_ieee80211_sta_pwrsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_NODE_PWR_MGT = common dso_local global i32 0, align 4
@IEEE80211_MSG_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sta power save mode %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_sta_pwrsave(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %6, i32 0, i32 0
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  store %struct.ieee80211_node* %8, %struct.ieee80211_node** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = xor i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %24 = load i32, i32* @IEEE80211_MSG_POWER, align 4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %23, i32 %24, %struct.ieee80211_node* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %41 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %40)
  %42 = call i32 @ieee80211_send_nulldata(i32 %41)
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %50 = call i32 @pwrsave_flushq(%struct.ieee80211_node* %49)
  br label %51

51:                                               ; preds = %48, %33
  br label %61

52:                                               ; preds = %22
  %53 = load i32, i32* @IEEE80211_NODE_PWR_MGT, align 4
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %59 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %58)
  %60 = call i32 @ieee80211_send_nulldata(i32 %59)
  br label %61

61:                                               ; preds = %21, %52, %51
  ret void
}

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*) #1

declare dso_local i32 @ieee80211_send_nulldata(i32) #1

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @pwrsave_flushq(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
