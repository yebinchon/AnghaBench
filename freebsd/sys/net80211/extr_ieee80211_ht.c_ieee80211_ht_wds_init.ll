; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_wds_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_wds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, %struct.ieee80211_tx_ampdu*, i64, i64, %struct.TYPE_7__*, i32, i32, i32, i32, %struct.ieee80211vap* }
%struct.ieee80211_tx_ampdu = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211vap = type { i32 }

@IEEE80211_FHT_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no HT requested\00", align 1
@IEEE80211_FHT_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_2NDCHAN_ABOVE = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_2NDCHAN_BELOW = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_2NDCHAN_NONE = common dso_local global i32 0, align 4
@IEEE80211_FHT_RIFS = common dso_local global i32 0, align 4
@IEEE80211_NODE_RIFS = common dso_local global i32 0, align 4
@WME_NUM_TID = common dso_local global i32 0, align 4
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@IEEE80211_NODE_AMPDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_wds_init(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 10
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_FHT_HT, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @ieee80211_htchanflags(%struct.TYPE_7__* %23)
  %25 = call %struct.TYPE_7__* @ieee80211_ht_adjust_channel(i32 %17, %struct.TYPE_7__* %20, i32 %24)
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 5
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 8
  store i32 0, i32* %29, align 8
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_FHT_SHORTGI20, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %43, i32 0, i32 5
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.TYPE_7__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %42
  %49 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %54, i32 0, i32 0
  store i32 40, i32* %55, align 8
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %56, i32 0, i32 5
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.TYPE_7__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @IEEE80211_HTINFO_2NDCHAN_ABOVE, align 4
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  br label %76

65:                                               ; preds = %48
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %67 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %66, i32 0, i32 5
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i64 @IEEE80211_IS_CHAN_HT40D(%struct.TYPE_7__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @IEEE80211_HTINFO_2NDCHAN_BELOW, align 4
  %73 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %74 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %78 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IEEE80211_FHT_SHORTGI40, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %85 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %76
  br label %96

90:                                               ; preds = %42
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %92 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %91, i32 0, i32 0
  store i32 20, i32* %92, align 8
  %93 = load i32, i32* @IEEE80211_HTINFO_2NDCHAN_NONE, align 4
  %94 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %95 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %89
  %97 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %98 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %97, i32 0, i32 5
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %103 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %105 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IEEE80211_FHT_RIFS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %96
  %111 = load i32, i32* @IEEE80211_NODE_RIFS, align 4
  %112 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %113 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %96
  %117 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %118 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %120 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %137, %116
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @WME_NUM_TID, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %127 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %126, i32 0, i32 2
  %128 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %128, i64 %130
  store %struct.ieee80211_tx_ampdu* %131, %struct.ieee80211_tx_ampdu** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %4, align 8
  %134 = getelementptr inbounds %struct.ieee80211_tx_ampdu, %struct.ieee80211_tx_ampdu* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ieee80211_tx_ampdu*, %struct.ieee80211_tx_ampdu** %4, align 8
  %136 = call i32 @ieee80211_txampdu_init_pps(%struct.ieee80211_tx_ampdu* %135)
  br label %137

137:                                              ; preds = %125
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %121

140:                                              ; preds = %121
  %141 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %142 = load i32, i32* @IEEE80211_NODE_AMPDU, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %145 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @ieee80211_ht_adjust_channel(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ieee80211_htchanflags(%struct.TYPE_7__*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.TYPE_7__*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.TYPE_7__*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(%struct.TYPE_7__*) #1

declare dso_local i32 @ieee80211_txampdu_init_pps(%struct.ieee80211_tx_ampdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
