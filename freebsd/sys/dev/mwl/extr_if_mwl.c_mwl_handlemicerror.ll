; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_handlemicerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_handlemicerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.ieee80211_frame = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.ieee80211_frame_min = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*, i32*)* @mwl_handlemicerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_handlemicerror(%struct.ieee80211com* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 4
  %9 = bitcast i32* %8 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %9, %struct.ieee80211_frame** %5, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %12 = bitcast %struct.ieee80211_frame* %11 to %struct.ieee80211_frame_min*
  %13 = call %struct.ieee80211_node* @ieee80211_find_rxnode(%struct.ieee80211com* %10, %struct.ieee80211_frame_min* %12)
  store %struct.ieee80211_node* %13, %struct.ieee80211_node** %6, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %15 = icmp ne %struct.ieee80211_node* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %21 = call i32 @ieee80211_notify_michael_failure(i32 %19, %struct.ieee80211_frame* %20, i32 0)
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %23 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %22)
  br label %24

24:                                               ; preds = %16, %2
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
