; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_recv_action_ba_addba_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_recv_action_ba_addba_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211_rx_ampdu*, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211_rx_ampdu = type { i32 }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211com = type { i32 (%struct.ieee80211_node.0*, i32, i32, i32*)*, i32 (%struct.ieee80211_node.1*, %struct.ieee80211_rx_ampdu.2*, i32, i32, i32)* }
%struct.ieee80211_node.0 = type opaque
%struct.ieee80211_node.1 = type opaque
%struct.ieee80211_rx_ampdu.2 = type opaque
%struct.ieee80211_frame = type { i32 }

@IEEE80211_BAPS_TID = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"recv ADDBA request: dialogtoken %u baparamset 0x%x (tid %d bufsiz %d) batimeout %d baseqctl %d:%d\00", align 1
@IEEE80211_BAPS_BUFSIZ = common dso_local global i32 0, align 4
@IEEE80211_BASEQ_START = common dso_local global i32 0, align 4
@IEEE80211_BASEQ_FRAG = common dso_local global i32 0, align 4
@IEEE80211_NODE_AMPDU_RX = common dso_local global i32 0, align 4
@IEEE80211_FHT_AMPDU_RX = common dso_local global i32 0, align 4
@IEEE80211_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"reject ADDBA request: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"administratively disabled\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"not negotiated for station\00", align 1
@IEEE80211_STATUS_UNSPECIFIED = common dso_local global i32 0, align 4
@IEEE80211_BAPS_POLICY_IMMEDIATE = common dso_local global i32 0, align 4
@IEEE80211_ACTION_CAT_BA = common dso_local global i32 0, align 4
@IEEE80211_ACTION_BA_ADDBA_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @ht_recv_action_ba_addba_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_recv_action_ba_addba_request(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [5 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %18, i32 0, i32 3
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %19, align 8
  store %struct.ieee80211com* %20, %struct.ieee80211com** %9, align 8
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 2
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %22, align 8
  store %struct.ieee80211vap* %23, %struct.ieee80211vap** %10, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = call i32 @le16dec(i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = call i32 @le16dec(i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  %35 = call i32 @le16dec(i32* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @IEEE80211_BAPS_TID, align 4
  %38 = call i32 @MS(i32 %36, i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %40 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %41 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @IEEE80211_BAPS_BUFSIZ, align 4
  %49 = call i32 @MS(i32 %47, i32 %48)
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @IEEE80211_BASEQ_START, align 4
  %53 = call i32 @MS(i32 %51, i32 %52)
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @IEEE80211_BASEQ_FRAG, align 4
  %56 = call i32 @MS(i32 %54, i32 %55)
  %57 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, ...) @IEEE80211_NOTE(%struct.ieee80211vap* %39, i32 %42, %struct.ieee80211_node* %43, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %49, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 1
  %60 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %60, i64 %62
  store %struct.ieee80211_rx_ampdu* %63, %struct.ieee80211_rx_ampdu** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IEEE80211_NODE_AMPDU_RX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %4
  %73 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %74 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_FHT_AMPDU_RX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %80, i32 0, i32 1
  %82 = load i32 (%struct.ieee80211_node.1*, %struct.ieee80211_rx_ampdu.2*, i32, i32, i32)*, i32 (%struct.ieee80211_node.1*, %struct.ieee80211_rx_ampdu.2*, i32, i32, i32)** %81, align 8
  %83 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %84 = bitcast %struct.ieee80211_node* %83 to %struct.ieee80211_node.1*
  %85 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %11, align 8
  %86 = bitcast %struct.ieee80211_rx_ampdu* %85 to %struct.ieee80211_rx_ampdu.2*
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 %82(%struct.ieee80211_node.1* %84, %struct.ieee80211_rx_ampdu.2* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @IEEE80211_STATUS_SUCCESS, align 4
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 1
  store i32 %91, i32* %92, align 4
  br label %115

93:                                               ; preds = %72, %4
  %94 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %95 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %96 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %99 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IEEE80211_NODE_AMPDU_RX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)
  %107 = call i32 (%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, ...) @IEEE80211_NOTE(%struct.ieee80211vap* %94, i32 %97, %struct.ieee80211_node* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  %108 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %109 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @IEEE80211_STATUS_UNSPECIFIED, align 4
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %93, %79
  %116 = load i32, i32* @IEEE80211_BAPS_POLICY_IMMEDIATE, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @IEEE80211_BAPS_TID, align 4
  %119 = call i32 @SM(i32 %117, i32 %118)
  %120 = or i32 %116, %119
  %121 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %11, align 8
  %122 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IEEE80211_BAPS_BUFSIZ, align 4
  %125 = call i32 @SM(i32 %123, i32 %124)
  %126 = or i32 %120, %125
  %127 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 2
  store i32 %126, i32* %127, align 8
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 3
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 4
  store i32 0, i32* %129, align 16
  %130 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %131 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %130, i32 0, i32 0
  %132 = load i32 (%struct.ieee80211_node.0*, i32, i32, i32*)*, i32 (%struct.ieee80211_node.0*, i32, i32, i32*)** %131, align 8
  %133 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %134 = bitcast %struct.ieee80211_node* %133 to %struct.ieee80211_node.0*
  %135 = load i32, i32* @IEEE80211_ACTION_CAT_BA, align 4
  %136 = load i32, i32* @IEEE80211_ACTION_BA_ADDBA_RESPONSE, align 4
  %137 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %138 = call i32 %132(%struct.ieee80211_node.0* %134, i32 %135, i32 %136, i32* %137)
  ret i32 0
}

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, ...) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
