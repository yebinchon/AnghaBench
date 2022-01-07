; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap.c_wtap_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap.c_wtap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }
%struct.wtap_vap = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"m->m_pkthdr.rcvif is NULL we cant radiotap_tx\0A\00", align 1
@M_TXCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.mbuf*)* @wtap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wtap_transmit(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.wtap_vap*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %12, %struct.ieee80211_node** %5, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %6, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %17 = call %struct.wtap_vap* @WTAP_VAP(%struct.ieee80211vap* %16)
  store %struct.wtap_vap* %17, %struct.wtap_vap** %7, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %19 = icmp eq %struct.ieee80211_node* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %24 = call i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = call i32 @ieee80211_radiotap_tx(%struct.ieee80211vap* %27, %struct.mbuf* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @M_TXCB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = call i32 @ieee80211_process_callback(%struct.ieee80211_node* %39, %struct.mbuf* %40, i32 0)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %44 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %43)
  %45 = load %struct.wtap_vap*, %struct.wtap_vap** %7, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = call i32 @wtap_medium_enqueue(%struct.wtap_vap* %45, %struct.mbuf* %46)
  ret i32 %47
}

declare dso_local %struct.wtap_vap* @WTAP_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_radiotap_tx(%struct.ieee80211vap*, %struct.mbuf*) #1

declare dso_local i32 @ieee80211_process_callback(%struct.ieee80211_node*, %struct.mbuf*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @wtap_medium_enqueue(%struct.wtap_vap*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
