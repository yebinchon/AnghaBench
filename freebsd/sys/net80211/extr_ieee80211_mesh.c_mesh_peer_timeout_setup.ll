; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_peer_timeout_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_peer_timeout_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i64, i32 }

@ieee80211_mesh_holdingtimeout = common dso_local global i64 0, align 8
@ieee80211_mesh_confirmtimeout = common dso_local global i64 0, align 8
@ieee80211_mesh_retrytimeout = common dso_local global i64 0, align 8
@mesh_peer_timeout_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @mesh_peer_timeout_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_peer_timeout_setup(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %3 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %17 [
    i32 129, label %6
    i32 130, label %10
    i32 128, label %14
  ]

6:                                                ; preds = %1
  %7 = load i64, i64* @ieee80211_mesh_holdingtimeout, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @ieee80211_mesh_confirmtimeout, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i64, i64* @ieee80211_mesh_retrytimeout, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %14, %10, %6
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 2
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @mesh_peer_timeout_cb, align 4
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %34 = call i32 @callout_reset(i32* %28, i64 %31, i32 %32, %struct.ieee80211_node* %33)
  br label %35

35:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @callout_reset(i32*, i64, i32, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
