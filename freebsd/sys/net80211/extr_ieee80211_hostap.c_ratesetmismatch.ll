; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ratesetmismatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_ratesetmismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32 }
%struct.ieee80211_frame = type { i32 }

@IEEE80211_MSG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"deny %s request, %s rate set mismatch, rate/MCS %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reassoc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@IEEE80211_STATUS_BASIC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32, i32, i8*, i32)* @ratesetmismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ratesetmismatch(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %7, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_MSG_ANY, align 4
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @IEEE80211_NOTE_MAC(i32 %15, i32 %16, i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i32 %27)
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @IEEE80211_STATUS_BASIC_RATE, align 4
  %32 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %29, i32 %30, i32 %31)
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %34 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %33)
  ret void
}

declare dso_local i32 @IEEE80211_NOTE_MAC(i32, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
