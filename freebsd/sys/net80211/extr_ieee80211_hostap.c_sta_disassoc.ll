; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_sta_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_hostap.c_sta_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64 }

@IEEE80211_FC0_SUBTYPE_DISASSOC = common dso_local global i32 0, align 4
@IEEE80211_REASON_ASSOC_LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @sta_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_disassoc(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DISASSOC, align 4
  %12 = load i32, i32* @IEEE80211_REASON_ASSOC_LEAVE, align 4
  %13 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %10, i32 %11, i32 %12)
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %15 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %14)
  br label %16

16:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
