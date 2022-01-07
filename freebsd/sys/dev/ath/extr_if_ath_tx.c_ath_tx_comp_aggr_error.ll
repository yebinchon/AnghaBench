; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_comp_aggr_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_comp_aggr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ath_buf = type { %struct.ath_buf*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ieee80211_node* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ath_tid = type { i32 }
%struct.ath_node = type { i32 }
%struct.ieee80211_tx_ampdu = type { i32 }

@bf_list = common dso_local global i32 0, align 4
@ath_bufhead_s = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_buf*, %struct.ath_tid*)* @ath_tx_comp_aggr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_comp_aggr_error(%struct.ath_softc* %0, %struct.ath_buf* %1, %struct.ath_tid* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_buf*, align 8
  %6 = alloca %struct.ath_tid*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ath_node*, align 8
  %9 = alloca %struct.ath_buf*, align 8
  %10 = alloca %struct.ath_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_tx_ampdu*, align 8
  %14 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %5, align 8
  store %struct.ath_tid* %2, %struct.ath_tid** %6, align 8
  %15 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %16 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %16, align 8
  store %struct.ieee80211_node* %17, %struct.ieee80211_node** %7, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %19 = call %struct.ath_node* @ATH_NODE(%struct.ieee80211_node* %18)
  store %struct.ath_node* %19, %struct.ath_node** %8, align 8
  store i32 0, i32* %12, align 4
  %20 = call i32 @TAILQ_INIT(i32* %11)
  %21 = call i32 @TAILQ_INIT(i32* %14)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %24 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %25 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %29 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %32 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %36 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %40 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ath_tx_update_ratectrl(%struct.ath_softc* %22, %struct.ieee80211_node* %23, i32 %27, i32* %30, i32 %34, i32 %38, i32 %42)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = call i32 @ATH_TX_LOCK(%struct.ath_softc* %44)
  %46 = load %struct.ath_node*, %struct.ath_node** %8, align 8
  %47 = load %struct.ath_tid*, %struct.ath_tid** %6, align 8
  %48 = getelementptr inbounds %struct.ath_tid, %struct.ath_tid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.ieee80211_tx_ampdu* @ath_tx_get_tx_tid(%struct.ath_node* %46, i32 %49)
  store %struct.ieee80211_tx_ampdu* %50, %struct.ieee80211_tx_ampdu** %13, align 8
  %51 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  store %struct.ath_buf* %56, %struct.ath_buf** %10, align 8
  br label %57

57:                                               ; preds = %83, %3
  %58 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %59 = icmp ne %struct.ath_buf* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %57
  %61 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %62 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %61, i32 0, i32 0
  %63 = load %struct.ath_buf*, %struct.ath_buf** %62, align 8
  store %struct.ath_buf* %63, %struct.ath_buf** %9, align 8
  %64 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %65 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %64, i32 0, i32 0
  store %struct.ath_buf* null, %struct.ath_buf** %65, align 8
  %66 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %72 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %73 = call i64 @ath_tx_retry_subframe(%struct.ath_softc* %71, %struct.ath_buf* %72, i32* %11)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %60
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %79 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %78, i32 0, i32 0
  store %struct.ath_buf* null, %struct.ath_buf** %79, align 8
  %80 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %81 = load i32, i32* @bf_list, align 4
  %82 = call i32 @TAILQ_INSERT_TAIL(i32* %14, %struct.ath_buf* %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %60
  %84 = load %struct.ath_buf*, %struct.ath_buf** %9, align 8
  store %struct.ath_buf* %84, %struct.ath_buf** %10, align 8
  br label %57

85:                                               ; preds = %57
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i32, i32* @ath_bufhead_s, align 4
  %88 = call %struct.ath_buf* @TAILQ_LAST(i32* %11, i32 %87)
  store %struct.ath_buf* %88, %struct.ath_buf** %10, align 8
  %89 = icmp ne %struct.ath_buf* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %92 = load i32, i32* @bf_list, align 4
  %93 = call i32 @TAILQ_REMOVE(i32* %11, %struct.ath_buf* %91, i32 %92)
  %94 = load %struct.ath_tid*, %struct.ath_tid** %6, align 8
  %95 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %96 = load i32, i32* @bf_list, align 4
  %97 = call i32 @ATH_TID_INSERT_HEAD(%struct.ath_tid* %94, %struct.ath_buf* %95, i32 %96)
  br label %86

98:                                               ; preds = %86
  %99 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %100 = load %struct.ath_tid*, %struct.ath_tid** %6, align 8
  %101 = call i32 @ath_tx_tid_sched(%struct.ath_softc* %99, %struct.ath_tid* %100)
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %106 = load %struct.ath_tid*, %struct.ath_tid** %6, align 8
  %107 = call i32 @ath_tx_tid_bar_suspend(%struct.ath_softc* %105, %struct.ath_tid* %106)
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %110 = load %struct.ath_tid*, %struct.ath_tid** %6, align 8
  %111 = call i64 @ath_tx_tid_bar_tx_ready(%struct.ath_softc* %109, %struct.ath_tid* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %115 = load %struct.ath_tid*, %struct.ath_tid** %6, align 8
  %116 = call i32 @ath_tx_tid_bar_tx(%struct.ath_softc* %114, %struct.ath_tid* %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %119 = call i32 @ATH_TX_UNLOCK(%struct.ath_softc* %118)
  br label %120

120:                                              ; preds = %123, %117
  %121 = call %struct.ath_buf* @TAILQ_FIRST(i32* %14)
  store %struct.ath_buf* %121, %struct.ath_buf** %10, align 8
  %122 = icmp ne %struct.ath_buf* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %125 = load i32, i32* @bf_list, align 4
  %126 = call i32 @TAILQ_REMOVE(i32* %14, %struct.ath_buf* %124, i32 %125)
  %127 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %128 = load %struct.ath_buf*, %struct.ath_buf** %10, align 8
  %129 = call i32 @ath_tx_default_comp(%struct.ath_softc* %127, %struct.ath_buf* %128, i32 0)
  br label %120

130:                                              ; preds = %120
  ret void
}

declare dso_local %struct.ath_node* @ATH_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @ath_tx_update_ratectrl(%struct.ath_softc*, %struct.ieee80211_node*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ATH_TX_LOCK(%struct.ath_softc*) #1

declare dso_local %struct.ieee80211_tx_ampdu* @ath_tx_get_tx_tid(%struct.ath_node*, i32) #1

declare dso_local i64 @ath_tx_retry_subframe(%struct.ath_softc*, %struct.ath_buf*, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ath_buf*, i32) #1

declare dso_local %struct.ath_buf* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ATH_TID_INSERT_HEAD(%struct.ath_tid*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath_tx_tid_sched(%struct.ath_softc*, %struct.ath_tid*) #1

declare dso_local i32 @ath_tx_tid_bar_suspend(%struct.ath_softc*, %struct.ath_tid*) #1

declare dso_local i64 @ath_tx_tid_bar_tx_ready(%struct.ath_softc*, %struct.ath_tid*) #1

declare dso_local i32 @ath_tx_tid_bar_tx(%struct.ath_softc*, %struct.ath_tid*) #1

declare dso_local i32 @ATH_TX_UNLOCK(%struct.ath_softc*) #1

declare dso_local %struct.ath_buf* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ath_tx_default_comp(%struct.ath_softc*, %struct.ath_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
