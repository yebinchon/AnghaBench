; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_htcapmismatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_htcapmismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MSG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"deny %s request, %s missing HT ie\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reassoc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@IEEE80211_STATUS_MISSING_HT_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32, i32)* @htcapmismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcapmismatch(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %13 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @IEEE80211_NOTE_MAC(i32 %11, i32 %12, i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IEEE80211_STATUS_MISSING_HT_CAPS, align 4
  %24 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %21, i32 %22, i32 %23)
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %26 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %25)
  ret void
}

declare dso_local i32 @IEEE80211_NOTE_MAC(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
