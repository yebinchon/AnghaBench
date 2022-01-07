; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_htcap_update_mimo_ps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_htcap_update_mimo_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32 }

@IEEE80211_HTCAP_SMPS = common dso_local global i32 0, align 4
@IEEE80211_NODE_MIMO_PS = common dso_local global i32 0, align 4
@IEEE80211_NODE_MIMO_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*)* @htcap_update_mimo_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcap_update_mimo_ps(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %4 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IEEE80211_HTCAP_SMPS, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %36 [
    i32 130, label %12
    i32 129, label %23
    i32 128, label %35
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @IEEE80211_NODE_MIMO_PS, align 4
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @IEEE80211_NODE_MIMO_RTS, align 4
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load i32, i32* @IEEE80211_NODE_MIMO_PS, align 4
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @IEEE80211_NODE_MIMO_RTS, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %49

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %1, %35
  %37 = load i32, i32* @IEEE80211_NODE_MIMO_PS, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @IEEE80211_NODE_MIMO_RTS, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %46 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %36, %23, %12
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %50, %53
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
