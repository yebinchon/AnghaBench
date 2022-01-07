; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_node_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_notify_node_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211_node*, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IEEE80211_MSG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%snode leave\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bss \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RTM_IEEE80211_DISASSOC = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@RTM_IEEE80211_LEAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_notify_node_leave(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %5, i32 0, i32 1
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  store %struct.ieee80211vap* %7, %struct.ieee80211vap** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CURVNET_SET_QUIET(i32 %13)
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = load i32, i32* @IEEE80211_MSG_NODE, align 4
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %20, align 8
  %22 = icmp eq %struct.ieee80211_node* %18, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %15, i32 %16, %struct.ieee80211_node* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 0
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %28, align 8
  %30 = icmp eq %struct.ieee80211_node* %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load i32, i32* @RTM_IEEE80211_DISASSOC, align 4
  %34 = call i32 @rt_ieee80211msg(%struct.ifnet* %32, i32 %33, i32* null, i32 0)
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = load i32, i32* @LINK_STATE_DOWN, align 4
  %37 = call i32 @if_link_state_change(%struct.ifnet* %35, i32 %36)
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = load i32, i32* @RTM_IEEE80211_LEAVE, align 4
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @notify_macaddr(%struct.ifnet* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET_QUIET(i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i8*) #1

declare dso_local i32 @rt_ieee80211msg(%struct.ifnet*, i32, i32*, i32) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @notify_macaddr(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
