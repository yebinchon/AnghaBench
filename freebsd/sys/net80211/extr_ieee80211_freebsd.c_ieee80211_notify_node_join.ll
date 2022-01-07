; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_node_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_node_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211_node*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IEEE80211_MSG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%snode join\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bss \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RTM_IEEE80211_ASSOC = common dso_local global i32 0, align 4
@RTM_IEEE80211_REASSOC = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@RTM_IEEE80211_JOIN = common dso_local global i32 0, align 4
@RTM_IEEE80211_REJOIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_notify_node_join(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 2
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CURVNET_SET_QUIET(i32 %15)
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %18 = load i32, i32* @IEEE80211_MSG_NODE, align 4
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %22, align 8
  %24 = icmp eq %struct.ieee80211_node* %20, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %17, i32 %18, %struct.ieee80211_node* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %30, align 8
  %32 = icmp eq %struct.ieee80211_node* %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %2
  %34 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @RTM_IEEE80211_ASSOC, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @RTM_IEEE80211_REASSOC, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @notify_macaddr(%struct.ifnet* %34, i32 %42, i32 %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = load i32, i32* @LINK_STATE_UP, align 4
  %49 = call i32 @if_link_state_change(%struct.ifnet* %47, i32 %48)
  br label %64

50:                                               ; preds = %2
  %51 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @RTM_IEEE80211_JOIN, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @RTM_IEEE80211_REJOIN, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @notify_macaddr(%struct.ifnet* %51, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %41
  %65 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*) #1

declare dso_local i32 @notify_macaddr(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
