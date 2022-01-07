; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx.c_ath_handle_micerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx.c_ath_handle_micerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ieee80211_frame_min = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, %struct.ieee80211_frame*, i32)* @ath_handle_micerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_handle_micerror(%struct.ieee80211com* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %9 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %10 = bitcast %struct.ieee80211_frame* %9 to %struct.ieee80211_frame_min*
  %11 = call %struct.ieee80211_node* @ieee80211_find_rxnode(%struct.ieee80211com* %8, %struct.ieee80211_frame_min* %10)
  store %struct.ieee80211_node* %11, %struct.ieee80211_node** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %13 = icmp ne %struct.ieee80211_node* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ieee80211_notify_michael_failure(i32 %17, %struct.ieee80211_frame* %18, i32 %19)
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %22 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %21)
  br label %23

23:                                               ; preds = %14, %3
  ret void
}

declare dso_local %struct.ieee80211_node* @ieee80211_find_rxnode(%struct.ieee80211com*, %struct.ieee80211_frame_min*) #1

declare dso_local i32 @ieee80211_notify_michael_failure(i32, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
