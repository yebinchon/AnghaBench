; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_ifdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_ifdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32*, i32, i32, i32, i32 }
%struct.ieee80211vap = type { i32 }

@ic_list_mtx = common dso_local global i32 0, align 4
@ic_next = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ifdetach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %68

9:                                                ; preds = %1
  %10 = call i32 @mtx_lock(i32* @ic_list_mtx)
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = load i32, i32* @ic_next, align 4
  %13 = call i32 @LIST_REMOVE(%struct.ieee80211com* %11, i32 %12)
  %14 = call i32 @mtx_unlock(i32* @ic_list_mtx)
  %15 = load i32, i32* @taskqueue_thread, align 4
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 4
  %18 = call i32 @taskqueue_drain(i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %24, %9
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 3
  %22 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %21)
  store %struct.ieee80211vap* %22, %struct.ieee80211vap** %3, align 8
  %23 = icmp ne %struct.ieee80211vap* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %26 = call i32 @ieee80211_com_vdetach(%struct.ieee80211vap* %25)
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %28 = call i32 @ieee80211_vap_destroy(%struct.ieee80211vap* %27)
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %31 = call i32 @ieee80211_waitfor_parent(%struct.ieee80211com* %30)
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %33 = call i32 @ieee80211_sysctl_detach(%struct.ieee80211com* %32)
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = call i32 @ieee80211_dfs_detach(%struct.ieee80211com* %34)
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %37 = call i32 @ieee80211_regdomain_detach(%struct.ieee80211com* %36)
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %39 = call i32 @ieee80211_scan_detach(%struct.ieee80211com* %38)
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %41 = call i32 @ieee80211_vht_detach(%struct.ieee80211com* %40)
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = call i32 @ieee80211_ht_detach(%struct.ieee80211com* %42)
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %45 = call i32 @ieee80211_proto_detach(%struct.ieee80211com* %44)
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %47 = call i32 @ieee80211_crypto_detach(%struct.ieee80211com* %46)
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %49 = call i32 @ieee80211_power_detach(%struct.ieee80211com* %48)
  %50 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %51 = call i32 @ieee80211_node_detach(%struct.ieee80211com* %50)
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @counter_u64_free(i32 %54)
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @counter_u64_free(i32 %58)
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @taskqueue_free(i32* %62)
  %64 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %65 = call i32 @IEEE80211_TX_LOCK_DESTROY(%struct.ieee80211com* %64)
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %67 = call i32 @IEEE80211_LOCK_DESTROY(%struct.ieee80211com* %66)
  br label %68

68:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ieee80211com*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ieee80211_com_vdetach(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_vap_destroy(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_waitfor_parent(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_sysctl_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_dfs_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_regdomain_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_scan_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_vht_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_ht_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_proto_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_crypto_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_power_detach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_node_detach(%struct.ieee80211com*) #1

declare dso_local i32 @counter_u64_free(i32) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @IEEE80211_TX_LOCK_DESTROY(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_LOCK_DESTROY(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
