; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_recv_action_ba_delba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_recv_action_ba_delba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_rx_ampdu*, %struct.ieee80211_tx_ampdu*, i32, %struct.ieee80211com* }
%struct.ieee80211_rx_ampdu = type { i32 }
%struct.ieee80211_tx_ampdu = type { i32 }
%struct.ieee80211com = type { i32 (%struct.ieee80211_node.0*, %struct.ieee80211_rx_ampdu.1*)*, i32 (%struct.ieee80211_node.2*, %struct.ieee80211_tx_ampdu.3*)* }
%struct.ieee80211_node.0 = type opaque
%struct.ieee80211_rx_ampdu.1 = type opaque
%struct.ieee80211_node.2 = type opaque
%struct.ieee80211_tx_ampdu.3 = type opaque
%struct.ieee80211_frame = type { i32 }

@IEEE80211_DELBAPS_TID = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"recv DELBA: baparamset 0x%x (tid %d initiator %d) code %d\00", align 1
@IEEE80211_DELBAPS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @ht_recv_action_ba_delba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_recv_action_ba_delba(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %11 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 3
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %16, align 8
  store %struct.ieee80211com* %17, %struct.ieee80211com** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = call i32 @le16dec(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = call i32 @le16dec(i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @IEEE80211_DELBAPS_TID, align 4
  %26 = call i32 @MS(i32 %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %31 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @IEEE80211_DELBAPS_INIT, align 4
  %38 = call i32 @MS(i32 %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @IEEE80211_NOTE(i32 %29, i32 %32, %struct.ieee80211_node* %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @IEEE80211_DELBAPS_INIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %4
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %46, i32 0, i32 1
  %48 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %48, i64 %50
  store %struct.ieee80211_tx_ampdu* %51, %struct.ieee80211_tx_ampdu** %11, align 8
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 1
  %54 = load i32 (%struct.ieee80211_node.2*, %struct.ieee80211_tx_ampdu.3*)*, i32 (%struct.ieee80211_node.2*, %struct.ieee80211_tx_ampdu.3*)** %53, align 8
  %55 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %56 = bitcast %struct.ieee80211_node* %55 to %struct.ieee80211_node.2*
  %57 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %11, align 8
  %58 = bitcast %struct.ieee80211_tx_ampdu* %57 to %struct.ieee80211_tx_ampdu.3*
  %59 = call i32 %54(%struct.ieee80211_node.2* %56, %struct.ieee80211_tx_ampdu.3* %58)
  br label %75

60:                                               ; preds = %4
  %61 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %63, i64 %65
  store %struct.ieee80211_rx_ampdu* %66, %struct.ieee80211_rx_ampdu** %10, align 8
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %67, i32 0, i32 0
  %69 = load i32 (%struct.ieee80211_node.0*, %struct.ieee80211_rx_ampdu.1*)*, i32 (%struct.ieee80211_node.0*, %struct.ieee80211_rx_ampdu.1*)** %68, align 8
  %70 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %71 = bitcast %struct.ieee80211_node* %70 to %struct.ieee80211_node.0*
  %72 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %10, align 8
  %73 = bitcast %struct.ieee80211_rx_ampdu* %72 to %struct.ieee80211_rx_ampdu.1*
  %74 = call i32 %69(%struct.ieee80211_node.0* %71, %struct.ieee80211_rx_ampdu.1* %73)
  br label %75

75:                                               ; preds = %60, %45
  ret i32 0
}

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @IEEE80211_NOTE(i32, i32, %struct.ieee80211_node*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
