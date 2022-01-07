; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_recv_action_ba_addba_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ht_recv_action_ba_addba_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211_tx_ampdu*, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211_tx_ampdu = type { i32, i32 }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ieee80211com = type { i32 (%struct.ieee80211_node.0*, %struct.ieee80211_tx_ampdu.1*, i32, i32, i32)* }
%struct.ieee80211_node.0 = type opaque
%struct.ieee80211_tx_ampdu.1 = type opaque
%struct.ieee80211_frame = type { i32 }

@IEEE80211_BAPS_TID = common dso_local global i32 0, align 4
@IEEE80211_BAPS_BUFSIZ = common dso_local global i32 0, align 4
@IEEE80211_BAPS_POLICY = common dso_local global i32 0, align 4
@IEEE80211_AGGR_XCHGPEND = common dso_local global i32 0, align 4
@IEEE80211_MSG_ACTION = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ADDBA response\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"no pending ADDBA, tid %d dialogtoken %u code %d\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"dialogtoken mismatch: waiting for %d, received %d, tid %d code %d\00", align 1
@IEEE80211_AGGR_IMMEDIATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"policy mismatch: expecting %s, received %s, tid %d code %d\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"recv ADDBA response: dialogtoken %u code %d baparamset 0x%x (tid %d bufsiz %d) batimeout %d\00", align 1
@IEEE80211_AGGR_BAWMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.ieee80211_frame*, i32*, i32*)* @ht_recv_action_ba_addba_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_recv_action_ba_addba_response(%struct.ieee80211_node* %0, %struct.ieee80211_frame* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211com*, align 8
  %11 = alloca %struct.ieee80211vap*, align 8
  %12 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %6, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 3
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %21, align 8
  store %struct.ieee80211com* %22, %struct.ieee80211com** %10, align 8
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 2
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %24, align 8
  store %struct.ieee80211vap* %25, %struct.ieee80211vap** %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = call i32 @le16dec(i32* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = call i32 @le16dec(i32* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @IEEE80211_BAPS_TID, align 4
  %37 = call i32 @MS(i32 %35, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @IEEE80211_BAPS_BUFSIZ, align 4
  %40 = call i32 @MS(i32 %38, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @IEEE80211_BAPS_POLICY, align 4
  %43 = call i32 @MS(i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = call i32 @le16dec(i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 1
  %49 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %49, i64 %51
  store %struct.ieee80211_tx_ampdu* %52, %struct.ieee80211_tx_ampdu** %12, align 8
  %53 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_AGGR_XCHGPEND, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %4
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %61 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %62 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, i32, i32, i32, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %60, i32 %63, i32 %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  %71 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %156

76:                                               ; preds = %4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %12, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %84 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %85 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %12, align 8
  %91 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, i32, i32, i32, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %83, i32 %86, i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %98 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %156

102:                                              ; preds = %76
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %12, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IEEE80211_AGGR_IMMEDIATE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %103, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %102
  %111 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %112 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %113 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %12, align 8
  %119 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IEEE80211_AGGR_IMMEDIATE, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 (%struct.ieee80211vap*, i32, i32, i8*, i8*, i32, i32, i32, ...) @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %111, i32 %114, i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %128 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  store i32 0, i32* %5, align 4
  br label %156

132:                                              ; preds = %102
  %133 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %134 = load i32, i32* @IEEE80211_MSG_ACTION, align 4
  %135 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %133, i32 %136, %struct.ieee80211_node* %137, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  %146 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %145, i32 0, i32 0
  %147 = load i32 (%struct.ieee80211_node.0*, %struct.ieee80211_tx_ampdu.1*, i32, i32, i32)*, i32 (%struct.ieee80211_node.0*, %struct.ieee80211_tx_ampdu.1*, i32, i32, i32)** %146, align 8
  %148 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %149 = bitcast %struct.ieee80211_node* %148 to %struct.ieee80211_node.0*
  %150 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %12, align 8
  %151 = bitcast %struct.ieee80211_tx_ampdu* %150 to %struct.ieee80211_tx_ampdu.1*
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 %147(%struct.ieee80211_node.0* %149, %struct.ieee80211_tx_ampdu.1* %151, i32 %152, i32 %153, i32 %154)
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %132, %110, %82, %59
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
