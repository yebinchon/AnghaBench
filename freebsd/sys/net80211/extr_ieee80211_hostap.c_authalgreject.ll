; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_authalgreject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_authalgreject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MSG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unsupported alg %d\00", align 1
@IEEE80211_FC0_SUBTYPE_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32, i32, i32)* @authalgreject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authalgreject(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %11, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %16 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @IEEE80211_DISCARD(%struct.ieee80211vap* %15, i32 %16, %struct.ieee80211_frame* %17, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %26 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_FC0_SUBTYPE_AUTH, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = call i32 @ieee80211_send_error(%struct.ieee80211_node* %25, i32 %28, i32 %29, i32 %33)
  ret void
}

declare dso_local i32 @IEEE80211_DISCARD(%struct.ieee80211vap*, i32, %struct.ieee80211_frame*, i32*, i8*, i32) #1

declare dso_local i32 @ieee80211_send_error(%struct.ieee80211_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
