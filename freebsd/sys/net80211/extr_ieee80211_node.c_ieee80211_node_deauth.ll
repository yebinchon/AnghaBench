; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_deauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64 }

@IEEE80211_FC0_SUBTYPE_DEAUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_deauth(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %6 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %5)
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %13 = load i32, i32* @IEEE80211_FC0_SUBTYPE_DEAUTH, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %18 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %17)
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %19)
  ret void
}

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
