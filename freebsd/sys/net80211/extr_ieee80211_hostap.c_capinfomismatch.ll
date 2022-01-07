; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_capinfomismatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_capinfomismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MSG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"deny %s request, %s mismatch 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reassoc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@IEEE80211_STATUS_CAPINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32, i32, i8*, i32)* @capinfomismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capinfomismatch(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %7, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %15, align 8
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %13, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %18 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %19 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i32 %27)
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @IEEE80211_STATUS_CAPINFO, align 4
  %32 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %29, i32 %30, i32 %31)
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %34 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %33)
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  ret void
}

declare dso_local i32 @IEEE80211_NOTE_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
