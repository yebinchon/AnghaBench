; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_alloc_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_input.c_ieee80211_alloc_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32*, i32 }

@IEEE80211_CHALLENGE_LEN = common dso_local global i32 0, align 4
@M_80211_NODE = common dso_local global i32 0, align 4
@IEEE80211_M_NOWAIT = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@IEEE80211_MSG_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"shared key challenge alloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_alloc_challenge(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %3 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* @IEEE80211_CHALLENGE_LEN, align 4
  %9 = load i32, i32* @M_80211_NODE, align 4
  %10 = load i32, i32* @IEEE80211_M_NOWAIT, align 4
  %11 = call i64 @IEEE80211_MALLOC(i32 %8, i32 %9, i32 %10)
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %25 = load i32, i32* @IEEE80211_MSG_AUTH, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %28 = call i32 @IEEE80211_NOTE(i32 %23, i32 %26, %struct.ieee80211_node* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @IEEE80211_MALLOC(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
