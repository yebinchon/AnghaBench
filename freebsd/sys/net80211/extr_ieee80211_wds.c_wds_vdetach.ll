; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_wds.c_wds_vdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_wds.c_wds_vdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211vap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @wds_vdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wds_vdetach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %3 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %11, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %14 = icmp eq %struct.ieee80211vap* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ieee80211vap* null, %struct.ieee80211vap** %19, align 8
  br label %20

20:                                               ; preds = %15, %7
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
